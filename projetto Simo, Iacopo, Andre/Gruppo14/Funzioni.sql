set search_path to 'UniGenovaSocialSport';

CREATE OR REPLACE  FUNCTION minuti( IN orario time) RETURNS Integer AS 
$$  
BEGIN
if(orario) is null then return 0;
end if;
return 	(select date_part('hour', orario)*60+date_part('minute', orario));
END;
$$ 
LANGUAGE plpgsql ;
													  
CREATE OR REPLACE  FUNCTION Minuti_Mese ( IN mese double precision) RETURNS Integer AS 
$$  

BEGIN
	CASE mese
		WHEN 2 THEN
			return 672*60; --non considero gli anni bisestili
		WHEN 1 , 3 , 5 , 7 , 8 , 10 , 12 then
			return 744*60;
		ELSE
			return 720*60;
	END CASE;
END;
$$ 
LANGUAGE plpgsql ;
--numero di tornei vinti per ogni utente e rispetto ad una categoria singola
CREATE OR REPLACE  FUNCTION Tornei_Singoli_Vinti ( IN Nome varchar(30)) RETURNS TABLE(
	Username varchar(30),
	Qta integer,
	NomeCat varchar(30)

) AS 
$$  
																  
declare elencoTornei cursor for (select IdTorneo from Torneo where Torneo.NomeCat=Nome);
TorneoId integer;
risTorneo cursor for (select Punti_Torneo_Singolo.Username,PuntiTot from Punti_Torneo_Singolo(TorneoId) where Fase='finale' );
puntitot1 integer;
puntitot2 integer;															
NomeU varchar(30);
NomeU2 varchar(30);
utente varchar(30);
BEGIN
	
If (select squadre from Categoria where Categoria.NomeCat=Nome) then 
	RAISE EXCEPTION 'La categoria dell''evento è a squadre';
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
					insert into Vincitori_Tornei_singoli values(NomeU,0, Nome);
				end if;
				utente:=(select Vincitori_Tornei_singoli.Username from Vincitori_Tornei_singoli where Vincitori_Tornei_singoli.Username=NomeU2);			
				if(utente)is null then 
					insert into Vincitori_Tornei_singoli values(NomeU2,0, Nome);
				end if;								   
				If(puntitot1>puntitot2)then 
					update Vincitori_Tornei_singoli
						set Qta=Vincitori_Tornei_singoli.Qta+1
						where Vincitori_Tornei_singoli.Username=NomeU and Vincitori_Tornei_singoli.NomeCat=Nome;
					
				else 
					if(puntitot2>puntitot1)then
						update Vincitori_Tornei_singoli
						set Qta=Vincitori_Tornei_singoli.Qta+1
						where Vincitori_Tornei_singoli.Username=NomeU2 and Vincitori_Tornei_singoli.NomeCat=Nome;
														   
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
									   
		(select aux.Username, 0, Nome
		from ((select Utente.Username
				from Utente )
				except
				(select Vincitori_Tornei_singoli.Username 
				from Vincitori_Tornei_singoli)) as  aux);
END;
$$ 
LANGUAGE plpgsql ;



