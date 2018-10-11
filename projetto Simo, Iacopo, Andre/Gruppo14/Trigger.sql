set search_path to 'UniGenovaSocialSport';

--il numero di utenti giocatori confermati per un evento non deve superare il numero di giocatori previsto dalla categoria, per un evento non ci può essere  più di un arbitro.
CREATE OR REPLACE FUNCTION Fun_Num_Utenti_Confermati() RETURNS trigger AS
$$
 BEGIN
 
 IF(NEW.Stato<>'confermato')THEN 
 	RETURN NEW;
 END IF;
 
IF(select Stato from Evento where IdEvento=new.IdEvento)='chiuso'then 
   update Iscrizione
   set stato='rifiutato'
   where IdEvento=new.IdEvento and Username=new.Username;
    RAISE exception 'non si possono iscrivere utenti ad un evento chiuso, evento:%', new.IdEvento;
	end if;
 IF (NEW.Qualità='arbitro') THEN
  IF (select count(*) from Iscrizione where IdEvento=NEW.IdEvento and Qualità='arbitro' and Stato='confermato')> 1 THEN
		RAISE EXCEPTION 'Non è possibile inserire nuovi arbitri, evento: %', NEW.IdEvento;
		ElSE 
			RETURN NEW;
		END IF;
 ELSE IF(select NumGC from Categoria Natural Join Evento where IdEvento=NEW.IdEvento)<(select count(*) from Iscrizione where IdEvento=NEW.IdEvento and Qualità='giocatore' and Stato='confermato') THEN 
	    RAISE EXCEPTION 'Non è possibile inserire nuovi giocatori, evento: %', NEW.IdEvento;
 	  ELSE 
 	  	RETURN NEW;
 	  END IF;
 END IF;
 END;
$$ LANGUAGE plpgsql;




CREATE TRIGGER Evento_confermati_utenti 
AFTER UPDATE or insert ON Iscrizione
FOR EACH ROW
EXECUTE PROCEDURE Fun_Num_Utenti_Confermati();


--Lo stato di un evento diventa chiuso quando il numero di giocatori confermati è uguale al numero di giocatori previsto dalla categoria
CREATE OR REPLACE FUNCTION Fun_close_event() RETURNS trigger AS
$$
 BEGIN
 IF(NEW.Stato<>'confermato')THEN 
 	RETURN NEW;
 END IF;
 IF (NEW.Qualità='giocatore') THEN
  IF(select NumGC from Categoria Natural Join Evento where IdEvento=NEW.IdEvento)=(select count(*) from Iscrizione where IdEvento=NEW.IdEvento and Qualità='giocatore' and Stato='confermato') THEN 
  		Update Evento
		set Stato='chiuso'
		where IdEvento=NEW.IdEvento;
	    RAISE NOTICE ' evento %  è chiuso', NEW.IdEvento;
 	  END IF;
	
 END IF;
return new;
 END;
$$ LANGUAGE plpgsql;




CREATE TRIGGER Evento_stato_Chiuso
AFTER UPDATE or insert  ON Iscrizione
FOR EACH ROW
EXECUTE PROCEDURE Fun_close_event();

-- un utente  non può avere l'iscrizione confermata per eventi che avvengono contemporaneamente
CREATE OR REPLACE FUNCTION Fun_Partecipazione_Contenporanea() RETURNS trigger AS
$$
 BEGIN
  If(new.stato<>'confermato') then 
	return new;
  end if;
  IF(select count(*) 
	 from Iscrizione join Evento as E on Iscrizione.IdEvento=E.IdEvento 
	 where Username=New.Username and Iscrizione.Stato='confermato' and Date(DataEv)=(select Date(DataEv) from Evento where IdEvento=New.IdEvento) and (DataEv Between (select DataEv from Evento where IdEvento=New.IdEvento) and (select DataFine from Evento where IdEvento=New.IdEvento)or DataFine Between (select DataEv from Evento where IdEvento=New.IdEvento) and (select DataFine from Evento where IdEvento=New.IdEvento)) )>1 THEN 
	    RAISE EXCEPTION 'utente: %, non può partecipare ad eventi sovrapposti, evento: %', NEW.Username, new.IdEvento;
  END IF;
	return new;
  END;
$$ LANGUAGE plpgsql;




