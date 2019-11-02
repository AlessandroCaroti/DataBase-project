set search_path to 'UniGenovaSocialSport';



--il numero di utenti giocatori confermati per un evento non deve essere maggiore del numero di giocatori previsto dallo sport
CREATE OR REPLACE FUNCTION Fun_Giocatori_Confermati() RETURNS trigger AS
$$
BEGIN

    IF (NEW.Stato <> 'ACCETTATO' or NEW.Ruolo = 'ARBITRO') THEN
        RETURN NEW;
    END IF;

    IF (select Stato from Evento where IdE = new.IdEvento) = 'CHIUSO' THEN
        update Iscrive
        set stato='RIFIUTATO'
        where IdEvento = new.IdEvento
          and Username = new.Username;
        RAISE exception 'Non si possono iscrivere utenti ad un evento chiuso, evento:%', new.IdEvento;
    END IF;
    IF (NEW.Ruolo = 'GIOCATORE') THEN
        IF (select NumGiocatori
            from Sport
                     Natural Join Evento
            where IdE = NEW.IdEvento) < (select count(*)
                                         from Iscrive
                                         where IdEvento = NEW.IdEvento
                                           and Ruolo = 'GIOCATORE'
                                           and Stato = 'ACCETTATO') THEN
            RAISE EXCEPTION 'Non è possibile inserire nuovi giocatori, evento: %', NEW.IdEvento;
        ELSE
            RETURN NEW;
        END IF;
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Evento_confermati_giocatori
    AFTER UPDATE or insert
    ON Iscrive
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Giocatori_Confermati();



-- per un evento non ci può essere  più di un arbitro.
CREATE OR REPLACE FUNCTION Fun_Arbitri_Confermati() RETURNS trigger AS
$$
BEGIN

    IF (NEW.Stato <> 'ACCETTATO') THEN
        RETURN NEW;
    END IF;

    IF (NEW.Ruolo = 'ARBITRO') THEN
        IF (select count(*) from Iscrive where IdEvento = NEW.IdEvento and Ruolo = 'ARBITRO' and Stato = 'ACCETTATO') >
           1 THEN
            RAISE EXCEPTION 'Non è possibile inserire nuovi arbitri, evento: %', NEW.IdEvento;
        ElSE
            RETURN NEW;
        END IF;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_confermatiArbitri
    AFTER UPDATE or insert
    ON Iscrive
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Arbitri_Confermati();



--Lo stato di un evento diventa chiuso quando il numero di giocatori confermati è uguale al numero di giocatori previsto dalla categoria
CREATE OR REPLACE FUNCTION Fun_chiusura_evento() RETURNS trigger AS
$$
BEGIN
    IF (NEW.Stato <> 'ACCETTATO') THEN
        RETURN NEW;
    END IF;
    IF (NEW.Ruolo = 'GIOCATORE') THEN
        IF (select NumGiocatori
            from Sport
                     Natural Join Evento
            where IdE = NEW.IdEvento) = (select count(*)
                                         from Iscrive
                                         where IdEvento = NEW.IdEvento
                                           and Ruolo = 'GIOCATORE'
                                           and Stato = 'ACCETTATO') THEN
            Update Evento
            set Stato='CHIUSO'
            where IdE = NEW.IdEvento;
            RAISE NOTICE 'Evento % è stato chiuso', NEW.IdEvento;
        END IF;

    END IF;
    return new;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_eventoChiuso
    AFTER UPDATE or insert
    ON Iscrive
    FOR EACH ROW
EXECUTE PROCEDURE Fun_chiusura_evento();



-- un utente  non può avere l'iscrizione confermata per eventi che avvengono contemporaneamente
CREATE OR REPLACE FUNCTION Fun_Partecipazione_Contenporanea() RETURNS trigger AS
$$
BEGIN
    If (new.stato <> 'ACCETTATO') then
        return new;
    end if;
    IF (select count(*)
        from Iscrive
                 join Evento as E on Iscrive.IdEvento = E.IdE
        where Username = New.Username
          and Iscrive.Stato = 'ACCETTATO'
          and cast(Data as DATE) = (select cast(Data as DATE) from Evento where IdE = New.IdEvento)
          and (Data Between (select Data from Evento where IdE = New.IdEvento) and (select DataFine from Evento where IdE = New.IdEvento) or
               DataFine Between (select Data from Evento where IdE = New.IdEvento) and (select DataFine from Evento where IdE = New.IdEvento))) >
       1 THEN
        RAISE EXCEPTION 'utente: %, non può partecipare ad eventi sovrapposti, evento: %', NEW.Username, new.IdEvento;
    END IF;
    return new;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Partecipazione_contemporanea
    AFTER UPDATE or insert
    ON Iscrive
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Partecipazione_Contenporanea();



