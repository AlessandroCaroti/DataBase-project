--INTERROGAZIONI SEMPLICI

set search_path to 'UniGenovaSocialSport';

--1. determina l'impianto disponibile in una certa fascia oraria meno utilizzato
 CREATE OR REPLACE  FUNCTION Impianti_Disponibili ( IN giorno DATE, IN oraInizio Time, IN oraFine Time ) RETURNS Table( NomeImp varchar(50)) AS 
$$  

BEGIN
return query
	select Programma.NomeImp
	from Programma 
	where Utilizzo=(select MIn(P.Utilizzo) from (select Programma.NomeImp,Programma.Mese, SUM(Programma.Utilizzo) as Utilizzo
												from Programma
												group by Programma.NomeImp,Programma.Mese,Programma.Categoria) as P left join (select E.NomeImp
															    from Evento as E natural join Esito
																where Date(E.DataEv)=giorno and ((E.DataEv)::time between oraInizio and oraFine or (E.DataFine)::time between oraInizio and oraFine ))
																as ImpDisp on (P.NomeImp<>ImpDisp.NomeImp)
																where P.mese=date_part( 'month', giorno));
																	   

END;
$$ 
LANGUAGE plpgsql;


--2. restituisce una tabella contenente gli eventi aperti che si svolgeranno nell'impianto e il numero di giocatori disponibili
CREATE OR REPLACE  FUNCTION Eventi_Aperti ( IN Nome varchar(50)) RETURNS TABLE(
	IdEvento integer,
	NomeCat varchar(30),
	NumDisponibili bigint

) AS 
$$  
BEGIN
return query 
 SELECT Evento.IdEvento, Categoria.NomeCat,  Categoria.NumGC -count(Iscrizione.Username) as NumDisponibili
	From  Iscrizione  right Join Evento on (Iscrizione.IdEVento=Evento.IdEvento and Iscrizione.Stato='confermato') Join Categoria on Evento.NomeCat=Categoria.NomeCat
	where Evento.NomeImp=Nome and Evento.Stato='aperto'
	group by Evento.IdEvento, Categoria.NomeCat, Categoria.NumGC;
END;
$$ 
LANGUAGE plpgsql ;



--3. mostra la lista degli utenti iscritti ad un evento che hanno più partite disputate della stessa categoria dell'evento
CREATE OR REPLACE  FUNCTION Utenti_Esperti ( IN eventoId integer) 
RETURNS TABLE(
	Username varchar(30)
) AS 
$$ 
declare 
nomecategoria varchar(30):=(select NomeCat from Evento where IdEvento=eventoId);
BEGIN
 
	RETURN query 
		select Iscrizione.Username
		from Iscrizione Join Evento on Iscrizione.IdEvento=Evento.IdEvento	
		where Evento.NomeCat=nomecategoria and  Iscrizione.Qualità='giocatore' and Iscrizione.Stato='confermato' and Evento.Stato='chiuso' and Iscrizione.Username in (select iscrizione.Username from iscrizione where IdEvento=eventoId) 
		group by Iscrizione.Username, Evento.NomeCat
		having count(*)= (select max(num)
					from (select I.Username, count(*) as num 
						  from Iscrizione I Join Evento E on I.IdEvento=E.IdEvento	
						  where E.NomeCat=nomecategoria and  I.Qualità='giocatore' and I.Stato='confermato' and E.Stato='chiuso' and I.Username in (select iscrizione.Username from iscrizione where IdEvento=eventoId) 
						  group by I.Username, E.NomeCat) as aux
					  );
END;
$$ 
LANGUAGE plpgsql ;

--4. data una categoria mostra gli utenti sempre accettati o sempre rifiutati per eventi di quella categoria
CREATE OR REPLACE  FUNCTION Giocatori_acc_rif ( IN Cat varchar(30)) RETURNS TABLE(
	Username varchar(30),
	tipo  text

) AS 

