set search_path to 'UniGenovaSocialSport';

-- DROP FUNCTION minuti( IN orario time);
-- DROP FUNCTION Minuti_Mese( IN mese double precision);
-- DROP FUNCTION Max_Punti( IN eventoId integer);
-- DROP FUNCTION Eventi_VintixCorso();
-- DROP FUNCTION Punti_Torneo_Singolo( IN torneoS integer);
-- DROP FUNCTION Tornei_Singoli_Vinti( IN NomeSprt varchar(30));
-- DROP FUNCTION Punti_Evento_Squadre( IN eventoId integer);
-- DROP FUNCTION Risultati_Girone_Squadre( IN TorneoS integer);
-- DROP FUNCTION Risultati_Girone_Singolo( IN TorneoS integer);
-- DROP FUNCTION Vincitore_Girone( IN torneoId integer);
-- DROP FUNCTION Punti_Torneo_Squadre( IN torneoQ integer);
-- DROP FUNCTION Punti_Evento_Squadre( IN eventoId integer);
-- DROP FUNCTION Vincitori_TorneixCategoria( IN NomeSprt varchar(30));


--1) Funzione che ritorna il numero di minuti in un certo lasso di tempo
CREATE OR REPLACE  FUNCTION minuti( IN orario time) RETURNS Integer AS
$$
BEGIN
if(orario) is null then return 0;
end if;
return 	(select date_part('hour', orario)*60+date_part('minute', orario));
END;
$$
LANGUAGE plpgsql ;

----------------------------------------------------------------------------------------
--2) Qunati minuti ci sono in un mese
CREATE OR REPLACE  FUNCTION Minuti_Mese( IN mese double precision) RETURNS Integer AS
$$

BEGIN
	CASE mese
	  WHEN 1 , 3 , 5 , 7 , 8 , 10 , 12 then
			return 744*600;
		WHEN 2 THEN
			return 672*60;
		ELSE
			return 720*60;
	END CASE;
END;
$$
LANGUAGE plpgsql ;

-------------------------------------------------------------------------------------
--3) Restituisce, per un dato evento, i giocatori che hann fatto più punti
CREATE OR REPLACE  FUNCTION Max_Punti( IN eventoId integer) RETURNS TABLE(
	Username varchar(30)

) AS
$$
BEGIN
return query
	select Punti.Username
	from Punti
	where IdEvento=eventoId and Punti.Punti=(select max(Punti.Punti)
						from  Punti
						where IdEvento=eventoId);

END;
$$
LANGUAGE plpgsql ;

----------------------------------------------------------------------------------------
--4) Per ogni CorsoDiStudi e per ogni SPORT il numero di tornei vinti
 CREATE OR REPLACE  FUNCTION Eventi_VintixCorso() RETURNS TABLE(
	NomeCorso varchar(50),
	NomeSport varchar(30),
	Quantità bigint
) AS
$$
declare
elencoEventi cursor for (select IdE from Evento);

corso varchar(50);
nomecategoria varchar(30);
eventoId integer;
elencoUtenti cursor for (select Username
						from Max_Punti(eventoId));
utenti varchar(30);
BEGIN


 delete from Eventi_Vinti;

 			Open elencoEventi;
			fetch elencoEventi into eventoId;
	 		WHILE FOUND LOOP
				nomecategoria:=(select Evento.NomeSport from Evento where IdE=eventoId);
				Open elencoUtenti;
				fetch elencoUtenti into utenti;
	 			WHILE FOUND LOOP
					corso:=(select Utente.nomeCorso from Utente where Username=utenti);
					utenti:=(select Eventi_Vinti.NomeSport from Eventi_Vinti where Eventi_Vinti.NomeCorso=corso and Eventi_Vinti.NomeSport=nomecategoria);
					if (utenti) is null then
						insert into Eventi_Vinti values(corso,nomecategoria);
					end if;
					update Eventi_Vinti
					set Qta=Eventi_Vinti.Qta+1
					where Eventi_Vinti.NomeCorso=corso and Eventi_Vinti.NomeSport=nomecategoria;
					fetch elencoUtenti into utenti;
				END LOOP;
				close elencoUtenti;
			fetch elencoEventi into eventoId;
 			END LOOP;
 			close elencoEventi;


return query
				(select *
				from Eventi_Vinti
				order by nomecorso,NomeSport )
				union
				(select aux.NomeCorso, aux.NomeSport, 0
					from ((select CorsoDiStudi.NomeCorso, Sport.NomeSport
							from Sport cross join CorsoDiStudi)
						except
						(select Eventi_Vinti.NomeCorso , Eventi_Vinti.NomeSport
							from Eventi_Vinti)) as  aux);