--Non ci possono essere due o più eventi nello stesso impianto, nello stesso giorno e nella stessa ora
CREATE OR REPLACE FUNCTION Fun_Eventi_Contemporanei() RETURNS trigger AS
$$
BEGIN

    if (select count(*)
        from Evento
        where NomeStruttura = New.NomeStruttura
          and cast(Data as DATE) = cast(New.Data as DATE)
          and (Data between New.Data and New.DataFine or DataFine between New.Data and New.DataFine)) > 1 THEN
        RAISE EXCEPTION 'Non è possibile inserire eventi sovrapposti, evento: %', NEW.IdE;
    ELSE
        if (select premium from Utente where username = new.Organizzatore) then
            RETURN NEW;
        else
            RAISE EXCEPTION 'L''organizzatore dell''evento deve essere un utente premium, evento: %', NEW.IdE;
        end if;
    END IF;

END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Contemporanei
    AFTER Insert
    on Evento
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Eventi_Contemporanei();



--La valutazione di un utente è possibile solo se il valutatore e il valutato hanno l’iscrizione all’evento CONFERMATA
CREATE OR REPLACE FUNCTION Fun_Valutazione_utente() RETURNS trigger AS
$$
BEGIN


    IF (select count(*)
        from Iscrive
        where IdEvento = NEW.IdEvento
          and Username = NEW.Valutato
          and Stato = 'ACCETTATO') = 1 THEN
        IF (select count(*)
            from Iscrive
            where IdEvento = NEW.IdEvento
              and Username = NEW.Valutatore
              and Stato = 'ACCETTATO') = 1 THEN
            RETURN NEW;
        END IF;
    END IF;
    RAISE EXCEPTION 'Non è possibile valutare un utente per un evento per il quale non si era iscritto. valutato: %, valutatore: %, evento: %', new.Valutato,new.Valutatore, new.IdEvento;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Valutazione_utente
    AFTER Insert
    on Valuta
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Valutazione_utente();



--Se l’evento è a squadre tutti gli utenti CONFERMATI devono appartenere ad una delle due squadre partecipanti
CREATE OR REPLACE FUNCTION Fun_Partecipazione_evento_squadre() RETURNS trigger AS
$$
BEGIN
    if (new.Ruolo <> 'GIOCATORE' or new.stato <> 'ACCETTATO') then
        return new;
    end if;
    if not (select DiSquadra
            from Evento
                     natural join Sport
            where IdE = New.IdEvento) Then
        return new;
    end if;
    if (select count(*)
        from Candida
                 natural join Di
        where IdEvento = new.IdEvento
          and Username = new.Username
          and stato = 'ACCETTATO') > 0 Then
        return new;
    end if;
    RAISE EXCEPTION 'Per iscriversi ad un evento a squadre è necessario essere candidato ad  una delle squadre partecipanti, evento: %, utente: %', new.IdEvento, new.Username;

END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_partecipazione_evento_squadre
    AFTER Insert or Update
    On Iscrive
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Partecipazione_evento_squadre();



--Gli eventi devono essere della stessa categoria del torneo associato
CREATE OR REPLACE FUNCTION Fun_categoria_evento() RETURNS trigger AS
$$
BEGIN
    if (select IdTorneo from Evento where IdE = new.IdE) is null Then
        return new;
    end if;
    if (select NomeSport from Torneo where IdT = new.IdTorneo) = new.NomeSport then
        return new;
    end if;
    RAISE EXCEPTION 'Gli eventi relativi ad un torneo devono essere della stessa categoria, evento: %', new.IdE;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_categoria_evento
    AFTER Insert
    On Evento
    FOR EACH ROW
EXECUTE PROCEDURE Fun_categoria_evento();



--Un utente può candidarsi per una squadra solo se lo stato di quest’ultima è “in formazione”
CREATE OR REPLACE FUNCTION Fun_candidatura_possibile() RETURNS trigger AS
$$
declare
    max          integer := (select MaxGiocatori
                             from Squadra
                             where NomeSq = new.NomeSq);
    numgiocatori integer := (select count(Username)
                             from Candida
                             where NomeSq = new.NomeSq
                               and stato = 'ACCETTATO');