CREATE TRIGGER Partecipazione_contemporanea
AFTER UPDATE or insert ON Iscrizione
FOR EACH ROW
EXECUTE PROCEDURE Fun_Partecipazione_Contenporanea();


--Non ci possono essere due o più eventi nello stesso impianto, nello stesso giorno e nella stessa ora
CREATE OR REPLACE FUNCTION Fun_Eventi_Contemporanei() RETURNS trigger AS
$$
 BEGIN
 
 if(select count(*) from Evento where NomeImp=New.NomeImp and Date(DataEv)=Date(New.DataEv) and (DataEv between New.DataEv and New.DataFine or DataFine between New.DataEv and New.DataFine ))>1 THEN
   	RAISE EXCEPTION 'Non è possibile inserire eventi sovrapposti, evento: %', NEW.IdEvento;
 ELSE
 	if(select premium from Utente where username=new.Organizzatore)then 
   		RETURN NEW;
   	else
   			RAISE EXCEPTION 'L''organizzatore dell''evento deve essere un utente premium, evento: %', NEW.IdEvento;
   	end if;
 END IF;
 
 END;
$$ LANGUAGE plpgsql;




CREATE TRIGGER Eventi_Contemporanei
AFTER Insert on Evento
FOR EACH ROW
EXECUTE PROCEDURE Fun_Eventi_Contemporanei();


--La valutazione di un utente è possibile solo se il valutatore e il valutato hanno l’iscrizione all’evento CONFERMATA
CREATE OR REPLACE FUNCTION Fun_Valutazione_utente() RETURNS trigger AS
$$
BEGIN

 
  IF (select count(*) from Iscrizione where IdEvento=NEW.IdEvento and Username=NEW.Valutato and Stato='confermato')=1 THEN
		IF (select count(*) from Iscrizione where IdEvento=NEW.IdEvento and Username=NEW.Valutatore and Stato='confermato')=1 THEN
		 	RETURN NEW;
		END IF;
 END IF;
 RAISE EXCEPTION 'Non è possibile valutare un utente per un evento per il quale non si era iscritto. valutato: %, valutatore: %, evento: %', new.Valutato,new.Valutatore, new.IdEvento;
 END;

$$ LANGUAGE plpgsql;




CREATE TRIGGER Valutazione_utente
AFTER Insert on Valuta
FOR EACH ROW
EXECUTE PROCEDURE Fun_Valutazione_utente();


--Se l’evento è a squadre tutti gli utenti CONFERMATI devono appartenere ad una delle due squadre partecipanti
CREATE OR REPLACE FUNCTION Fun_partecipazione_evento_squadre() RETURNS trigger AS
$$
BEGIN
	if(new.Qualità<>'giocatore' or new.stato<>'confermato')then
		return new;
	end if;
	if not(select squadre from Evento natural join Categoria where IdEvento=New.IdEvento) Then 
	   return new;
	end if;
	if(select count(*) from Candidato natural join Partecipa where IdEvento=new.IdEvento and Username=new.Username and stato='accettato'  ) >0 Then
	   return new;
	 end if;
	 RAISE EXCEPTION 'Per iscriversi ad un evento a squadre è necessario essere candidato ad  una delle squadre partecipanti, evento: %, utente: %', new.IdEvento, new.Username;
	
 END;
 
$$ LANGUAGE plpgsql;




CREATE TRIGGER partecipazione_evento_squadre
AFTER Insert or Update On Iscrizione
FOR EACH ROW
EXECUTE PROCEDURE Fun_partecipazione_evento_squadre();