$$  
BEGIN
    return query(
	select I.Username, 'accettato'
	from Iscrizione I Join Evento on I.IdEvento=Evento.IdEvento
	where Evento.NomeCat=Cat and I.Stato='confermato' and I.Qualità='giocatore'
	group by I.Username
	having count(*)=(select count(*) from Iscrizione Join Evento using(IdEvento)
		where Evento.NomeCat=Cat and Iscrizione.Qualità='giocatore' and Iscrizione.Username=I.Username )
	Union
	select I.Username, 'rifiutato'
	from Iscrizione I Join Evento on I.IdEvento=Evento.IdEvento
	where Evento.NomeCat=Cat and I.Stato='rifiutato' and I.Qualità='giocatore'
	group by I.Username
	having count(*)=(select count(*) from Iscrizione Join Evento using(IdEvento)
		where Evento.NomeCat=Cat and Iscrizione.Qualità='giocatore' and Iscrizione.Username=I.Username ));
END;
$$ 
LANGUAGE plpgsql ;

--5. gli eventi ancora aperti previsti per una determinata giornata organizzati da utenti che hanno organizzato più di un evento della stessa categoria

CREATE OR REPLACE  FUNCTION Eventi_Aperti_Data ( IN giorno DATE ) RETURNS TABLE(
	IdEvento integer
)
 AS 
$$  
BEGIN
 Return query(	Select E.IdEvento
	from Evento as E 
	where E.Stato='aperto' and Date(E.DataEv)=giorno and E.IdTorneo is null and Exists (select Evento.IdEvento
																					 from Evento
																					 where Evento.Organizzatore=E.Organizzatore and Evento.NomeCat=E.NomeCat and Evento.Stato='chiuso' and E.IdEvento<>Evento.IdEvento
																					 ));
END;
$$ 
LANGUAGE plpgsql ;

--6. Gli utenti candidati ad una certa squadra che abbiano partecipato ad eventi di tutte le categorie 

CREATE OR REPLACE  FUNCTION Candidati_Esperti ( IN sqNome varchar(30) ) RETURNS TABLE(
	Username varchar(30)
)
 AS 
$$  
BEGIN
return query
		select Cd.Username
		  from Candidato as Cd
		  where Cd.NomeSq=sqNome and  NOT EXISTS(select *
						   from Categoria as Ca
						   where NOT EXISTS(select * 
						  		from Evento Join Iscrizione using (IdEvento)
						  		where Evento.Stato='chiuso' and Iscrizione.Stato='confermato' and Iscrizione.Username=Cd.Username and NomeCat=Ca.NomeCat ));
END;
$$ 
LANGUAGE plpgsql ;






--INTERROGAZIONI D'ANALISI


--Torneo di più successo a livello di partecipazione (da completare)
select IdTorneo
		from(select IdTorneo, count(Composto.NomeSq) as num
    	from Composto
		group by IdTorneo 
		UNION
		select IdTorneo, count(Registra.Username) as num
		from Registra
		group by IdTorneo)as maxt
where maxt.num=(select  max(num) 
				from (select IdTorneo, count(Composto.NomeSq) as num
    			from Composto
				group by IdTorneo 
				UNION
				select IdTorneo, count(Registra.Username) as num
				from Registra
				group by IdTorneo) as maxt);


--Categoria/e in cui sono attivi tutti i corsi di laurea 
select  nomecat
from iscrizione join evento using(idEvento)
join utente using(username)
where iscrizione.stato='confermato'
group by nomecat
having count(distinct nomecorso)=(select count(distinct nomecorso)
								  from corso);



--la percentuale di femmine che hanno partecipato ad almeno 5 eventi su il numero totale di utenti che hanno partecipato ad almeno 5 eventi
			  
	select cast(nF as decimal) /nTot*100
	from (select count(username) as nF
			from Utente
			where username in(select username
							  from Iscrizione join Utente using(username) 
							  where genere='Femmina' and stato='confermato'
							  group by username
							  having count(idEvento) >=5)) as F,(select count(username) as nTot
																from Utente
																where username in(select username
																from Iscrizione join Utente using(username) 
																where stato='confermato'
																group by username
																having count(idEvento) >=5)) as Tot;