BEGIN
    if (select Stato from Squadra where NomeSq = new.NomeSq) not in ('RECLUTAMENTO', 'TEMPORANEA') Then
        if (new.stato <> 'ACCETTATO') then
            return new;
        else
            raise EXCEPTION 'Non si ci può candidare ad una squadra definitiva, squadra: %, utente: %', new.nomesq,new.username;
        end if;
    end if;

    IF (max - numgiocatori) = 0 THEN
        Update Squadra
        set Stato='DEFINITIVA'
        Where NomeSq = New.NomeSq;
        Raise notice 'Squadra è definitiva, Squadra: %', new.NomeSq;
    END IF;
    RETURN NEW;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_candidatura_possibile
    AFTER Insert or Update
    On Candida
    FOR EACH ROW
EXECUTE PROCEDURE Fun_candidatura_possibile();



--Un utente può avere la candidatura accettata ad una sola squadra che non sia temporanea
CREATE OR REPLACE FUNCTION Fun_Una_candidatura_possibile() RETURNS trigger AS
$$
BEGIN
    if (select count(*)
        from Candida
                 join squadra on candida.nomesq = squadra.nomesq
        where Username = 'Mina'
          and Candida.stato = 'ACCETTATO'
          and squadra.Stato <> 'TEMPORANEA') > 1 Then
        RAISE EXCEPTION 'è possibile far parte solo di una squadra, utente: %, squadra: %', new.Username,new.NomeSq;
    end if;

    return new;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER una_candidatura_possibile
    AFTER Insert or update
    On Candida
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Una_candidatura_possibile();



--un utente si può iscrivere ad un torneo se questo non è a squadre
CREATE OR REPLACE FUNCTION Fun_partecipazione_utenti_tornei() RETURNS trigger AS
$$
BEGIN
    if (select Modalità from Torneo where IdT = new.IdTorneo) = 'SINGOLO' Then
        return new;
    end if;
    RAISE EXCEPTION 'Un utente può iscriversi ad un torneo se la categoria non è a squadre, torneo: %, utente: %', new.IdTorneo, new.Username;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER partecipazione_utenti_tornei
    AFTER Insert
    On Partecipa
    FOR EACH ROW
EXECUTE PROCEDURE Fun_partecipazione_utenti_tornei();



--per partecipare ad evento bisogna essere iscritti al torneo se si è giocatori, gli albitri possono anche non essere iscritti
CREATE OR REPLACE FUNCTION Fun_Partecipazione_utenti_evento() RETURNS trigger AS
$$
BEGIN
    if (new.stato <> 'ACCETTATO' or new.ruolo = 'ARBITRO') Then
        return new;
    end if;
    if (select IdTorneo from Evento where IdE = new.IdEvento) is null then
        return new;
    end if;
    if (select Modalità
        from Evento
                 join Torneo on idTorneo = idT
        where IdE = new.IdEvento) = 'SINGOLO' then
        if (select count(*)
            from Partecipa
            where Username = new.Username
              and IdTorneo = (select IdTorneo from Evento where IdE = new.IdEvento)) = 1 then
            return new;
        end if;
    else
        if (select count(*)
            from Di
                     natural join Candida
            where Username = new.Username
              and IdEvento = new.IdEvento
              and stato = 'ACCETTATO') = 1 then
            return new;
        end if;

    end if;
    RAISE EXCEPTION 'Per iscriversi ad un evento è necessario iscriversi prima al torneo, evento: %, utente: %', new.IdEvento,new.Username;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_partecipazione_utenti_evento
    AFTER Insert or update
    On Iscrive
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Partecipazione_utenti_evento();



--UPDATE: se l'iscrizione ad un evento viene accettata viene incrementato il numero di partite della categoria giocate dall'utente
CREATE OR REPLACE FUNCTION Fun_incremento_partite_giocate() RETURNS trigger AS
$$
declare
    Sport_della_partita varchar(30) := (select NomeSport
                                        from Evento
                                        where IdE = new.IdEvento);
BEGIN
    IF (NEW.Stato <> 'ACCETTATO') THEN
        RETURN NEW;
    END IF;
    IF (NEW.Ruolo = 'GIOCATORE') THEN
        update PartiteGiocate
        set Quantità=Quantità + 1
        where PartiteGiocate.Username = new.Username
          and PartiteGiocate.NomeSport = Sport_della_partita;
    END IF;
    return new;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_incremento_partite_giocate
    AFTER Insert or Update
    on Iscrive
    FOR EACH ROW
