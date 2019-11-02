set search_path to 'UniGenovaSocialSport';

--1) Per ogni sport determinare gli utenti con più punti, gli sport senza partite vengono ignorati
SELECT NomeSport, username, puntiTot
FROM (SELECT username, sum(punti.punti) as puntiTot, Evento.NomeSport
      FROM Punti JOIN Evento on (punti.idevento=Evento.ide)
      GROUP BY username, NomeSport) as aux1
    where puntiTot=(SELECT max(aux.puntiTot) as maxPunti
      FROM (SELECT NomeSport, sum(punti.punti) as puntiTot
            FROM Punti JOIN Evento on (punti.idevento=Evento.ide)
            GROUP BY username, NomeSport) as aux
            where aux.nomesport=aux1.nomesport
      GROUP BY NomeSport)
	  ORDER BY NomeSport ASC; 

--2) Determinare il torneo a SQUADRA di più successo (in termini di partecipazione)
SELECT idt AS IdTorneo, count(distinct (username)) as num_Partecipanti
FROM Torneo JOIN Composto on (torneo.idt=composto.idtorneo)
            JOIN (SELECT idtorneo, username
                  FROM composto NATURAL JOIN candida
                  WHERE candida.stato='ACCETTATO') as aux on (torneo.idt=aux.idtorneo)
WHERE torneo.modalità='SQUADRA'
GROUP BY torneo.idt;

--2.2)determinare il torneo più “ricco” in termini di diverse attività proposte(più eventi per torneo).
SELECT idtorneo, count(ide) as maxEventi
FROM evento
group by idtorneo
having count(ide) =  (SELECT max(n)
                      FROM (SELECT count(ide) as n
                            FROM evento
							WHERE evento.IdTorneo IS NOT NULL
                            group by idtorneo) as i);

--3) Determinare le categorie in cui sono attivi tutti i corsi di laurea.
SELECT nomesport
FROM iscrive JOIN evento on (iscrive.idevento=evento.ide)
JOIN utente USING(username)
WHERE iscrive.stato='ACCETTATO'
GROUP BY nomesport
HAVING count(distinct nomecorso)=(SELECT count(distinct nomecorso)
								                  FROM corsodistudi);

--4) Forum con maggior numero di post
SELECT forum.nomecorso, forum.nomesport, count(post.id) as NumPost
FROM forum JOIN post on (post.nomeforum = forum.nomef)
GROUP BY forum.nomecorso, forum.nomesport
HAVING count(post.id) = ( SELECT max(numPost)
                          FROM (SELECT count(post.id) as numPost
                                FROM post JOIN forum on (post.nomeforum = forum.nomef)
                                GROUP BY forum.nomecorso, forum.nomesport) as nnnP);

--5) Media partite giocate dai giocatori per ogni corso(DA RIGUARDARE)
SELECT nomecorso, avg(sumQta)
FROM (SELECT nomecorso, sum(quantità) as sumQta
	  FROM partitegiocate NATURAL JOIN utente
	 GROUP BY utente.nomecorso, username) aux
GROUP BY nomecorso;

--6) squadre che hanno partecipato a ogni torneo a squadre
SELECT composto.nomesq
FROM torneo JOIN composto on torneo.idt = composto.idtorneo
GROUP BY nomesq
HAVING count(idt)=(SELECT count(torneo.idt)
                    FROM torneo
                    WHERE modalità='SQUADRA');

--7) Le strutture più utilizzate per ogni sport
SELECT ev.nomesport, ev.nomestruttura, count(ev.ide)
FROM evento as ev
GROUP BY nomesport, nomestruttura
HAVING count(ev.ide)=(SELECT max(numE)
                          FROM (SELECT count(evento.ide) as numE
                          FROM evento
                          WHERE evento.nomesport = ev.nomesport
                          GROUP BY nomesport, nomestruttura) as nnnE);

--8) Determinare per ogni corso di studi la categoria in cui il corso di studi è più attivo
SELECT u.nomecorso, evento.nomesport, count(*)
FROM utente as u NATURAL JOIN Iscrive
            JOIN evento on iscrive.idevento = evento.ide