--Possono partecipare ad eventi solo squadre che hanno come statoSQ "definitiva" o "temporanea".
CREATE OR REPLACE FUNCTION fun_partecipazione_squadre_evento() RETURNS trigger AS
$$
BEGIN
	if (select squadre from Evento natural join Categoria where IdEvento=New.IdEvento) Then
		if(select StatoSq from Squadra where NomeSq=new.NomeSq)='definitiva' and (select IdTorneo from Evento where IdEvento=new.IdEvento) is not null then
			if(select count(*) from Evento join Composto on Evento.IdTorneo=Composto.IdTorneo where IdEvento=new.IdEvento and NomeSq=new.NomeSq )>=1 then 
	    		return new;
			else 
				RAISE EXCEPTION 'Per iscriversi ad un evento a squadre di un torneo è necessario iscriversi prima al torneo, evento: %, squadra:%', new.IdEvento, new.NomeSq;
			end if;
		else if (select StatoSq from Squadra where NomeSq=new.NomeSq)='temporanea' and (select IdTorneo from Evento where IdEvento=new.IdEvento) is  null then
			  	if(Substring(new.NomeSq,15)=cast (new.IdEvento as text))THEN
					return new;
				else RAISE EXCEPTION 'Per iscriversi ad un evento temporaneo a squadre è necessario che le squadre siano  temporanee, evento: %', new.IdEvento;
				end if;
			 else 
			  RAISE EXCEPTION 'Per iscriversi ad un evento a squadre è necessario che le squadre siano definitive o temporanee, evento: %', new.IdEvento;
			 end if;
	 	end if;
	 end if;
	 RAISE EXCEPTION 'Una squadra si può iscrivere ad un evento solo se questo è a squadre, evento: %', new.IdEvento;
	
 END;
 
$$ LANGUAGE plpgsql;





CREATE TRIGGER partecipazione_squadre_evento
AFTER Insert On Partecipa
FOR EACH ROW
EXECUTE PROCEDURE fun_partecipazione_squadre_evento();



--Gli eventi devono essere della stessa categoria del torneo associato
CREATE OR REPLACE FUNCTION fun_categoria_evento() RETURNS trigger AS
$$
BEGIN
	if (select IdTorneo from Evento where IdEvento=new.IdEvento)is null Then 
		return new;
	end if;
	if(select NomeCat from Torneo where IdTorneo=new.IdTorneo)=new.NomeCat then
	    	return new;
	 end if;
	 RAISE EXCEPTION 'Gli eventi relativi ad un torneo devono essere della stessa categoria, evento: %', new.IdEvento;
 END;
 
$$ LANGUAGE plpgsql;




CREATE TRIGGER categoria_evento
AFTER Insert On Evento
FOR EACH ROW
EXECUTE PROCEDURE fun_categoria_evento();


--Un utente può candidarsi per una squadra solo se lo stato di quest’ultima è “in formazione”
CREATE OR REPLACE FUNCTION fun_candidatura_possibile() RETURNS trigger AS
$$
declare max integer:=(select GiocMax from Squadra where NomeSq=new.NomeSq);
numgiocatori integer:=(select count(Username) from Candidato where NomeSq=new.NomeSq and stato='accettato');
BEGIN
	if (select StatoSq from Squadra where NomeSq=new.NomeSq) not in('in formazione','temporanea') Then 
		if(new.stato<>'accettato')then
			return new;
		else
			raise EXCEPTION 'Non si ci può candidare ad una squadra definitiva, squadra: %, utente: %', new.nomesq,new.username;
		end if;
	end if;

 IF(max-numgiocatori)=0 THEN
 	Update Squadra
	set StatoSq='definitiva'
	Where NomeSq= New.NomeSq;
	Raise notice 'Squadra è definitiva, Squadra:%', new.NomeSq;
 END IF;
 RETURN NEW;
 END;
 
$$ LANGUAGE plpgsql;




CREATE TRIGGER candidatura_possibile
AFTER Insert or Update On Candidato
FOR EACH ROW
EXECUTE PROCEDURE fun_candidatura_possibile();


--Un utente può avere la candidatura accettata ad una sola squadra(non temporanea)
CREATE OR REPLACE FUNCTION fun_una_candidatura_possibile() RETURNS trigger AS
$$
BEGIN
	if (select count(*) from Candidato natural join squadra where Username=new.Username and stato='accettato' and StatoSq<>'temporanea')>1 Then 
		 RAISE EXCEPTION 'è possibile far parte solo di una squadra, utente: %, squadra: %', new.Username,new.NomeSq;
	end if;
	
	return new;
 END;
 
$$ LANGUAGE plpgsql;




CREATE TRIGGER una_candidatura_possibile
AFTER Insert or update On Candidato
FOR EACH ROW
EXECUTE PROCEDURE fun_una_candidatura_possibile();