EXECUTE PROCEDURE Fun_incremento_partite_giocate();



--ADD: all'inserimento di un nuovo utenete, creazione per ogni sport delle colonne PartiteGiocatore associate a quel giocatore con quantità = 0
CREATE OR REPLACE FUNCTION Fun_Inserimento_partite() RETURNS trigger AS
$$
declare listaSport CURSOR FOR (select NomeSport
                               from Sport);
    nomeSport varchar(30);
BEGIN
    OPEN listaSport;
    FETCH listaSport into nomeSport;
    WHILE FOUND
        LOOP

            INSERT INTO PartiteGiocate
            Values (new.Username, nomeSport);
            FETCH listaSport INTO nomeSport;

        END LOOP;
    CLOSE listaSport;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Inserimento_partite
    AFTER Insert
    on Utente
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Inserimento_partite();



--INSERT: Esito inseribile solo se l'evento associato è chiuso
CREATE OR REPLACE FUNCTION Fun_Inserimento_Esito() RETURNS trigger AS
$$
declare
    statoEvento char(6) := (select stato
                            from Evento
                            where IdE = new.IdEvento);
BEGIN
    if (statoEvento = 'CHIUSO') Then
        if new.Data > (select Data from Evento where new.IdEvento = IdE) then
            RETURN NEW;
        else
            RAISE EXCEPTION 'Data esito non valida: %',new.IdEvento;
        end if;
    end if;
    RAISE EXCEPTION 'Un esito può essere inserito solo se l''evento relativo è chiuso, evento: %',new.IdEvento;

END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Inserimento_Esito
    AFTER Insert
    on Esito
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Inserimento_Esito();



--All'eliminazione di un'iscrizione, decrementa il numero di partite giocate
CREATE OR REPLACE FUNCTION Fun_decremento_partite_giocate() RETURNS trigger AS
$$
declare
    categoria_partita varchar(30) := (select NomeSport
                                      from Evento
                                      where IdE = old.IdEvento);
BEGIN
    IF (old.Stato <> 'ACCETTATO') THEN
        RETURN old;
    END IF;
    IF (old.Ruolo = 'GIOCATORE') THEN
        update PartiteGiocate
        set Quantità=Quantità - 1
        where PartiteGiocate.Username = old.Username
          and PartiteGiocate.NomeSport = categoria_partita;
    END IF;
    return old;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_partite_decremento
    before Delete
    on Iscrive
    FOR EACH ROW
EXECUTE PROCEDURE Fun_decremento_partite_giocate();



--Possono partecipare ad eventi solo squadre che hanno come stato "definitiva" o "temporanea".
CREATE OR REPLACE FUNCTION Fun_partecipazione_squadre_evento() RETURNS trigger AS
$$
BEGIN
    if (select DiSquadra
        from Evento
                 natural join Sport
        where IdE = New.IdEvento) Then
        if (select Stato from Squadra where NomeSq = new.NomeSq) = 'DEFINITIVA' and
           (select IdTorneo from Evento where IdE = new.IdEvento) is not null then
            if (select count(*)
                from Evento
                         join Composto on (Evento.IdTorneo = Composto.IdTorneo)
                where IdE = new.IdEvento
                  and NomeSq = new.NomeSq) >= 1 then
                return new;
            else
                RAISE EXCEPTION 'Per iscriversi ad un evento a squadre di un torneo è necessario iscriversi prima al torneo, evento: %, squadra:%', new.IdEvento, new.NomeSq;
            end if;
        else
            if ((select Stato from Squadra where NomeSq = new.NomeSq) = 'TEMPORANEA' and
                (select IdTorneo from Evento where IdE = new.IdEvento) is null) then
                if (Substring(new.NomeSq, 15) = cast(new.IdEvento as text)) THEN
                    return new;
                else
                    RAISE EXCEPTION 'Per iscriversi ad un evento temporaneo a squadre è necessario che le squadre siano temporanee, evento: %', new.IdEvento;
                end if;
            else
                RAISE EXCEPTION 'Per iscriversi ad un evento a squadre è necessario che le squadre siano definitive o temporanee, evento: %', new.IdEvento;
            end if;
        end if;
    end if;
    RAISE EXCEPTION 'Una squadra si può iscrivere ad un evento solo se questo è a squadre, evento: %', new.IdEvento;

