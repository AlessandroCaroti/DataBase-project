set search_path to 'UniGenovaSocialSport';

--1) determinare gli eventi non appartenenti a tornei ancora APERTI in un certo lasso di tempo
CREATE OR REPLACE  FUNCTION Eventi_Aperti () RETURNS TABLE(
	IdEvento integer,
	NomeSport varchar(30),
	PostiRimasti bigint

) AS
$$
  BEGIN
  return query
    SELECT Evento.idE, Sport.NomeSport, Sport.NumGiocatori -count(Iscrive.Username) as PostiRimasti
    FROM Iscrive  right Join Evento on (Iscrive.IdEvento=Evento.IdE and Iscrive.Stato='CONFERMATO') natural Join Sport
    where (evento.data>CURRENT_TIMESTAMP) AND evento.stato='APERTO' AND Evento.IdTorneo isnull
   	group by Evento.IdE, Sport.NomeSport, Sport.NumGiocatori;
  END;
  $$
LANGUAGE plpgsql ;

/*
select *
    from Eventi_Aperti();
*/
select *
from evento;

--2)Le squadre che accettano iscrizioni e il numero di posti che sono ancora disponibili
  SELECT aux.nomesq, (maxgiocatori - parecipanti) as maxPostiLiberi, (mingiocatori - parecipanti) as minPostiLiberi
  FROM squadra join (SELECT count(*) as parecipanti, nomesq
                      FROM candida
                      WHERE stato = 'ACCETTATO'
                      group by nomesq) as aux ON (squadra.nomesq=aux.nomesq)
  WHERE stato='RECLUTAMENTO';



--3)determinare gli impianti disponibili in una certa data e fascia oraria che siano meno utilizzati
 CREATE OR REPLACE  FUNCTION Impianti_Disponibili ( IN giorno DATE, IN oraInizio Time, IN oraFine Time ) RETURNS Table( NomeImp varchar(50)) AS
$$

BEGIN
return query
	select aux.Struttura
	from (select mese, struttura, sum(utilizzo) as Utilizzo
        from programma
		  where programma.mese=date_part( 'month', giorno)
        group by mese, struttura) as aux
	where Utilizzo=(select MIn(P.Utilizzo) from (select Programma.Struttura,Programma.Mese, SUM(Programma.Utilizzo) as Utilizzo
												from Programma
												group by Programma.Struttura,Programma.Mese,Programma.Sport) as P left join (select E.NomeStruttura
															    from Evento as E natural join Esito
																where cast(E.Data as DATE)=giorno and ((E.Data)::time between oraInizio and oraFine or (E.DataFine)::time between oraInizio and oraFine ))
																as ImpDisp on (P.Struttura<>ImpDisp.nomestruttura)
																where P.mese=date_part( 'month', giorno))
																group by aux.Struttura;
END;
$$
LANGUAGE plpgsql;

/*
Select *
From Impianti_Disponibili ( '2022-3-2', '10:00', '15:00' );
*/


--4)determinare per i giocatori candidati a un certo evento quelli che hanno un numero di partite disputate nella categoria dell’evento più alta.
CREATE OR REPLACE  FUNCTION Giocatori_migliori   ( IN eventoId integer)
RETURNS TABLE(
	Username varchar(30)
) AS
$$
declare
nomecategoria varchar(30):=(select NomeSport from Evento where IdE=eventoId);
BEGIN

	RETURN query
		select Iscrive.Username
		from Iscrive Join Evento on Iscrive.IdEvento=Evento.IdE
		where Evento.NomeSport=nomecategoria and  Iscrive.Ruolo='GIOCATORE' and Iscrive.Stato='ACCETTATO' and Evento.Stato='CHIUSO' and Iscrive.Username in (select Iscrive.Username from Iscrive where IdEvento=eventoId)
		group by Iscrive.Username, Evento.NomeSport
		having count(*)= (select max(num)
					from (select I.Username, count(*) as num
						  from Iscrive I Join Evento E on I.IdEvento=E.IdE
						  where E.NomeSport=nomecategoria and  I.Ruolo='GIOCATORE' and I.Stato='ACCETTATO' and E.Stato='CHIUSO' and I.Username in (select Iscrive.Username from Iscrive where IdEvento=eventoId)
						  group by I.Username, E.NomeSport) as aux
					  );