END;
$$
LANGUAGE plpgsql ;

--------------------------------------------------------------------------------------------------------------------
--5) Dato un torneo di Sport SINGOLO ritorna la tabella contenente il resoconto delle partite per ogni fase
CREATE OR REPLACE  FUNCTION Punti_Torneo_Singolo( IN torneoS integer) RETURNS TABLE(
	IdEvento integer,
	Username varchar(30),
	PuntiTot integer,
	Fase varchar(10),
	DataEv timestamp
) AS
$$
BEGIN
	If (select Modalità from Torneo where IdT=torneoS)='SQUADRE' then
		RAISE EXCEPTION 'La categoria dell''evento è a squadre';
	end if;
 return query
 (select Punti.IdEvento,Punti.Username,Punti.Punti, Evento.Fase,Evento.Data
    from Punti join Evento on (Punti.IdEvento=Evento.idE)
    where IdTorneo=torneoS
    group by Punti.Idevento,Evento.Fase,Punti.Username,Punti.Punti,Evento.Data)
union
 (select Evento.IdE,Iscrive.Username,0, Evento.Fase,Evento.Data
    from Punti right join Evento on (Punti.IdEvento=Evento.IdE) join Iscrive on(Iscrive.IdEvento=Evento.IdE)
    where IdTorneo=torneoS and Punti.Punti is null
    group by Evento.IdE,Evento.Fase,Iscrive.Username,Evento.Data
    order by Evento.IdE);


END;
$$
LANGUAGE plpgsql ;

---------------------------------------------------------------------------------------------------------------------****************************************************gfosadgvpsaduivbpasfdui
--6) Numero di tornei vinti per ogni utente dato uno sport singolo
CREATE OR REPLACE  FUNCTION Tornei_Singoli_Vinti( IN NomeSprt varchar(30)) RETURNS TABLE(
	Username varchar(30),
	Qta integer,
	NomeSport varchar(30)

) AS
$$

declare elencoTornei cursor for (select IdT from Torneo where Torneo.NomeSport=NomeSprt);
TorneoId integer;
risTorneo cursor for (select Punti_Torneo_Singolo.Username,PuntiTot from Punti_Torneo_Singolo(TorneoId) where Fase='FINALE' );
puntitot1 integer;
puntitot2 integer;
NomeU varchar(30);
NomeU2 varchar(30);
utente varchar(30);
BEGIN

If (select DiSquadra from Sport where Sport.NomeSport=NomeSprt) then
	RAISE EXCEPTION 'Lo sport dell''evento è a squadre';
end if;

 delete from Vincitori_Tornei_singoli;


		OPEN elencoTornei;
 		FETCH elencoTornei into TorneoId;
	 	WHILE FOUND LOOP
			Open risTorneo;
			fetch risTorneo into NomeU, puntitot1;
			fetch risTorneo into NomeU2, puntitot2;
			if(NomeU) is not null and  (NomeU2)is  not null then --continua solo se i punti sono stati inseriti
				utente:=(select Vincitori_Tornei_singoli.Username from Vincitori_Tornei_singoli where Vincitori_Tornei_singoli.Username=NomeU);
				if(utente)is null then
					insert into Vincitori_Tornei_singoli values(NomeU,0, NomeSprt);
				end if;
				utente:=(select Vincitori_Tornei_singoli.Username from Vincitori_Tornei_singoli where Vincitori_Tornei_singoli.Username=NomeU2);
				if(utente)is null then
					insert into Vincitori_Tornei_singoli values(NomeU2,0, NomeSprt);
				end if;
				If(puntitot1>puntitot2)then
					update Vincitori_Tornei_singoli
						set Qta=Vincitori_Tornei_singoli.Qta+1
						where Vincitori_Tornei_singoli.Username=NomeU and Vincitori_Tornei_singoli.NomeSport=NomeSprt;

				else
					if(puntitot2>puntitot1)then
						update Vincitori_Tornei_singoli
						set Qta=Vincitori_Tornei_singoli.Qta+1
						where Vincitori_Tornei_singoli.Username=NomeU2 and Vincitori_Tornei_singoli.NomeSport=NomeSprt;

				 	end if;
				end if;
			end if;
 			close risTorneo;
 			FETCH elencoTornei into TorneoId;
 		END LOOP;
 		CLOSE elencoTornei;
return query
		select *
		from Vincitori_Tornei_singoli

		union

		(select aux.Username, 0, NomeSprt
		from ((select Username from Utente )
				except
				(select Vincitori_Tornei_singoli.Username
				from Vincitori_Tornei_singoli)) as  aux);