END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_partecipazione_squadre_evento
    AFTER Insert
    On Di
    FOR EACH ROW
EXECUTE PROCEDURE Fun_partecipazione_squadre_evento();


--DA RIFARE TUTTE LE STRINGHE

--funzione che crea le squadra temporanee, una candidatura 'accettata' per la squadra, ed inserisce le squadre in 'Partecipa'
CREATE OR REPLACE FUNCTION Fun_Squadra_Temporanea() RETURNS trigger AS
$$
DECLARE
    sqNome     varchar(30) := 'SQ1_Temporanea' || new.IdEvento;
    sqCreatore varchar(30) := (select Organizzatore
                               from Evento
                               where IdE = new.IdEvento);
    S1         Integer;
    S2         Integer;
BEGIN

    IF (select IdTorneo from Evento where IdE = new.IdEvento) is not null THEN --se esiste un torneo associato all'evento non bisogna fare nulla
        return new;
    END IF;
    IF not (select DiSquadra
            from Sport
                     natural join Evento
            where IdE = new.IdEvento) THEN --se l'evento è singolo non c'è bisogno di fare nulla
        return new;
    END IF;

    IF (new.Ruolo <> 'GIOCATORE' or new.stato <> 'ACCETTATO') THEN
        return new;
    END IF;
    IF ((select count(*) from Squadra where NomeSq = sqnome) = 0) THEN
        Insert into Squadra(NomeSq, Stato, ColoreMaglia, MinGiocatori, MaxGiocatori, Descrizione, Creatore)
        values (sqnome, 'TEMPORANEA', 'Neutro_1', 5, 11, 'Squadra temporanea 1: evento ' || new.IdEvento || '.',
                sqCreatore);
        RAISE NOTICE '1° squadra temporanea creata, evento: %',new.IdEvento;
    END IF;
    S1 := (select count(*) from Candida where stato = 'ACCETTATO' and NomeSq = sqnome);
    sqnome := 'SQ2_Temporanea' || new.IdEvento;
    IF ((select count(*) from Squadra where NomeSq = sqnome) = 0) THEN
        Insert into Squadra(NomeSq, Stato, ColoreMaglia, MinGiocatori, MaxGiocatori, Descrizione, Creatore)
        values (sqnome, 'TEMPORANEA', 'Neutro_2', 5, 11, 'Squadra temporanea 2: evento ' || new.IdEvento || '.',
                sqCreatore);
        RAISE NOTICE '2° squadra temporanea creata, evento: %',new.IdEvento;
    END IF;
    S2 := (select count(*) from Candida where stato = 'ACCETTATO' and NomeSq = sqnome);

    IF (S1 > S2) THEN
        Insert into Candida values (new.Username, sqnome, 'ACCETTATO', 'GIOCATORE');
        RAISE NOTICE '% candidato alla 2° squadra temporanea, evento: % ', new.Username, new.IdEvento;
    ELSE
        IF (S2 > S1) THEN
            Insert into Candida values (new.Username, 'SQ1_Temporanea' || new.IdEvento, 'ACCETTATO', 'GIOCATORE');
            RAISE NOTICE '% candidato alla prima squadra temporanea, evento: % ', new.Username, new.IdEvento;
        ELSE
            Insert into Candida values (new.Username, 'SQ1_Temporanea' || new.IdEvento, 'ACCETTATO', 'GIOCATORE');
            RAISE NOTICE '% candidato alla prima squadra temporanea, evento: % ', new.Username, new.IdEvento;
        END IF;
    END IF;
    sqnome := (select NomeSq from Di where IdEvento = new.IdEvento and NomeSq = 'SQ1_Temporanea' || new.IdEvento);

    if (sqnome) is null then
        Insert into Di values (new.IdEvento, 'SQ1_Temporanea' || new.IdEvento);
        Insert into Di values (new.IdEvento, 'SQ2_Temporanea' || new.IdEvento);
    end if;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Evento_Squadra_Temporanea
    AFTER Insert or update
    On Iscrive
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Squadra_Temporanea();