--ritorna l'utente che ha fatto più punti in un evento
CREATE OR REPLACE  FUNCTION Max_Punti ( IN eventoId integer) RETURNS TABLE(
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

--Numero di eventi(per ogni categoria) vinti dagli utenti  per ogni corso di studi
 CREATE OR REPLACE  FUNCTION Eventi_VintixCorso () RETURNS TABLE(
	NomeCorso varchar(50),
	NomeCat varchar(30),
	Qta bigint
) AS 
$$  
declare
elencoEventi cursor for (select IdEvento from Evento);

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
				nomecategoria:=(select Evento.NomeCat from Evento where IdEvento=eventoId);
				Open elencoUtenti;
				fetch elencoUtenti into utenti;
	 			WHILE FOUND LOOP 
					corso:=(select Utente.nomeCorso from Utente where Username=utenti);
					utenti:=(select Eventi_Vinti.NomeCat from Eventi_Vinti where Eventi_Vinti.NomeCorso=corso and Eventi_Vinti.NomeCat=nomecategoria);
					if (utenti) is null then 
						insert into Eventi_Vinti values(corso,nomecategoria);
					end if;
					update Eventi_Vinti
					set Qta=Eventi_Vinti.Qta+1
					where Eventi_Vinti.NomeCorso=corso and Eventi_Vinti.NomeCat=nomecategoria;
					fetch elencoUtenti into utenti;
				END LOOP;
				close elencoUtenti;
			fetch elencoEventi into eventoId;
 			END LOOP;	
 			close elencoEventi;			


return query 
				(select * 
				from Eventi_Vinti 
				order by nomecorso,nomecat )
				union 
				(select aux.NomeCorso, aux.NomeCat, 0 
					from ((select Corso.NomeCorso, Categoria.NomeCat
							from Categoria cross join Corso)
						except
						(select Eventi_Vinti.NomeCorso , Eventi_Vinti.NomeCat
							from Eventi_Vinti)) as  aux);
END;
$$ 
LANGUAGE plpgsql ;



--Mostra le squadre vincitrici dei tornei di una certa categoria a squadre
CREATE OR REPLACE  FUNCTION Vincitori_TorneixCategoria ( IN Nome varchar(30)) RETURNS TABLE(
	NomeSq varchar(30),
	IdTorneo integer,
	NomeCat varchar(30)

) AS 
$$  
declare elencoTornei cursor for (select Torneo.IdTorneo from Torneo where Torneo.NomeCat=Nome);
TorneoId integer;
risTorneo cursor for (select Punti_Torneo_Squadre.NomeSq,PuntiTot from Punti_Torneo_Squadre(TorneoId) where Fase='finale' );
risGirone cursor for (select Partecipante from Vincitore_Girone(TorneoId));
puntitot1 integer;
puntitot2 integer;															
NomeSquadra varchar(30);
NomeSquadra2 varchar(30);

BEGIN
	
If not(select squadre from Categoria where Categoria.NomeCat=Nome) then 
	RAISE EXCEPTION 'La categoria dell''evento è singola';
end if;
 delete from Vincitori_Tornei;
 

		OPEN elencoTornei;
 		FETCH elencoTornei into TorneoId;
	 	WHILE FOUND LOOP 
			if(select tipo from Torneo where Torneo.IdTorneo=TorneoId)='Girone all italiana' then									
				open risGirone;
				fetch risGirone	into NomeSquadra;
				while found loop
					Insert into Vincitori_Tornei
						values(NomeSquadra,TorneoId,Nome)	;										
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
							values(NomeSquadra,TorneoId,Nome);	
					else 
						if(puntitot2>puntitot1)then
							Insert into Vincitori_Tornei
							values(NomeSquadra2,TorneoId,Nome);	
														   
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

-- per un evento a squadre mostra quanti utenti per ogni squadra sono stati accettati
 CREATE OR REPLACE  FUNCTION Iscrizione_Utenti_Squadre ( IN eventoId integer) RETURNS TABLE(
	NomeSq varchar(30),
	QtaGiocatori bigint

) AS 
$$  
BEGIN
	
If not(select squadre from Categoria natural join Evento where IdEvento=eventoId) then 
	RAISE EXCEPTION 'La categoria dell''evento è singola';
end if;
return query																	   
 select Partecipa.NomeSq, count(distinct Username)
 from Iscrizione natural join Partecipa join Candidato using(Username, NomeSq)
 where IdEvento=eventoId and Qualità='giocatore' and Candidato.stato='accettato'
 group by Partecipa.NomeSq;																				  

END;
$$ 
LANGUAGE plpgsql ;

--elenca i vincitori di un girone di un torneo
--si ritengono vincitori di un girone i partecipanti che hanno conseguito più punti
CREATE OR REPLACE  FUNCTION Vincitore_Girone ( IN torneoId integer) RETURNS TABLE(
	Partecipante varchar(30)
) AS 
$$  
BEGIN
If (select tipo from Torneo where IdTorneo=torneoId)='Eliminazione Diretta' then 
		RAISE EXCEPTION 'La tipologia di torneo non contiene gironi';
	end if;

if(select Modalità from Torneo where IdTorneo=TorneoId)='squadre' then
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
--elenca gli utenti partecipanti ad un girone con i punti conseguiti

CREATE OR REPLACE  FUNCTION Risultati_Girone_Singolo ( IN TorneoS integer) RETURNS TABLE(
	Partecipante varchar(30),
	PuntiGirone integer
) AS 
$$  
Declare
Utente1 varchar(30);
eventigirone CURSOR FOR (select Evento.IdEvento 
									 from Evento
									 where IdTorneo=torneoS and fase='girone');
eventoId integer;
puntitot1 integer;
puntitot2 integer;																	   
Utente2 varchar(30);
risultati cursor for (select Punti.Username,Punti.Punti from Punti natural join Evento where Evento.IdEvento=eventoId);	
utente varchar(30);
BEGIN
	
	If (select tipo from Torneo where IdTorneo=TorneoS)='Eliminazione Diretta' then 
		RAISE EXCEPTION 'La tipologia di torneo non contiene gironi';
	end if;	
	
	if(select Modalità from Torneo where IdTorneo=TorneoS)='squadre' then
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

--elenca le squadre partecipanti ad un girone con i punti conseguiti(per ogni vittoria +3, pareggio +1, perdita +0)										   
CREATE OR REPLACE  FUNCTION Risultati_Girone_Squadre ( IN TorneoS integer) RETURNS TABLE(
	
	NomeSq varchar(30),
	PuntiGirone integer
) AS 
$$  
Declare
NomeSquadra varchar(30);
eventigirone CURSOR FOR (select Evento.IdEvento 
									 from Evento
									 where IdTorneo=torneoS and fase='girone');
eventoId integer;
risultati cursor for (select Punti_Evento_Squadre.NomeSq,PuntiTot from Punti_Evento_Squadre(eventoId));		
puntitot1 integer;
puntitot2 integer;																	   
NomeSquadra2 varchar(30);
squadra varchar(30);																						
BEGIN
	
	If (select tipo from Torneo where IdTorneo=TorneoS)='Eliminazione Diretta' then 
		RAISE EXCEPTION 'La tipologia di torneo non contiene gironi';
	end if;	
	if(select Modalità from Torneo where IdTorneo=TorneoS)='singolo' then
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



--per un torneo mostra le squadre/utenti iscritti che sono presenti nella vista "Medagliere" per la categoria del torneo
CREATE OR REPLACE  FUNCTION Partecipazione_Medagliere ( IN torneoS integer) RETURNS TABLE(
	partecipante varchar(30)
) AS 
$$  
BEGIN
	If (select Modalità from Torneo where IdTorneo=torneoS)='squadre' then 
		RETURN query (select NomeSq 
					 from Medagliere join Composto on Medagliere.Partecipante=Composto.NomeSq
					 where NomeCat=(select NomeCat from Torneo where IdTorneo=torneos) and IdTorneo=torneos and tipo='squadra');
	else
		return query(select Username 
					 from Medagliere join Registra on Medagliere.Partecipante=Registra.Username
					 where NomeCat=(select NomeCat from Torneo where IdTorneo=torneos) and IdTorneo=torneos and tipo='utente');
	end if;											   


END;
$$ 
LANGUAGE plpgsql ;


--dato un torneo di categoria singola ritorna la tabella contenente il resoconto delle partite per ogni fase
	CREATE OR REPLACE  FUNCTION Punti_Torneo_Singolo ( IN torneoS integer) RETURNS TABLE(
	IdEvento integer,
	Username varchar(30),
	PuntiTot integer,
	Fase varchar(10),
	DataEv timestamp
) AS 
$$  
BEGIN
	If (select Modalità from Torneo where IdTorneo=torneoS)='squadre' then 
		RAISE EXCEPTION 'La categoria dell''evento è a squadre';
	end if;	
 return query
 (select Punti.IdEvento,Punti.Username,Punti.Punti, Evento.Fase,Evento.DataEv
 from Punti natural join Evento 
 where IdTorneo=torneoS 
 group by Punti.Idevento,Evento.Fase,Punti.Username,Punti.Punti,Evento.DataEv
 order by Punti.IdEvento)
	union 
 (select Evento.IdEvento,Iscrizione.Username,0, Evento.Fase,Evento.DataEv
 from Punti right join Evento on (Punti.IdEvento=Evento.IdEvento) join Iscrizione on(Iscrizione.IdEvento=Evento.IdEvento)
 where IdTorneo=torneoS and Punti.Punti is null
 group by Evento.IdEvento,Evento.Fase,Iscrizione.Username,Evento.DataEv
 order by Evento.IdEvento);
	

END;
$$ 
LANGUAGE plpgsql ;


--dato un torneo a squadre ritorna la tabella contenente il resoconto delle partite per ogni fase

CREATE OR REPLACE  FUNCTION Punti_Torneo_Squadre ( IN torneoQ integer) RETURNS TABLE(
	IdEvento integer,
	NomeSq varchar(30),
	PuntiTot bigint,
	DataEv timestamp,
	Fase varchar(10)
	
) AS 
$$  
BEGIN

	If (select Modalità from Torneo where IdTorneo=torneoQ)='singolo' then 
		RAISE EXCEPTION 'La categoria dell''evento è a singolo';
	end if;								
	return query
( select Partecipa.IdEvento,Partecipa.NomeSq,SUM(Punti.Punti),Evento.DataEv,Evento.Fase
 from Punti join Candidato using(Username) join Partecipa on (Partecipa.NomeSq=Candidato.NomeSq and Punti.IdEvento=Partecipa.IdEvento)  join Evento on (Partecipa.IdEvento=Evento.IdEvento and Evento.IdTorneo=torneoQ)
 where  Candidato.stato='accettato'
 group by Partecipa.IdEvento,Partecipa.NomeSq,Evento.DataEv,Evento.Fase
 order by Evento.DataEv)																												
	union
 ( select Partecipa.IdEvento,Partecipa.NomeSq,0,Evento.DataEv,Evento.Fase
 from Punti right join Candidato using(Username) join Partecipa on (Partecipa.NomeSq=Candidato.NomeSq and Punti.IdEvento=Partecipa.IdEvento)  join Evento on (Partecipa.IdEvento=Evento.IdEvento and Evento.IdTorneo=torneoQ)
 where  Candidato.stato='accettato' and Punti.punti is null
 group by Partecipa.IdEvento,Partecipa.NomeSq,Evento.DataEv,Evento.Fase
 order by Evento.DataEv);
																													 
END;
$$ 
LANGUAGE plpgsql ;

--dato un evento a squadre ricava i punteggi delle squadre partecipanti
CREATE OR REPLACE  FUNCTION Punti_Evento_Squadre ( IN eventoId integer) RETURNS TABLE(
	NomeSq varchar(30),
	PuntiTot bigint

) AS 
$$  
BEGIN
				
If not(select squadre from Categoria natural join Evento where IdEvento=eventoId) then 
	RAISE EXCEPTION 'La categoria dell''evento è singola';											  
end if;
return query
 (select Candidato.NomeSq, SUM(Punti.Punti) as PuntiTot
 from Punti join Candidato using(Username) join Partecipa on (Partecipa.NomeSq=Candidato.NomeSq and Punti.IdEvento=Partecipa.IdEvento)
 where Punti.IdEvento=eventoId and Candidato.stato='accettato'
 group by Candidato.NomeSq)
 union
 --se i punti non sono ancora stati inseriti
 (select Candidato.NomeSq, 0 as PuntiTot
 from Punti right join Candidato using(Username) join Partecipa on (Partecipa.NomeSq=Candidato.NomeSq and Punti.IdEvento=Partecipa.IdEvento)
 where Punti.IdEvento=eventoId and Candidato.stato='accettato' and Punti.Punti is null
 group by Candidato.NomeSq);

END;
$$ 
LANGUAGE plpgsql ;


--modifica lo stato dell'iscrizione ad un evento
CREATE OR REPLACE  FUNCTION Stato_Iscrizione ( IN utente varchar(30), IN evento integer, IN statoI varchar(12)) RETURNS void AS 
$$  
BEGIN
	IF(statoI in ('confermato', 'rifiutato')) THEN
 		update Iscrizione
		set Stato=statoI
		where Iscrizione.Username=utente and Iscrizione.IdEvento=evento;
		RAISE NOTICE	'Iscrizione--> Il nuovo stato per (%, %) è: %', utente, evento, statoI;		
	ELSE 
		RAISE EXCEPTION 'Stato iscrizione non ammesso: %', statoI;
	END IF;
END;
$$ 
LANGUAGE plpgsql ;


-- modifica lo stato di candidatura ad una squadra, se la squadra è definitiva allora la candidatura viene rifiutata
CREATE OR REPLACE  FUNCTION Stato_Candidato ( IN utente varchar(30), IN Nomesquadra varchar(30), IN statoC varchar(12)) RETURNS void AS 
$$  
BEGIN
	IF(select StatoSq from Squadra where NomeSq=Nomesquadra)='definitiva' then 
			statoC='rifiutato';
		end if;
	IF(statoC in ('accettato', 'rifiutato')) THEN
 		update Candidato
		set stato=statoC
		where Candidato.Username=utente and Candidato.NomeSq=Nomesquadra;
		RAISE NOTICE	'Candidato--> Il nuovo stato per (%, %) è: %', utente, Nomesquadra, statoC;		
	ELSE 
		RAISE EXCEPTION 'Stato non ammesso: %', statoC;
	END IF;
END;
$$ 
LANGUAGE plpgsql ;

-- modifica lo stato della squadra in definitiva												
CREATE OR REPLACE  FUNCTION stato_squadra_definitiva (  IN squadra varchar(30)) RETURNS void AS 
$$  
DECLARE giocatori integer:=(select count(*) from Candidato where NomeSq=squadra and stato='accettato');
BEGIN
	IF(select StatoSq from Squadra where NomeSq=squadra)='temporanea' then
		RAISE EXCEPTION 'Non si può cambiare lo stato di una squadra temporanea: %', squadra;
	end if;

	IF(select GiocMin from Squadra where NomeSq=squadra )=<giocatori THEN
 		update Squadra
		set StatoSq='definitiva'
		where Squadra.NomeSq=squadra;
		RAISE NOTICE	'Squadra--> Il nuovo stato per % è: definitiva', squadra;		
	ELSE 
		RAISE EXCEPTION 'non ci sono abbastanza candidature accettate per la squadra: %', squadra;
	END IF;
END;
$$ 
LANGUAGE plpgsql ;


--modifica lo stato della squadra in 'in formazione' solo se le candidature accettate non sono il numero massimo consentito, in tal caso tutte le candidature rifiutate fin'ora vengono eliminate per poter permettere nuove candidature per la squadra							
CREATE OR REPLACE  FUNCTION stato_squadra_In_Formazione (  IN nome varchar(30)) RETURNS void AS 
$$  
DECLARE giocatori integer:=(select count(*) from Candidato where NomeSq=nome and stato='accettato');
candidaturerif CURSOR FOR (select Username from Candidato where NomeSq=nome and stato<>'accettato');
candidato varchar(30);																			 
BEGIN
	IF(select StatoSq from Squadra where NomeSq=nome)='temporanea' then
		RAISE EXCEPTION 'Non si può cambiare lo stato di una squadra temporanea: %', nome;
	end if;

	IF(select GiocMax from Squadra where NomeSq=nome )>giocatori THEN
 		update Squadra
		set StatoSq='in formazione'
		where Squadra.NomeSq=nome;
		RAISE NOTICE	'Squadra--> Il nuovo stato per % è: in formazione', nome;
		OPEN candidaturerif;
 		FETCH candidaturerif into candidato;
	 	WHILE FOUND LOOP 
 			Delete from Candidato as C
			where C.username=candidato and C.NomeSq=nome and stato<>'accettato';
 			FETCH candidaturerif into candidato;
 		END LOOP;	
 		CLOSE candidaturerif;
	ELSE 
		RAISE EXCEPTION 'ci sono abbastanza candidature accettate per la squadra: %', nome;
	END IF;
END;
$$ 
LANGUAGE plpgsql;

--modifica lo stato di una candidatura in 'accettato' per una squadra
CREATE OR REPLACE  FUNCTION Candidato_accettato ( IN utente varchar(30), IN squadra varchar(30)) RETURNS void AS 
$$  
BEGIN
perform Stato_Candidato(utente,squadra,'accettato');															
END;
$$ 
LANGUAGE plpgsql ;


--modifica lo stato di una candidatura in 'rifiutato' per una squadra
CREATE OR REPLACE  FUNCTION Candidato_rifiutato ( IN utente varchar(30), IN squadra varchar(30)) RETURNS void AS 
$$  
BEGIN
perform	Stato_Candidato(utente,squadra,'rifiutato');
END;
$$ 
LANGUAGE plpgsql ;


--inserisce una candidatura accettata per una squadra con ruolo giocatore
CREATE OR REPLACE  FUNCTION Inserimento_Candidato_accettato ( IN utente varchar(30), IN squadra varchar(30)) RETURNS void AS 
$$  
BEGIN
	Insert into Candidato
	values(utente,squadra,'accettato','giocatore');
END;
$$ 
LANGUAGE plpgsql ;


--elenca i ruoli dei giocatori accettati per una squadra
CREATE OR REPLACE  FUNCTION Ruoli_Accettati ( IN NomeSquadra varchar(30)) RETURNS TABLE(
	Username varchar(30),
	ruolo varchar(30)
) AS 
$$  
BEGIN	
 return query
 select Candidato.Username,Candidato.ruolo
 from Candidato 
 where Candidato.NomeSq=NomeSquadra and Candidato.stato='accettato';

END;
$$ 
LANGUAGE plpgsql ;


--elenca i ruoli delle candidature in attesa di valutazione per una squadra
CREATE OR REPLACE  FUNCTION Ruoli_NonValutati ( IN NomeSquadra varchar(30)) RETURNS TABLE(
	Username varchar(30),
	ruolo varchar(30)
) AS 
$$  
BEGIN			
 return query
 select Candidato.Username,Candidato.ruolo
 from Candidato 
 where Candidato.NomeSq=NomeSquadra and Candidato.stato='non valutato';

END;
$$ 
LANGUAGE plpgsql ;



--mostra i ruoli dei giocatori in attesa di valutazione meno quelli presenti tra quelli già accettati
CREATE OR REPLACE  FUNCTION Ruoli_Mancanti ( IN NomeSquadra varchar(30)) RETURNS TABLE(
	Username varchar(30),
	ruolo varchar(30)
) AS 
$$  
BEGIN	
return query
  select Candidato.Username, Candidato.ruolo
  from Candidato
  where Candidato.NomeSq=NomeSquadra and Candidato.ruolo in(select distinct Ruoli_NonValutati.ruolo
 										from Ruoli_NonValutati(NomeSquadra) 
 										except 
 										select distinct Ruoli_Accettati.ruolo
 										from Ruoli_Accettati(NomeSquadra));

END;
$$ 
LANGUAGE plpgsql ;