END;
$$
LANGUAGE plpgsql ;

------------------------------------------------------------------------------------------------------
--7) Dato un evento a squadre ricava i punteggi delle squadre partecipanti
CREATE OR REPLACE  FUNCTION Punti_Evento_Squadre( IN eventoId integer) RETURNS TABLE(
	NomeSq varchar(30),
	PuntiTot bigint

) AS
$$
BEGIN

If not(select DiSquadra from Sport natural join Evento where IdE=eventoId) then
	RAISE EXCEPTION 'Lo sport dell''evento è singolo';
end if;
return query
 (select Candida.NomeSq, SUM(Punti.Punti) as PuntiTot
 from Punti join Candida using(Username) join di on (di.NomeSq=Candida.NomeSq and Punti.IdEvento=di.IdEvento)
 where Punti.IdEvento=eventoId and Candida.stato='ACCETTATO'
 group by Candida.NomeSq)
 union
 --se i punti non sono ancora stati inseriti
 (select Candida.NomeSq, 0 as PuntiTot
 from Punti right join Candida using(Username) join di on (di.NomeSq=Candida.NomeSq and Punti.IdEvento=di.IdEvento)
 where Punti.IdEvento=eventoId and Candida.stato='ACCETTATO' and Punti.Punti is null
 group by Candida.NomeSq);

END;
$$
LANGUAGE plpgsql ;

-------------------------------------------------------------------------------------
--8) Elenca le squadre partecipanti ad un girone con i punti conseguiti(per ogni vittoria +3, pareggio +1, perdita +0)
CREATE OR REPLACE  FUNCTION Risultati_Girone_Squadre( IN TorneoS integer) RETURNS TABLE(

	NomeSq varchar(30),
	PuntiGirone integer
) AS
$$
Declare
NomeSquadra varchar(30);
eventigirone CURSOR FOR (select Evento.IdE
									 from Evento
									 where IdTorneo=torneoS and fase='GIRONE');
eventoId integer;
risultati cursor for (select Punti_Evento_Squadre.NomeSq,PuntiTot from Punti_Evento_Squadre(eventoId));
puntitot1 integer;
puntitot2 integer;
NomeSquadra2 varchar(30);
squadra varchar(30);
BEGIN

	If (select tipo from Torneo where IdT=TorneoS)='ELIMINAZIONE_DIRETTA' then
		RAISE EXCEPTION 'La tipologia di torneo non contiene gironi';
	end if;
	if(select Modalità from Torneo where IdT=TorneoS)='SINGOLO' then
		raise exception 'La modalità è singola';
	end if;

		delete from Ris_Girone;
		OPEN eventigirone;
 		FETCH eventigirone into eventoId;
	 	WHILE FOUND LOOP
			Open risultati;
			fetch risultati into NomeSquadra, puntitot1;
			fetch risultati into NomeSquadra2, puntitot2;
			if(NomeSquadra) is null or (NomeSquadra2) is null then
				raise EXCEPTION'Non sono stati caricati tutti i punti del girone, evento: %', eventoId;
			end if;
			squadra:= (select Partecipante from Ris_Girone where Partecipante=NomeSquadra);
			if(squadra)is null then
				Insert into Ris_Girone values(NomeSquadra);
			end if;
				squadra:= (select Partecipante from Ris_Girone where Partecipante=NomeSquadra2);
			if(squadra)is null then
				Insert into Ris_Girone values(NomeSquadra2);
			end if	;

			If(puntitot1>puntitot2)then
					update	Ris_Girone as R
					set punti=punti+3
					where	R.Partecipante=NomeSquadra ;
			else if(puntitot2>puntitot1)then
					update	Ris_Girone as R
					set punti=punti+3
					where	R.partecipante=NomeSquadra2 ;
				 else
					update	Ris_Girone as R
					set punti=punti+1
					where	(R.partecipante=NomeSquadra2 or R.partecipante=NomeSquadra ) ;
				 end if;
			end if;
 			close risultati;
 			FETCH eventigirone into eventoId;
 		END LOOP;
 		CLOSE eventigirone;

 RETURN QUERY (select * from Ris_Girone );
END;
$$
LANGUAGE plpgsql ;

-----------------------------------------------------------------------------------------------------------
--9) Dato un torneo singolo elenca gli utenti partecipanti agli eventi nella fase dei gironi
CREATE OR REPLACE  FUNCTION Risultati_Girone_Singolo( IN TorneoS integer) RETURNS TABLE(
	Partecipante varchar(30),
	PuntiGirone integer
) AS
$$
Declare
Utente1 varchar(30);
eventigirone CURSOR FOR (select Evento.IdE
									 from Evento
									 where IdTorneo=torneoS and fase='GIRONE');