--elimina l'evento solo se è ancora aperto
CREATE OR REPLACE FUNCTION Fun_Eliminazione_Evento() RETURNS trigger AS
$$
BEGIN
    IF (select stato from Evento where IdE = old.IdE) = 'APERTO' THEN
        IF (select IdTorneo from Evento where IdE = old.IdE) is null THEN
            DELETE
            from Squadra
            where NomeSq = 'SQ2_Temporanea' || old.IdE
               or NomeSq = 'SQ1_Temporanea' || old.IdE;
        END IF;
        return old;
    END IF;
    RAISE EXCEPTION 'Gli eventi per essere eliminati devono essere ancora aperti, evento: %', old.IdE;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Eliminazione_Evento
    before delete
    On Evento
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Eliminazione_Evento();



--DELETE: iscrizione confermata ammesa solo se l'evento associato è aperto
CREATE OR REPLACE FUNCTION Fun_Eliminazione_Iscrizione() RETURNS trigger AS
$$
BEGIN
    IF (old.stato) <> 'ACCETTATO' THEN
        return old;
    END IF;

    if (select Stato from Evento where IdE = old.idEvento) = 'APERTO' THEN
        return old;
    END IF;
    RAISE EXCEPTION 'Non si può eliminare una iscrizione se l''evento è chiuso. evento: %,utente: %', old.IdEvento,old.Username;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Eliminazione_Iscrizione
    before delete
    On Iscrive
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Eliminazione_Iscrizione();



--DELETE: Eliminazione candidatura ad una squadra: è possibile solo se la squadra è ancora in formazione o se le candidature sono rifiutate
CREATE OR REPLACE FUNCTION Fun_Eliminazione_Candidatura() RETURNS trigger AS
$$
BEGIN

    IF (old.stato) <> 'ACCETTATO' THEN
        return old;
    END IF;

    if (select Stato from Squadra where NomeSq = old.NomeSq) = 'RECLUTAMENTO' THEN
        return old;
    END IF;

    if (select count(*) from Composto where NomeSq = old.NomeSq) = 0 THEN
        if (select count(*) from Partecipa where NomeSq = old.NomeSq) = 0 THEN
            return old;
        END IF;
    END IF;
    RAISE EXCEPTION 'Non si può eliminare una candidatura se la squadra è definitiva e ha partecipato ad eventi. squadra: %,utente: %', old.NomeSq,old.Username;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Eliminazione_Candidatura
    Before delete
    On Candida
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Eliminazione_Candidatura();



--DELETE: eliminazione di un torneo solo nel caso in cui non ci siano ancora eventi chiusi
CREATE OR REPLACE FUNCTION Fun_Eliminazione_Torneo() RETURNS trigger AS
$$
BEGIN
    if (select count(*) from Evento where IdTorneo = old.IdT and Stato = 'CHIUSO') = 0 THEN
        return old;
    END IF;
    RAISE EXCEPTION 'Non si può eliminare un torneo se ci sono eventi chiusi. Torneo: %', old.IdT;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Eliminazione_Torneo
    Before delete
    On Torneo
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Eliminazione_Torneo();



--DELETE: Elimina una squadra solo se questa non ha mai giocato ad una partita
CREATE OR REPLACE FUNCTION Fun_Eliminazione_Squadra() RETURNS trigger AS
$$
BEGIN

    IF (select Stato from Squadra where NomeSq = old.NomeSq) <> 'DEFINITIVA' THEN
        return old;
    END IF;

    if (select count(*) from Composto where NomeSq = old.NomeSq) = 0 THEN
        if (select count(*) from Partecipa where NomeSq = old.NomeSq) = 0 THEN
            return old;
        END IF;
    END IF;
    RAISE EXCEPTION 'Non si può eliminare una squadra se questa ha partecipato a tornei o eventi: %', old.NomeSq;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Eliminazione_Squadra
    before delete
    On Squadra
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Eliminazione_Squadra();



--possono partecipare ad un evento solo due squadre
CREATE OR REPLACE FUNCTION Fun_Partecipazione_2squadre() RETURNS trigger AS
$$
BEGIN
    if (select count(*) from Di where IdEvento = new.IdEvento) > 2 THEN
        RAISE EXCEPTION 'Ad un evento possono partecipare solo 2 squadre. Evento: %, squadra: %', new.IdEvento,new.NomeSq;
    END IF;
    return new;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Partecipazione_2squadre
    After insert
    On Di
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Partecipazione_2squadre();



--Una volta inserita una squadra in "di" non è più possibile toglierla
CREATE OR REPLACE FUNCTION Fun_Partecipazione_squadre() RETURNS trigger AS
$$
BEGIN
    RAISE EXCEPTION 'Non è possibile eliminare o modificare la partecipazione di una squadra ad un evento. Evento: %, squadra: %', old.IdEvento,old.NomeSq;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Partecipazione_squadre
    before delete
    On Di
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Partecipazione_squadre();