WHERE iscrive.stato = 'ACCETTATO'
GROUP BY u.nomecorso, evento.nomesport
HAVING count(*) = (SELECT max(n)
                    FROM (SELECT count(*) as n
                          FROM utente NATURAL JOIN Iscrive
                                      JOIN evento on iscrive.idevento = evento.ide
                          WHERE iscrive.stato = 'ACCETTATO' AND utente.nomecorso = u.nomecorso
                          GROUP BY utente.nomecorso, evento.nomesport) as nnn);

--9) Determinare per ogni corso di studi la sport in cui il corso ha maggior successo sportivo (ha più punti)
SELECT u.nomecorso, evento.nomesport, sum(punti.punti)
FROM utente as u NATURAL JOIN Punti
            JOIN evento on Punti.idevento = evento.ide
GROUP BY u.nomecorso, evento.nomesport
HAVING sum(punti.punti) = (SELECT max(n)
                    FROM (SELECT sum(punti.punti) as n
                          FROM utente NATURAL JOIN Punti
                                      JOIN evento on Punti.idevento = evento.ide
                          WHERE utente.nomecorso = u.nomecorso
                          GROUP BY utente.nomecorso, evento.nomesport) as nnn) AND sum(punti.punti) <> 0;

--10) Età media dei giocatori per ogni sport
SELECT nomesport, avg(EXTRACT(YEAR FROM CURRENT_DATE) - utente.annonascita)
FROM utente NATURAL JOIN Iscrive
            JOIN evento on iscrive.idevento = evento.ide
GROUP BY evento.nomesport;

--11) Nome e Cognome dell'utente che ha partecipato a più partite
SELECT u.nome, u.cognome, count(idevento)
FROM utente u NATURAL JOIN iscrive
WHERE stato = 'ACCETTATO'
GROUP BY u.username
HAVING count(idevento) = (SELECT max(numP)
                          FROM (SELECT count(idevento) as numP
                                FROM iscrive
                                WHERE stato = 'ACCETTATO'
                                GROUP BY username) as inP);



--12) Sport con maggior numero di partite
SELECT nomeSport, count(*)
FROM evento
GROUP BY evento.nomesport
HAVING count(*) = (SELECT max(n)
                    FROM (SELECT count(*) as n
                          FROM evento
                          GROUP BY evento.nomesport) as aux);

--13) Per ogni corso, il numero di utenti che non si sono iscritti a nessun evento e non si sono candidati a nessuna squadra
SELECT utente.username
FROM utente
EXCEPT
     (SELECT username
      FROM Iscrive
      union
      SELECT username
      FROM candida);


--14) Numero di utenti per ogni corso che non sono mai stati arbitri
select nomecorso, count(aux1.username)
from (SELECT username
FROM utente EXCEPT (SELECT username
        FROM iscrive
        WHERE stato='ACCETTATO' AND ruolo = 'ARBITRO')) as aux1 join utente on (aux1.username=utente.username)
group by nomecorso;

--15) Numero utenti per ogni corso che sono stati albitri
SELECT nomecorso, count(username)
FROM utente NATURAL JOIN (SELECT username
                          FROM utente
                          EXCEPT (SELECT username
                                  FROM iscrive
                                  WHERE stato = 'ACCETTATO' AND ruolo = 'ARBITRO')) as uuiu
GROUP BY utente.nomecorso;

--16) Percentuale di eventi per sport a cui nessun utenete si è iscritto
SELECT nomesport, num_eventi_per_sport, num_Iscrizioni, (num_eventi_per_sport/num_Iscrizioni) as percentuale
FROM (SELECT nomesport, count(*) as num_eventi_per_sport
      FROM evento
      GROUP BY nomesport) as nneps JOIN ( SELECT ide, nomesport, count(username) as num_Iscrizioni
                                          FROM iscrive JOIN evento on iscrive.idevento = evento.ide
                                          GROUP BY ide, nomesport
                                          HAVING count(username) = 0
                                          ORDER BY ide) as innI USING(nomesport);
										  