--un utente si può iscrivere ad un torneo se questo non è a squadre
CREATE OR REPLACE FUNCTION fun_partecipazione_utenti_tornei() RETURNS trigger AS
$$
BEGIN
	if (select Modalità from  Torneo where IdTorneo=new.IdTorneo )='singolo' Then
	    	return new;
	 end if;
	 RAISE EXCEPTION 'Un utente può iscriversi ad un torneo se la categoria non è a squadre, torneo: %, utente: %', new.IdTorneo, new.Username;
 END;
 
$$ LANGUAGE plpgsql;




CREATE TRIGGER partecipazione_utenti_tornei
AFTER Insert On Registra
FOR EACH ROW
EXECUTE PROCEDURE fun_partecipazione_utenti_tornei();

 
--per partecipare ad evento bisogna essere iscritti al torneo
CREATE OR REPLACE FUNCTION Fun_partecipazione_utenti_evento() RETURNS trigger AS
$$
BEGIN
	if (new.stato<>'confermato') Then
		return new;
	end if;
	if(select IdTorneo from Evento where IdEvento=new.IdEvento) is null then
	 	return new;
	end if;
	if(select Modalità from Evento join Torneo using (IdTorneo) where IdEvento=new.IdEvento)='singolo' then 
		if(select count(*) from Registra where Username=new.Username and IdTorneo=(select IdTorneo from Evento where IdEvento=new.IdEvento))=1 then
			return new;
		end if;
	else
		if(select count(*) from Partecipa natural join Candidato where Username=new.Username and IdEvento=new.IdEvento and stato='accettato')=1 then 
		 return new;
		end if;
	 	
	 end if;
	RAISE EXCEPTION 'Per iscriversi ad un evento è necessario iscriversi prima al torneo, evento: %, utente: %', new.IdEvento,new.Username;
 END;
 
$$ LANGUAGE plpgsql;




CREATE TRIGGER partecipazione_utenti_evento
AFTER Insert or update On Iscrizione
FOR EACH ROW
EXECUTE PROCEDURE Fun_partecipazione_utenti_evento();


--funzione che crea le squadra temporanee, una candidatura 'accettata' per la squadra, ed inserisce le squadre in 'Partecipa'
CREATE OR REPLACE  FUNCTION Fun_Squadra_Temporanea() RETURNS trigger AS 
$$  
DECLARE 
	sqnome varchar(30):='Temporanea_V1_' || new.IdEvento;
	sqcompositore varchar(30):=(select Organizzatore from Evento where IdEvento=new.IdEvento);
	V2 Integer;
	V1 Integer;																										 
BEGIN

	IF(select IdTorneo from Evento where IdEvento=new.IdEvento) is not null THEN
		return new;
	END IF;																		
	IF not (select squadre from  Categoria natural join Evento where IdEvento=new.IdEvento) THEN
		return new;
	END IF;

	IF(new.Qualità<>'giocatore' or new.stato<>'confermato')  THEN
		return new;
	END IF;									   
	IF((select count(*) from Squadra where NomeSq=sqnome)= 0) THEN 
		Insert into Squadra(NomeSq, StatoSq, ColoreM, GiocMin, GiocMax, DescrSq, Compositore)
		values (sqnome, 'temporanea', 'Bianca', 5, 11,'La prima squadra temporanea: evento '|| new.IdEvento || '.',sqcompositore);
		RAISE NOTICE	'Prima squadra temporanea creata, evento: %',new.IdEvento;		
	END IF;
	V1 :=( select count(*) from Candidato where stato='accettato' and NomeSq=sqnome); 
	sqnome :='Temporanea_V2_' || new.IdEvento;
	IF((select count(*) from Squadra where NomeSq=sqnome)= 0) THEN 
		Insert into Squadra(NomeSq, StatoSq, ColoreM, GiocMin, GiocMax, DescrSq, Compositore)
		values (sqnome, 'temporanea', 'Bianca', 5, 11,'La seconda squadra temporanea: evento '|| new.IdEvento || '.',sqcompositore);
		RAISE NOTICE	'Seconda squadra temporanea creata, evento: %',new.IdEvento;		
	END IF;
	V2 :=( select count(*) from Candidato where stato='accettato' and NomeSq=sqnome); 																	   
	IF(V1>V2) THEN 
		Insert into Candidato values(new.Username, sqnome, 'accettato', 'giocatore');
		RAISE NOTICE	'% candidato alla seconda squadra temporanea, evento: % ', new.Username, new.IdEvento;		
	ELSE IF(V2>V1) THEN 
		Insert into Candidato values(new.Username, 'Temporanea_V1_' || new.IdEvento , 'accettato', 'giocatore');
		RAISE NOTICE	'% candidato alla prima squadra temporanea, evento: % ', new.Username, new.IdEvento;
		ELSE
			Insert into Candidato values(new.Username, 'Temporanea_V1_' || new.IdEvento , 'accettato', 'giocatore');
			RAISE NOTICE	'% candidato alla prima squadra temporanea, evento: % ', new.Username, new.IdEvento;
		END IF;
	end if;
		sqnome:=(select NomeSq from Partecipa where IdEvento=new.IdEvento and NomeSq='Temporanea_V1_' || new.IdEvento);
		if(sqnome)is null then 
			Insert into Partecipa values(new.IdEvento, 'Temporanea_V1_' || new.IdEvento);
			Insert into Partecipa values(new.IdEvento, 'Temporanea_V2_' || new.IdEvento);
		end if;
	RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER Evento_Squadra_Temporanea