eventoId integer;
puntitot1 integer;
puntitot2 integer;
Utente2 varchar(30);
risultati cursor for (select Punti.Username,Punti.Punti from Punti natural join Evento where Evento.IdE=eventoId);
utente varchar(30);
BEGIN

	If (select tipo from Torneo where IdT=TorneoS)='ELIMINAZIONE_DIRETTA' then
		RAISE EXCEPTION 'La tipologia di torneo non contiene gironi';
	end if;

	if(select Modalità from Torneo where IdT=TorneoS)='SQUADRA' then
		raise exception 'La modalità è a squadre';
	end if;


		delete from Ris_Girone;
		OPEN eventigirone;
 		FETCH eventigirone into eventoId;
	 	WHILE FOUND LOOP
			Open risultati;
			fetch risultati into Utente1, puntitot1;
			fetch risultati into Utente2, puntitot2;
			if(Utente1) is null or (Utente2) is null then
				raise EXCEPTION'Non sono stati caricati tutti i punti del girone, evento: %', eventoId;
			end if;
			utente:= (select Ris_Girone.Partecipante from Ris_Girone where Ris_Girone.Partecipante=Utente1);
			if(utente)is null then
				Insert into Ris_Girone values(Utente1);
			end if;
				utente:= (select Ris_Girone.Partecipante from Ris_Girone where Ris_Girone.Partecipante=Utente2);
			if(utente)is null then
				Insert into Ris_Girone values(Utente2);
			end if	;

			If(puntitot1>puntitot2)then
					update	Ris_Girone as R
					set punti=punti+3
					where	R.Partecipante=Utente1 ;
			else if(puntitot2>puntitot1)then
					update	Ris_Girone as R
					set punti=punti+3
					where	R.Partecipante=Utente2 ;
				 else
					update	Ris_Girone as R
					set punti=punti+1
					where	(R.Partecipante=Utente2 or R.Partecipante=Utente1 ) ;
				 end if;
			end if;
 			close risultati;
 			FETCH eventigirone into eventoId;
 		END LOOP;
 		CLOSE eventigirone;

 RETURN QUERY (select * from Ris_Girone );
END;
$$
LANGUAGE plpgsql ;

-----------------------------------------------------------------------
--10) Elenca i vincitori di un girone di un torneo, si ritengono vincitori di un girone i partecipanti che hanno conseguito più punti
--non la somma dei punti dei singoli giocatori, ma i punti delle partite(vinta-> 3 , pareggiata->1, persa->0)
CREATE OR REPLACE  FUNCTION Vincitore_Girone( IN torneoId integer) RETURNS TABLE(
	Partecipante varchar(30)
) AS
$$
BEGIN
If (select tipo from Torneo where IdT=torneoId)='ELIMINAZIONE_DIRETTA' then
		RAISE EXCEPTION 'La tipologia di torneo non contiene gironi';
	end if;

if(select Modalità from Torneo where IdT=TorneoId)='SQUADRE' then
	return query
	select NomeSq
	from Risultati_Girone_Squadre(torneoId)
	where PuntiGirone=(select max(PuntiGirone)
						from  Risultati_Girone_Squadre(torneoId));
else
	return query
	select Risultati_Girone_Singolo.partecipante
	from Risultati_Girone_Singolo(torneoId)
	where PuntiGirone=(select max(PuntiGirone)
						from  Risultati_Girone_Singolo(torneoId));
end if;



END;
$$
LANGUAGE plpgsql ;

------------------------------------------------------------------------------------------------------------
--11) Dato un torneo di Sport a SQUADRE ritorna la tabella contenente il resoconto delle partite per ogni fase

CREATE OR REPLACE  FUNCTION Punti_Torneo_Squadre( IN torneoQ integer) RETURNS TABLE(
	IdEvento integer,
	NomeSq varchar(30),
	PuntiTot bigint,
	DataEv timestamp,
	Fase varchar(10)

) AS
$$
BEGIN

	If (select Modalità from Torneo where IdT=torneoQ)='SINGOLO' then
		RAISE EXCEPTION 'Lo sport dell''evento è singolo';
	end if;
	return query