--Per ogni sport il numero di eventi
SELECT nomesport, count(*) as num_eventi_per_sport
FROM evento
GROUP BY nomesport;
--ogni evento per ogni categoria il numero di iscritti
SELECT ide, nomesport, count(username) as num_Iscrizioni
FROM iscrive JOIN evento on iscrive.idevento = evento.ide
GROUP BY ide, nomesport
ORDER BY ide;
--ogni evento per ogni categoria dove non ci sono stati iscritti
SELECT ide, nomesport, count(username) as num_Iscrizioni
FROM iscrive JOIN evento on iscrive.idevento = evento.ide
GROUP BY ide, nomesport
HAVING count(username) = 0
ORDER BY ide;


--17) Gli utenti che sono stati solo albitri
SELECT distinct username
FROM iscrive
WHERE stato='ACCETTATO' AND ruolo = 'ARBITRO'
EXCEPT (SELECT username
        FROM iscrive
        WHERE stato='ACCETTATO' AND ruolo = 'GIOCATORE');

--18) Determinare l'età media per ogni corso di studi
SELECT nomecorso, avg(extract(YEAR FROM CURRENT_DATE) - utente.annonascita)
FROM utente
GROUP BY nomecorso;

--19) Per ogni corso lo sport meno praticato
SELECT nomecorso, nomesport, count(ide) as numEventi
FROM utente u NATURAL JOIN iscrive
            JOIN evento on iscrive.idevento = evento.ide
GROUP BY nomecorso, nomesport
HAVING count(ide) = (SELECT min(numEventi)
                      FROM (SELECT count(ide) as numEventi
                            FROM utente NATURAL JOIN iscrive
                                        JOIN evento on iscrive.idevento = evento.ide
                            WHERE nomecorso = u.nomecorso
                            GROUP BY nomesport) as nnnE);

--numero di eventi per ogni corso e ongi sport
SELECT nomecorso, nomesport, count(ide) as numEventi
FROM utente NATURAL JOIN iscrive
            JOIN evento on iscrive.idevento = evento.ide
GROUP BY nomecorso, nomesport;

--20) Sport con minor numero di partite
SELECT nomeSport, count(*)
FROM evento
GROUP BY evento.nomesport
HAVING count(*) = ( SELECT min(n)
                    FROM (SELECT count(*) as n
                          FROM evento
                          GROUP BY evento.nomesport) as aux);

--21) Proporzione tra tornei singoli e tornei a squadre
SELECT concat(cast(((100.0/(numT_squadra+numT_singolo))*numT_squadra) as decimal(10,2)), ' %') as tornei_squadra,
       concat(cast(((100.0/(numT_squadra+numT_singolo))*numT_singolo) as decimal(10,2)), ' %') as tornei_singolo
FROM (SELECT count(idt) as numT_squadra
      FROM torneo
      WHERE torneo.modalità = 'SQUADRA') as tnTs,
     (SELECT count(idt) as numT_singolo
      FROM torneo
      WHERE torneo.modalità = 'SINGOLO') as t;

--22) Proporzione degli eventi per sport (rapporto numero eventi totali su eventi per quello sport)
SELECT nomeSport, concat(cast(((100.0/ete.tot_eventi)*cast(count(ide) as decimal(10,2))) as decimal(10,2)), ' %') as numero
FROM evento, (SELECT cast(count(*) as decimal(10,2)) as tot_eventi
              FROM evento) as ete
GROUP BY nomesport, tot_eventi;

--23) Proporzione di iscrizioni per corso (rapporto utenti totali su utenti iscritti as un certo corso
SELECT nomecorso, concat(cast(((100.0/utu.tot_utenti)*cast(count(username) as decimal(10,2))) as decimal(10,2)), ' %') as iscrizioni
FROM utente, (SELECT cast(count(*) as decimal(10,2)) as tot_utenti
              FROM utente) as utu
GROUP BY nomecorso, tot_utenti
ORDER BY nomecorso;

--24) Rapporto utenti base, utenti premium
SELECT concat(cast(((100.0/(utenti_base+utenti_premium))*utenti_base)    as decimal(10,2)), ' %') as utenti_base,
       concat(cast(((100.0/(utenti_base+utenti_premium))*utenti_premium) as decimal(10,2)), ' %') as utenti_premium
FROM (SELECT count(username) as utenti_base
      FROM utente
      WHERE premium = FALSE) as uub,
     (SELECT count(username) as utenti_premium
      FROM utente
      WHERE premium = TRUE) as u;