AFTER Insert or update On Iscrizione
FOR EACH ROW
EXECUTE PROCEDURE Fun_Squadra_Temporanea();


--se l'iscrizione ad un evento viene accettata viene incrementato il numero di partite della  categoria giocate dall'utente

CREATE OR REPLACE FUNCTION  Fun_incremento_partite_giocate() RETURNS trigger AS
$$
declare categoria_partita varchar(30):=(select NomeCat from Evento where IdEvento=new.IdEvento);
BEGIN
 IF(NEW.Stato<>'confermato')THEN 
 	RETURN NEW;
 END IF;
 IF (NEW.Qualità='giocatore') THEN
  update Partite
  set qta=qta+1
  where Partite.Username=new.Username and Partite.NomeCat=categoria_partita;
 END IF;
 return new;
 END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER incremento_partite_giocate
AFTER Insert or Update on Iscrizione
FOR EACH ROW
EXECUTE PROCEDURE Fun_incremento_partite_giocate();



--decrementa il numero di partite giocate se un'iscrizione confermata viene eliminata
CREATE OR REPLACE FUNCTION  Fun_decremento_partite_giocate() RETURNS trigger AS
$$
declare categoria_partita varchar(30):=(select NomeCat from Evento where IdEvento=old.IdEvento);
BEGIN
 IF(old.Stato<>'confermato')THEN RETURN old;
 END IF;
 IF (old.Qualità='giocatore') THEN
  update Partite
  set qta=qta-1
  where Partite.Username=old.Username and Partite.NomeCat=categoria_partita;
 END IF;
 return old;
 END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER partite_decremento
before Delete on Iscrizione
FOR EACH ROW
EXECUTE PROCEDURE Fun_decremento_partite_giocate();

--elimina l'evento solo se è ancora aperto
CREATE OR REPLACE FUNCTION fun_Eliminazione_Evento() RETURNS trigger AS
$$
BEGIN
	 IF(select stato from Evento where IdEvento=old.IdEvento)='aperto' THEN
	 	IF(select IdTorneo from Evento where IdEvento=old.IdEvento) is null THEN
			DELETE from Squadra
			where NomeSq='Temporanea_V2_' || old.IdEvento or NomeSq='Temporanea_V1_' || old.IdEvento;
		END IF;
	  return old;
	 END IF;
	 RAISE EXCEPTION 'Gli eventi per essere eliminati devono essere ancora aperti, evento: %', old.IdEvento;
 END;
 
$$ LANGUAGE plpgsql;




CREATE TRIGGER Eliminazione_Evento
before delete On Evento
FOR EACH ROW
EXECUTE PROCEDURE fun_Eliminazione_Evento();

--Elimina una squadra solo se questa non ha mai giocato ad una partita
CREATE OR REPLACE FUNCTION fun_Eliminazione_Squadra() RETURNS trigger AS
$$
BEGIN

	 IF(select StatoSq from Squadra where NomeSq=old.NomeSq)<>'definitiva' THEN
	  return old;
	 END IF;
	
	 if(select count(*) from Composto where NomeSq=old.NomeSq)=0 THEN
	 	 if(select count(*) from Partecipa where NomeSq=old.NomeSq)=0 THEN
	  		return old;
	 	END IF;
	 END IF;
	 RAISE EXCEPTION 'Non si può eliminare una squadra se questa ha partecipato a tornei o eventi: %', old.NomeSq;
 END;