--Nomi giocatori con età >= 20 che hanno partecipato ad almeno 4 eventi
select nome,cognome,count(idEvento)
from utente join iscrizione using(username)
where stato='confermato' and (extract(year from current_date)-annon)>=20
group by iscrizione.username,nome, cognome
having count(idEvento) >=4;

--data in cui ci sono stati più eventi della stessa categoria
select nomecat,cast(dataev as date) as d
from evento E
group by d, nomecat
having count(idevento)= ( select  max(numEv) from
							(select cast(dataev as date) as da, count(idevento) as numEv
								from evento
							 	where nomecat=E.nomecat
							 	group by da
							) as maxev
						);
--Per ogni Categoria e corso di studi numero di femmine che hanno partecipato almeno a un evento

select nomeCat, nomecorso, count(Iscrizione.username) as NumFemmine
from evento join iscrizione on evento.idevento=iscrizione.idevento
join utente on utente.username=iscrizione.username
where Iscrizione.stato='confermato' and genere='Femmina'
group by nomeCat, nomecorso
having count(evento.idevento) >= 1;


--username dell'utente/i che ha/hanno partecipato a più partite 
select partite.username, sum(qta) as totpartite
from utente natural join partite
group by  partite.username
having sum(qta)= ( select max(partite)
				   from ( select  sum(qta) as partite 
						  from utente natural join partite
						  group by username
						) as maxP
				  );


--Categoria con maggior numero di partite
select nomecat
from evento
group by nomecat
having count(*)=(select max(maxp)
				  from (select count(*) as maxp
						from evento
						group by nomeCat
						) as aux);

-- media partite giocate dai giocatori per ogni corso

select nomecorso, avg(sumQta)
from (select nomecorso, username, sum(qta) as sumQta
	  from partite natural join utente
	 group by utente.nomecorso, username) aux
group by nomecorso;

-- utenti che per ogni età hanno partecipato a più partite
select U.username, U.annon, sum(qta) as maxPartite
from partite join utente U using(username)
group by U.username
having sum(qta)= (	select  max(totpart) 
				  	from( select username,annon, sum(qta) as totpart 
								from utente natural join partite
								group by annon, username
							) as maxt
				  	where U.annon=annon
					group by maxt.annon
					)
order by U.annon desc;


-- squadre che hanno partecipato a eventi  di ogni categoria a squadre
select  NomeSq
from partecipa join evento using(idevento)
group by NomeSq
having count(distinct nomecat) = (select count( nomecat)
											from Categoria
											where not squadre);



--determinare	per	ogni	categoria	e	corso	di	studi la	frazione	di	partecipanti	a	eventi	di	
--quella	categoria	di	genere	femminile	sul	totale	dei	partecipanti	provenienti	da	quel	
--corso	di	studi

select nomecat, nomecorso, (cast(count( distinct username) as decimal(5,2))/( select count( distinct username) 
										      from iscrizione join evento using(idevento)
										   	  join utente using(username)
										   	  where Iscrizione.stato='confermato' 
											  and U.nomecorso=nomecorso and E.nomecat=nomecat
										   ))*100 as PercentualeF
from  iscrizione join evento E using(idevento)
join utente U using(username)
where Iscrizione.stato='confermato' and Genere='Femmina'
group by nomecat, U.nomecorso
order by nomecorso, nomecat desc;



--utenti che hanno fatto parte di una squadra come giocatore e hanno anche partecipato a tornei singoli
select username
from Candidato Cand
where stato='accettato' and Ruolo in('giocatore','capitano')
and EXISTS(select *
		  from Registra
		   where Cand.username=username);



--giocatore più vecchio  ad aver giocato sia un torneo da singolo che aver preso parte di una squadra

select username, annon
from utente  join iscrizione using(username)
where iscrizione.stato='confermato' and annon=(select min(annon) 
													 	from utente join iscrizione using(username)join registra using(username)
											   )
intersect
select username, annon
from registra join utente using(username);