CREATE TRIGGER Trigger_Partecipazione_squadre_update
    before update of NomeSq
    On Di
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Partecipazione_squadre();



--è possibile modificare la partecipazione ad un torneo a squadre solo se non ci sono ancora eventi del torneo
CREATE OR REPLACE FUNCTION Fun_Partecipazione_squadre_torneo() RETURNS trigger AS
$$
BEGIN
    If (select count(*) from Evento where IdTorneo = old.IdTorneo) > 0 then
        RAISE EXCEPTION 'Non è possibile eliminare o modificare la partecipazione di una squadra ad un torneo se ci sono già eventi programmati. Torneo: %, squadra: %', old.IdTorneo,old.NomeSq;
    end if;
    IF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    end if;
    IF (TG_OP = 'UPDATE') THEN
        RETURN NEW;
    end if;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Partecipazione_squadre_torneo
    before delete
    On Composto
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Partecipazione_squadre_torneo();

CREATE TRIGGER Trigger_Partecipazione_squadre_torneo_update
    before update of NomeSq
    On Composto
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Partecipazione_squadre_torneo();



--Eliminazione o Modofica della partecipazione di un utente ad un torneo sengolo solo se non ci sono evemti programmati
CREATE OR REPLACE FUNCTION Fun_Partecipazione_singoli_torneo() RETURNS trigger AS
$$
BEGIN
    If (select count(*) from Evento where IdTorneo = old.IdTorneo) > 0 then
        RAISE EXCEPTION 'Non è possibile eliminare o modificare la partecipazione di un utente ad un torneo se ci sono già eventi programmati. Torneo: %, squadra: %', old.IdTorneo,old.Username;
    end if;
    IF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    end if;
    IF (TG_OP = 'UPDATE') THEN
        RETURN NEW;
    end if;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Partecipazione_singoli_torneo
    before delete
    On Partecipa
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Partecipazione_singoli_torneo();

CREATE TRIGGER Trigger_Partecipazione_singoli_torneo_update
    before update of Username
    On Partecipa
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Partecipazione_singoli_torneo();



--inserimento di un utente ad un torneo finche non ci sono eventi associati
CREATE OR REPLACE FUNCTION Fun_Inserimento_Partecipazione_singoli() RETURNS trigger AS
$$
BEGIN
    If (select Modalità from Torneo where IdT = new.IdTorneo) = 'SQUADRA' then
        RAISE EXCEPTION 'Non è possibile aggiungere la partecipazione di un utente ad un torneo a squadre. Torneo: %, squadra: %', new.IdTorneo,new.Username;
    end if;
    If (select count(*) from Evento where IdTorneo = new.IdTorneo) > 0 then
        RAISE EXCEPTION 'Non è possibile aggiungere la partecipazione di un utente ad un torneo se ci sono già eventi programmati. Torneo: %, squadra: %', new.IdTorneo,new.Username;
    end if;
    return new;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Inserimento_Partecipazione_singoli
    before Insert
    On Partecipa
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Inserimento_Partecipazione_singoli();



--inserimento di una squadra ad un torneo finchè non ci sono eventi associati
CREATE OR REPLACE FUNCTION Fun_Inserimento_Partecipazione_squadre() RETURNS trigger AS
$$
BEGIN
    If (select Modalità from Torneo where IdT = new.IdTorneo) = 'SINGOLO' then
        RAISE EXCEPTION 'Non è possibile aggiungere la partecipazione di una squadra ad un torneo singolo. Torneo: %, squadra: %', new.IdTorneo,new.NomeSq;
    end if;
    If (select count(*) from Evento where IdTorneo = new.IdTorneo) > 0 then
        RAISE EXCEPTION 'Non è possibile aggiungere la partecipazione di una squadra ad un torneo se ci sono già eventi programmati. Torneo: %, squadra: %', new.IdTorneo,new.NomeSq;
    end if;
    if (select Stato from Squadra where NomeSq = new.NomeSq) = 'DEFINITIVA' then
        return new;
    else
        RAISE EXCEPTION 'Per iscriversi ad un torneo a squadre è necessario che le squadre siano definitive, torneo: %,squadra:%', new.IdTorneo, new.NomeSq;
    end if;