$$ LANGUAGE plpgsql;




CREATE TRIGGER Eliminazione_Squadra
before delete On Squadra
FOR EACH ROW
EXECUTE PROCEDURE fun_Eliminazione_Squadra();

--ogni volta che viene inserito un nuovo utente, viene inserito il numero di partite giocate(posto a 0) per ogni categoria
CREATE OR REPLACE FUNCTION Fun_Inserimento_partite() RETURNS trigger AS
$$
declare categorie CURSOR FOR (select NomeCat from Categoria);
nomecategoria varchar(30);
 BEGIN
 OPEN categorie;
 FETCH categorie into nomecategoria;
 WHILE FOUND LOOP 
 
 	INSERT INTO Partite
	Values (new.Username,nomecategoria);
 	FETCH categorie INTO nomecategoria; 

 END LOOP;
 CLOSE categorie;
 RETURN NEW;
 END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER Inserimento_partite
AFTER Insert on Utente
FOR EACH ROW
EXECUTE PROCEDURE Fun_Inserimento_partite();

--l'inserimento di un esito è possibile solo se l'evento è chiuso
CREATE OR REPLACE FUNCTION Fun_Inserimento_Esito() RETURNS trigger AS
$$
declare statoEv char(6):=( select stato from Evento where IdEvento=new.IdEvento);
 BEGIN
 if(statoEv='chiuso')Then
 	if new.DataEs > (select DataEv from Evento where new.IdEvento=IdEvento) then
		 RETURN NEW;
	end if;
 end if;
 RAISE EXCEPTION 'Un esito può essere inserito solo se l''evento relativo è chiuso, evento: %',new.IdEvento;

 END;
$$ LANGUAGE plpgsql;




CREATE TRIGGER Inserimento_Esito
AFTER Insert on Esito
FOR EACH ROW
EXECUTE PROCEDURE Fun_Inserimento_Esito();


--l'eliminazione di una iscrizione confermata è possibile solo se l'evento a cui si riferisce è ancora aperto
CREATE OR REPLACE FUNCTION fun_Eliminazione_Iscrizione() RETURNS trigger AS
$$
BEGIN

	 IF(old.stato)<>'confermato' THEN
	  return old;
	 END IF;
	
	 if(select Stato from Evento where IdEvento=old.idEvento)='aperto' THEN
	 		  		return old;
	 END IF;
	 RAISE EXCEPTION 'Non si può eliminare una iscrizione se l''evento è chiuso. evento: %,utente: %', old.IdEvento,old.Username;
 END;
 
$$ LANGUAGE plpgsql;




CREATE TRIGGER Eliminazione_Iscrizione
before delete On Iscrizione
FOR EACH ROW
EXECUTE PROCEDURE fun_Eliminazione_Iscrizione();


--Eliminazione candidatura ad una squadra: è possibile solo se la squadra è ancora in formazione o se le candidature sono rifiutate
CREATE OR REPLACE FUNCTION fun_Eliminazione_Candidatura() RETURNS trigger AS
$$
BEGIN

	 IF(old.stato)<>'accettato' THEN
	  return old;
	 END IF;
	
	 if(select StatoSq from Squadra where NomeSq=old.NomeSq)='in formazione' THEN
	 		  return old;
	 END IF;

	 if(select count(*) from Composto where NomeSq=old.NomeSq)=0 THEN
	 	 if(select count(*) from Partecipa where NomeSq=old.NomeSq)=0 THEN
	  		return old;
	 	END IF;
	 END IF;
	 RAISE EXCEPTION 'Non si può eliminare una candidatura se la squadra è definitiva e ha partecipato ad eventi. squadra: %,utente: %', old.NomeSq,old.Username;
 END;
 
$$ LANGUAGE plpgsql;




CREATE TRIGGER Eliminazione_Candidatura
Before delete On Candidato
FOR EACH ROW
EXECUTE PROCEDURE fun_Eliminazione_Candidatura();