--Per Ogni corso, la categoria alla quale prefereiscono iscriversi gli utenti di quel corso, e la categoria alla quale preferiscono non iscriversi
select U.nomecorso, E.nomecat, 'Più Scelta' as Meno_più_Scelta
from iscrizione  join evento E on E.idevento=iscrizione.idevento
join utente U on U.username=iscrizione.username
group by U.nomecorso,E.nomecat
having count(E.nomeCat)= (select max(maxCat) from(
									select count(Iscrizione.IdEvento) as maxCat 
							 		from iscrizione join utente using(username)
							  		join evento using(idEvento)
									where U.nomecorso=nomecorso
									group by nomecorso, nomecat		
								)as maxT
							 )
union
select U.nomecorso, E.nomecat,'Meno Scelta'
from iscrizione  join evento E on E.idevento=iscrizione.idevento
join utente U on U.username=iscrizione.username
group by U.nomecorso,E.nomecat
having count(E.nomeCat)= (select min(minCat) from(
									select count(Iscrizione.IdEvento) as minCat 
							 		from iscrizione join utente using(username)
							  		join evento using(idEvento)
									where U.nomecorso=nomecorso
									group by nomecorso, nomecat		
								)as minT
							 )
order by nomecorso desc;

-- per ogni corso, il numero di utenti nati a genova e hanno fatto l'iscrizione ad eventi sia singoli che a squadre
select iscr.nomecorso,count(iscr.username) as num_iscritti
from(
	select  utente.nomecorso, utente.username
	from evento join iscrizione on evento.idevento=iscrizione.idevento
	join utente on utente.username=iscrizione.username
	join Categoria on evento.nomecat=Categoria.nomecat
	where luogon='Genova' and iscrizione.stato in('confermato','rifiutato') and Categoria.squadre
	intersect
	select  utente.nomecorso, utente.username
	from evento join iscrizione on evento.idevento=iscrizione.idevento
	join Categoria on evento.nomecat=Categoria.nomecat
	join utente on utente.username=iscrizione.username
	where  not categoria.squadre and utente.luogon='Genova' and iscrizione.stato in('confermato','rifiutato')
	) as iscr
group by iscr.nomecorso;




--Per ogni corso, il numero di utenti che non si è iscritto a nessun evento e non si è candidato per nessuna squadra
select U.nomecorso, count(U.username)
from Iscrizione right outer join utente U on U.username=Iscrizione.username
where iscrizione.* is null and U.username  not in( select username
												  	from Candidato where
												  	U.username=Candidato.username)
group by U.nomecorso;

--numero utenti per ogni corso e categoria che non sono mai stati arbitri
select nomeCorso, count(username) as numU
from utente
group by nomeCorso

except

select nomeCorso, count(username) as numU
from iscrizione join utente using(username)
where stato='confermato' and qualità='arbitro'
group by nomeCorso;



-- Numero di utenti, per ogni corso, che sono stati capitani in almeno un evento per ogni categoria a squadre

select U.nomeCorso, count(Candidato.username)
from Candidato join utente U on Candidato.username=U.username
where Candidato.stato='accettato'
and  (select count(distinct nomecat)
		from Partecipa join Candidato on Candidato.nomesq=Partecipa.nomeSq
		join evento on evento.idevento=partecipa.idevento
 		where U.username=Candidato.username and ruolo='capitano'
	  	group by Candidato.username
		)=(select count(nomecat) 
	   		from categoria 
   				where Squadre)
   
group by U.nomeCorso;

--Determinare a quanti eventi di ogni categoria si è iscritto ciascun utente
select iscrizione.username, evento.nomecat, count(iscrizione.idevento)
from iscrizione
join evento on evento.idevento=iscrizione.idevento
group by iscrizione.username, evento.nomecat;

-- Percentuale di eventi a cui nessuno si è iscritto
select ( (cast(count(evento.idevento) as decimal(5,2))/(select count (idevento) from evento))*100)
													   as eventi_nonIscritti, '%' as Symbol
from iscrizione
right outer join evento on evento.idevento=iscrizione.idevento
where iscrizione.* is null;