( select di.IdEvento,di.NomeSq,SUM(Punti.Punti),Evento.Data,Evento.Fase
 from Punti join Candida using(Username) join di on (di.NomeSq=Candida.NomeSq and Punti.IdEvento=di.IdEvento)  join Evento on (di.IdEvento=Evento.IdE and Evento.IdTorneo=torneoQ)
 where  Candida.stato='ACCETTATO'
 group by di.IdEvento,di.NomeSq,Evento.Data,Evento.Fase
 order by Evento.Data)
	union
 ( select di.IdEvento,di.NomeSq,0,Evento.Data,Evento.Fase
 from Punti right join Candida using(Username) join di on (di.NomeSq=Candida.NomeSq and Punti.IdEvento=di.IdEvento)  join Evento on (di.IdEvento=Evento.IdE and Evento.IdTorneo=torneoQ)
 where  Candida.stato='ACCETTATO' and Punti.punti is null
 group by di.IdEvento,di.NomeSq,Evento.Data,Evento.Fase
 order by Evento.Data);

END;
$$
LANGUAGE plpgsql ;

---------------------------------------------------------------------------------------------------------------------------------------
--12) Dato un evento a squadre ricava i punteggi delle squadre partecipanti

CREATE OR REPLACE  FUNCTION Punti_Evento_Squadre( IN eventoId integer) RETURNS TABLE(
	NomeSq varchar(30),
	PuntiTot bigint

) AS
$$
BEGIN

If not(select DiSquadra from Sport natural join Evento where Evento.IdE=eventoId) then
	RAISE EXCEPTION 'La categoria dell''evento è singola';
end if;
return query
 (select Candida.NomeSq, SUM(Punti.Punti) as PuntiTot
 from Punti join Candida using(Username) join di on (di.NomeSq=Candida.NomeSq and Punti.IdEvento=di.IdEvento)
 where Punti.IdEvento=eventoId and Candida.stato='ACCETTATO'
 group by Candida.NomeSq)
 union
 (select Candida.NomeSq, 0 as PuntiTot
 from Punti right join Candida using(Username) join di on (di.NomeSq=Candida.NomeSq and Punti.IdEvento=di.IdEvento)
 where Punti.IdEvento=eventoId and Candida.stato='ACCETTATO' and Punti.Punti is null
 group by Candida.NomeSq);

END;
$$
LANGUAGE plpgsql ;

-----------------------------------------------------------------------
--12) Mostra le squadre vincitrici dei tornei di una certo sport a squadre
CREATE OR REPLACE  FUNCTION Vincitori_TorneixCategoria( IN NomeSprt varchar(30)) RETURNS TABLE(
	NomeSq varchar(30),
	IdTorneo integer,
	NomeSport varchar(30)

) AS
$$
declare elencoTornei cursor for (select Torneo.IdT from Torneo where Torneo.NomeSport=NomeSprt);
TorneoId integer;
risTorneo cursor for (select Punti_Torneo_Squadre.NomeSq,PuntiTot from Punti_Torneo_Squadre(TorneoId) where Fase='finale' );
risGirone cursor for (select Partecipante from Vincitore_Girone(TorneoId));
puntitot1 integer;
puntitot2 integer;
NomeSquadra varchar(30);
NomeSquadra2 varchar(30);

BEGIN

If not(select DiSquadra from Sport where Sport.NomeSport=NomeSprt) then
	RAISE EXCEPTION 'La categoria dell''evento è singola';
end if;
 delete from Vincitori_Tornei;


		OPEN elencoTornei;
 		FETCH elencoTornei into TorneoId;
	 	WHILE FOUND LOOP
			if(select tipo from Torneo where Torneo.IdT=TorneoId)='GIRONE_ALL_ITALIANA' then
				open risGirone;
				fetch risGirone	into NomeSquadra;
				while found loop
					Insert into Vincitori_Tornei
						values(NomeSquadra,TorneoId,NomeSprt)	;
					fetch risGirone	into NomeSquadra	;
				end loop;
				close risGirone;
			else
				Open risTorneo;
				fetch risTorneo into NomeSquadra, puntitot1;
				fetch risTorneo into NomeSquadra2, puntitot2;
				if(NomeSquadra) is not null and (NomeSquadra2) is not null then -- se sono stati inseriti i punti continua
				-- una finale di un torneo a squadre non può finire in pareggio
					If(puntitot1>puntitot2)then
							Insert into Vincitori_Tornei
							values(NomeSquadra,TorneoId,NomeSprt);
					else
						if(puntitot2>puntitot1)then
							Insert into Vincitori_Tornei
							values(NomeSquadra2,TorneoId,NomeSprt);

				 		end if;
					end if;
				end if;
 				close risTorneo;
			end if;
 			FETCH elencoTornei into TorneoId;
 		END LOOP;
 		CLOSE elencoTornei;
return query(select * from Vincitori_Tornei);
END;
$$
LANGUAGE plpgsql ;