--si può eliminare un torneo solo se non ha ancora eventi chiusi
CREATE OR REPLACE FUNCTION fun_Eliminazione_Torneo() RETURNS trigger AS
$$
BEGIN

	
	 if(select count(*) from Evento where IdTorneo=old.IdTorneo and Stato='chiuso')=0 THEN
	 		  		return old;
	 END IF;
	 RAISE EXCEPTION 'Non si può eliminare un torneo se ci sono eventi chiusi. Torneo: %', old.IdTorneo;
 END;
 
$$ LANGUAGE plpgsql;




CREATE TRIGGER Eliminazione_Torneo
Before delete On Torneo
FOR EACH ROW
EXECUTE PROCEDURE fun_Eliminazione_Torneo();


--possono partecipare ad un evento solo due squadre
CREATE OR REPLACE FUNCTION fun_Partecipazione_2squadre() RETURNS trigger AS
$$
BEGIN

	
	 if(select count(*) from Partecipa where IdEvento=new.IdEvento)>2 THEN
		 RAISE EXCEPTION 'Ad un evento possono partecipare solo 2 squadre. Evento: %, squadra: %', new.IdEvento,new.NomeSq;
	 END IF;
	 return new;
 END;
 
$$ LANGUAGE plpgsql;




CREATE TRIGGER Partecipazione_2squadre
After insert On Partecipa
FOR EACH ROW
EXECUTE PROCEDURE fun_Partecipazione_2squadre();


--Una volta inserita una squadra in "partecipa" non è più possibile toglierla
CREATE OR REPLACE FUNCTION fun_Partecipazione_squadre() RETURNS trigger AS
$$
BEGIN
		
	 RAISE EXCEPTION 'Non è possibile eliminare o modificare la partecipazione di una squadra ad un evento. Evento: %, squadra: %', old.IdEvento,old.NomeSq;
	 
 END;
 
$$ LANGUAGE plpgsql;




CREATE TRIGGER Partecipazione_squadre
before delete On Partecipa
FOR EACH ROW
EXECUTE PROCEDURE fun_Partecipazione_squadre();

CREATE TRIGGER Partecipazione_squadre_update
before update of NomeSq On Partecipa
FOR EACH ROW
EXECUTE PROCEDURE fun_Partecipazione_squadre();
 

--è possibile modificare la partecipazione ad un torneo a squadre solo se non ci sono ancora eventi del torneo
CREATE OR REPLACE FUNCTION fun_Partecipazione_squadre_torneo() RETURNS trigger AS
$$
BEGIN
		If(select count(*) from Evento where IdTorneo=old.IdTorneo)>0 then
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




CREATE TRIGGER Partecipazione_squadre_torneo
before delete On Composto
FOR EACH ROW
EXECUTE PROCEDURE fun_Partecipazione_squadre_torneo();

CREATE TRIGGER Partecipazione_squadre_torneo_update
before update of NomeSq On Composto
FOR EACH ROW
EXECUTE PROCEDURE fun_Partecipazione_squadre_torneo();


--la partecipazione di un utente ad torneo singolo non è possibile eliminarla o modificarla se ci sono già eventi programmati
CREATE OR REPLACE FUNCTION fun_Partecipazione_singoli_torneo() RETURNS trigger AS
$$
BEGIN
		If(select count(*) from Evento where IdTorneo=old.IdTorneo)>0 then
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




CREATE TRIGGER Partecipazione_singoli_torneo
before delete On Registra
FOR EACH ROW
EXECUTE PROCEDURE fun_Partecipazione_singoli_torneo();

CREATE TRIGGER Partecipazione_singoli_torneo_update
before update of Username On Registra
FOR EACH ROW
EXECUTE PROCEDURE fun_Partecipazione_singoli_torneo();


--un utente può iscriversi ad un torneo finchè non viene inserito il primo evento
CREATE OR REPLACE FUNCTION fun_Inserimento_Partecipazione_singoli() RETURNS trigger AS
$$
BEGIN
		If(select Modalità from Torneo where IdTorneo=new.IdTorneo)='squadre' then
			RAISE EXCEPTION 'Non è possibile aggiungere la partecipazione di un utente ad un torneo a squadre. Torneo: %, squadra: %', new.IdTorneo,new.Username;
		end if;
		If(select count(*) from Evento where IdTorneo=new.IdTorneo)>0 then
			RAISE EXCEPTION 'Non è possibile aggiungere la partecipazione di un utente ad un torneo se ci sono già eventi programmati. Torneo: %, squadra: %', new.IdTorneo,new.Username;
		end if;
		return new;