END;
$$
LANGUAGE plpgsql ;


Select *
From Giocatori_migliori ( 130 );



--5)Tabella contenente gli eventi aperti che si svolgeranno nella struttura data e il numero di giocatori disponibili
CREATE OR REPLACE  FUNCTION Eventi_Aperti ( IN Nome varchar(50)) RETURNS TABLE(
	IdEvento integer,
	NomeCat varchar(30),
	NumDisponibili bigint

) AS
$$
BEGIN
return query
 SELECT Evento.IdE, Sport.NomeSport,  Sport.NumGiocatori -count(Iscrive.Username) as NumDisponibili
	From  Iscrive  right Join Evento on (Iscrive.IdEVento=Evento.IdE and Iscrive.Stato='ACCETTATO') Join Sport on Evento.NomeSport=Sport.nomeSport
	where Evento.NomeStruttura=Nome and Evento.Stato='APERTO'
	group by Evento.IdE, Sport.NomeSport, Sport.NumGiocatori;
END;
$$
LANGUAGE plpgsql ;

/*
select *
from Eventi_Aperti(CAST('A.S.D Pink Volley Genova' AS VARCHAR(50)));
*/



--6A)Data uno sport mostra gli utenti sempre accettati
CREATE OR REPLACE  FUNCTION Giocatori_accettati ( IN nomeSprt varchar(30)) RETURNS TABLE(
	Username varchar(30)
) AS

$$
BEGIN
return query
    select I.Username
    from Iscrive I Join Evento on I.IdEvento=Evento.IdE
    where Evento.NomeSport=nomeSprt and I.Stato='ACCETTATO' and I.Ruolo='GIOCATORE'
    group by I.Username
    having count(*)=(select count(*) from Iscrive Join Evento on (Iscrive.IdEvento=Evento.idE)
        where Evento.NomeSport=nomeSprt and Iscrive.Ruolo='GIOCATORE' and Iscrive.Username=I.Username );
END;
$$
LANGUAGE plpgsql;

/*
select *
from Giocatori_accettati(CAST('sport000' AS VARCHAR(30)));
*/

--6B)Data uno sport mostra gli utenti sempre rifiutati
CREATE OR REPLACE  FUNCTION Giocatori_rifiutati ( IN nomeSprt varchar(30)) RETURNS TABLE(
	Username varchar(30)
) AS

$$
BEGIN
    return query(
        select I.Username
        from Iscrive I Join Evento on I.IdEvento=Evento.IdE
        where Evento.NomeSport=nomeSprt and I.Stato='RIFIUTATO' and I.Ruolo='GIOCATORE'
        group by I.Username
        having count(*)=(select count(*) from Iscrive Join Evento on (Iscrive.IdEvento=Evento.idE)
            where Evento.NomeSport=nomeSprt and Iscrive.Ruolo='GIOCATORE' and Iscrive.Username=I.Username )
    );
END;
$$
LANGUAGE plpgsql;

/*
select *
from Giocatori_rifiutati(CAST('sport000' AS VARCHAR(30)));
*/

--6C)Data uno sport mostra gli utenti che sono stati arbitro almeno una volta
CREATE OR REPLACE  FUNCTION Utenti_arbitri ( IN nomeSprt varchar(30)) RETURNS TABLE(
	Username varchar(30)
) AS

$$
BEGIN
    return query(
        select I.Username
        from Iscrive I Join Evento on I.IdEvento=Evento.IdE
        where Evento.NomeSport=nomeSprt and I.Stato='ACCETTATO' and I.Ruolo='ARBITRO'
        group by I.Username
    );
END;
$$
LANGUAGE plpgsql;

/*
select *
from Utenti_arbitri(CAST('sport003' AS VARCHAR(30)));
*/