END;

$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Inserimento_Partecipazione_squadre
    before Insert
    On Composto
    FOR EACH ROW
EXECUTE PROCEDURE Fun_Inserimento_Partecipazione_squadre();



--All'inserimento di uno nuovo sport, per ogni utente si aggiunge "PartiteGiocate" con quantità a 0
CREATE OR REPLACE FUNCTION Fun_Inserimento_categoria() RETURNS trigger AS
$$
declare utenti CURSOR FOR (select Username
                           from Utente);
    nomeU varchar(30);
BEGIN
    OPEN utenti;
    FETCH utenti into nomeU;
    WHILE FOUND
        LOOP

            INSERT INTO PartiteGiocate
            Values (nomeU, new.NomeSport);
            FETCH utenti INTO nomeU;

        END LOOP;
    CLOSE utenti;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Inserimento_Categoria
    after insert
    on Sport
    for each ROW
EXECUTE PROCEDURE Fun_Inserimento_categoria();



--I tornei devono essere creati da utenti premium
CREATE OR REPLACE FUNCTION Fun_Inserimento_Torneo() RETURNS trigger AS
$$

BEGIN
    if (not (select premium from Utente where Username = new.creatore)) then
        Raise EXCEPTION 'Il creatore del torneo deve essere un utente premium';
    end if;
    if (select Modalità from Torneo where IdT = new.IdT) = 'SQUADRA' and
       (select DiSquadra from Sport where NomeSport = new.NomeSport) then
        RETURN NEW;
    end if;
    if (select Modalità from Torneo where IdT = new.IdT) = 'SINGOLO' and
       not (select DiSquadra from Sport where NomeSport = new.NomeSport) then
        RETURN NEW;
    end if;
    Raise EXCEPTION 'La modalità deve corrispondere alla categoria, Torneo: %, Tipo torneo: %, Sport di quadra: %', new.IdT, new.modalità, (select DiSquadra from Sport where NomeSport = new.NomeSport);
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Inserimento_Torneo
    after insert
    on Torneo
    for each ROW
EXECUTE PROCEDURE Fun_Inserimento_Torneo();



--Le squadre devono essere creati da utenti premium
CREATE OR REPLACE FUNCTION Fun_Inserimento_Squadra() RETURNS trigger AS
$$

BEGIN
    if (select premium from Utente where Username = new.Creatore) then
        RETURN NEW;
    end if;
    Raise EXCEPTION 'Il compositore di una squadra deve essere un utente premium, Squadra: %', new.NomeSq;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Inserimento_Squadra
    after insert
    on Squadra
    for each ROW
EXECUTE PROCEDURE Fun_Inserimento_Squadra();


--Controlla che durante un updare o una insert, ci siano in numero minimo di giocatori candidati e accettati perchè questa possa diventare DEFINITIVA
CREATE OR REPLACE FUNCTION Fun_Chiusura_Squadra() RETURNS trigger AS
$$

BEGIN
    if (new.stato <> 'DEFINITIVA') then
        return new;
    end if;
    if ((select count(*)
         from Squadra
                  join candida c on Squadra.nomesq = c.nomesq
         where Squadra.NomeSq = new.nomesq
           and c.stato = 'ACCETTATO') < (select MinGiocatori from Squadra where Squadra.NomeSq = new.nomesq)) then
        Raise EXCEPTION 'Non ci sono abbastanza candidature accettate per poter rendere la squadra definitiva, Squadra: %', new.nomesq;
    end if;
    return new;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Chiusura_Squadra
    AFTER Insert or update
    on Squadra
    for each ROW
EXECUTE PROCEDURE Fun_Chiusura_Squadra();



--Controllo che l'utente abbia partecipato all'evento per cui gli si stanno assegnando dei punti[DA TESTARE]
CREATE OR REPLACE FUNCTION Fun_Inserimento_Punti() RETURNS trigger AS
$$

BEGIN
    if ((select count(*)
         from iscrive
         where iscrive.username = new.username
           and iscrive.idevento = new.idevento
           AND iscrive.stato = 'ACCETTATO'
           AND ruolo = 'GIOCATORE') > 0) then
        return new;
    end if;
    RAISE EXCEPTION 'L uente non è iscritto all evento come giocatore partecipante.';

END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Trigger_Inserimento_Punti
    AFTER Insert or update
    on Punti
    for each ROW
EXECUTE PROCEDURE Fun_Inserimento_Punti();