END;
 
$$ LANGUAGE plpgsql;




CREATE TRIGGER Inserimento_Partecipazione_singoli
before Insert On Registra
FOR EACH ROW
EXECUTE PROCEDURE fun_Inserimento_Partecipazione_singoli();


--una squadra può iscriversi ad un torneo finchè non viene inserito il primo evento
CREATE OR REPLACE FUNCTION fun_Inserimento_Partecipazione_squadre() RETURNS trigger AS
$$
BEGIN
		If(select Modalità from Torneo where IdTorneo=new.IdTorneo)='singolo' then
			RAISE EXCEPTION 'Non è possibile aggiungere la partecipazione di una squadra ad un torneo singolo. Torneo: %, squadra: %', new.IdTorneo,new.NomeSq;
		end if;
		If(select count(*) from Evento where IdTorneo=new.IdTorneo)>0 then
			RAISE EXCEPTION 'Non è possibile aggiungere la partecipazione di una squadra ad un torneo se ci sono già eventi programmati. Torneo: %, squadra: %', new.IdTorneo,new.NomeSq;
		end if;
		if(select StatoSq from Squadra where NomeSq=new.NomeSq)='definitiva' then
	    	return new;
	    else 
	        RAISE EXCEPTION 'Per iscriversi ad un torneo a squadre è necessario che le squadre siano definitive, torneo: %,squadra:%', new.IdTorneo, new.NomeSq;
	 	end if;
	
		return new;
END;
 
$$ LANGUAGE plpgsql;




CREATE TRIGGER Inserimento_Partecipazione_squadre
before Insert On Composto
FOR EACH ROW
EXECUTE PROCEDURE fun_Inserimento_Partecipazione_squadre();


--quando viene aggiunta una nuova categoria allora vengono aggiunte le partite(inizializzate a 0) per ogni utente di quella categoria
CREATE OR REPLACE FUNCTION Fun_Inserimento_categoria() RETURNS trigger AS
$$
declare utenti CURSOR FOR (select Username from Utente);
nomeU varchar(30);
 BEGIN
 OPEN utenti;
 FETCH utenti into nomeU;
 WHILE FOUND LOOP 
 
 	INSERT INTO Partite
	Values (nomeU,new.NomeCat);
 	FETCH utenti INTO nomeU; 

 END LOOP;
 CLOSE utenti;
 RETURN NEW;
 END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Inserimento_Categoria
after insert on Categoria
for each ROW
EXECUTE PROCEDURE Fun_Inserimento_categoria();


--I tornei devono essere creati da utenti premium 
CREATE OR REPLACE FUNCTION Fun_Inserimento_Torneo() RETURNS trigger AS
$$

 BEGIN
 if(select premium from Utente where Username=new.creatore) then 
 	if(select Modalità from Torneo where IdTorneo=new.IdTorneo)='squadre' and (select squadre from Categoria where NomeCat=new.NomeCat)then 
 		RETURN NEW;
 	end if;
 	if(select Modalità from Torneo where IdTorneo=new.IdTorneo)='singolo' and not(select squadre from Categoria where NomeCat=new.NomeCat)then 
 		RETURN NEW;
 	end if;
 end if;
 Raise EXCEPTION 'il creatore del torneo deve essere un utente premium e la modalità deve corrispondere alla categoria, torneo: %', new.IdTorneo;
 END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Inserimento_Torneo
after insert on Torneo
for each ROW
EXECUTE PROCEDURE Fun_Inserimento_Torneo();

CREATE OR REPLACE FUNCTION Fun_Inserimento_Squadra() RETURNS trigger AS
$$

 BEGIN
 if(select premium from Utente where Username=new.Compositore) then 
 		RETURN NEW;
 end if;
 Raise EXCEPTION 'Il compositore di una squadra deve essere un utente premium, Squadra: %', new.NomeSq;
 END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER Inserimento_Squadra
after insert on Squadra
for each ROW
EXECUTE PROCEDURE Fun_Inserimento_Squadra();
