set search_path to 'UniGenovaSocialSport';
--queste operazioni di manipolazione servono a testare i trigger


INSERT INTO Evento VALUES(399,'aperto','2018-10-15 9:30','2018-10-15 10:50','Pallavolo','Complesso Sportivo Valle Puggia',null,null,'Moncuu');--inserisco un nuovo evento che si sovrappone in parte con l'evento con identificatore "1", si attiva il trigger "Eventi_Contemporanei" che mi inpedisce l'inserimento



INSERT INTO Evento VALUES(400,'aperto','2018-11-30 9:30','2018-11-30 10:50','Tennis Doppio','Complesso Sportivo Valle Puggia',null,null,'Moncuu');

INSERT INTO Iscrizione VALUES('ilManzo',400,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',400,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('dapu97',400,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pimpi',400,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Raffa',400,'confermato','giocatore');


INSERT INTO Iscrizione VALUES('Porci',400,'confermato','arbitro');--l'inserimento viene bloccata dai perchè non ci può essere più di un arbitro per evento

INSERT INTO Iscrizione VALUES('simocampi',400,'confermato','giocatore');--l'operazione viola il vincolo sul numero di giocatori che si possono iscrivere ad un evento e ormai l'evento è chiuso


INSERT INTO Evento VALUES(401,'aperto','2018-11-30 9:30','2018-11-30 10:50','Tennis','Palestra Salle',null,null,'Moncuu');

INSERT INTO Iscrizione VALUES('Sacco',401,'confermato','giocatore');--l'iscrizione viene rifiutata dal trigger "Partecipazione_contemporanea" perchè viola il vincolo della partecipazione contemporanea di un utente ad un evento


INSERT INTO Valuta VALUES('dapu97', 400, 'simocampi', '2018-11-30 11:00', null, 2);--l'inserimento viene rifiutato dal trigger "Valutazione_utente" perchè simocampi non ha un'iscrizione confermata per l'evento


INSERT INTO Utente VALUES('Lèo','Maschio','kjh10h1','oéL','Leoardo','Ragusa',1996,'Genova',33368456458,'Economia');
INSERT INTO Utente VALUES('Romi','Femmina','bc09hwadd','RC','Romina','Contreras',1994,'Genova',336700125441,'Economia');
INSERT INTO Utente VALUES('Kikki','Maschio','b889ehh','inimperfection','Cristiano','Olivari',1996,'Lavagna',330023355665,'Economia');
INSERT INTO Utente VALUES('Massi','Maschio','hbou0dd','Samp','Massimo','Bernardini',1996,'Lavagna',3336601458,'Scienze Politiche Internazionali');
INSERT INTO Utente VALUES('Garba','Maschio','fv3rffeg','garba34','Alessio','Garbarino',1994,'Lavagna',33322202653,'Psicologia');
INSERT INTO Utente VALUES('Nuvolia','Maschio','dcsc3343','Nuv','Alessio','Nuvoli',1996,'Lavagna',33301101455,'Scienze dell Architettura');
--Operazioni sulla squadra "Broccoletti"
INSERT INTO Squadra VALUES('Broccoletti','in formazione','rosso',4,5,'Test','per testare i trigger','dapu97');
INSERT INTO Candidato VALUES('Lèo','Broccoletti','accettato','capitano');
INSERT INTO Candidato VALUES('Romi','Broccoletti','accettato','giocatore');
INSERT INTO Candidato VALUES('Kikki','Broccoletti','accettato','giocatore');
INSERT INTO Candidato VALUES('Garba','Broccoletti','accettato','giocatore');
INSERT INTO Candidato VALUES('Massi','Broccoletti','accettato','giocatore');
INSERT INTO Candidato VALUES('Nuvolia','Broccoletti','non valutato','arbitro');
update Candidato
set stato='accettato'
where NomeSq='Broccoletti'and Username='Nuvolia'; -- la candidatura viene rifiutata perchè la squadra è definitiva, trigger "candidatura_possibile"



INSERT INTO Torneo VALUES(12,'Girone all italiana','Torneo di Tennis doppio, con giorni all italina','squadre','Tennis Doppio','sofii');
INSERT INTO Composto VALUES('Broccoletti',12);
INSERT INTO Evento VALUES(402,'aperto','2018-12-01 9:00','2018-12-01 11:50','Tennis Doppio','Complesso Sportivo Valle Puggia',12,'quarti', 'EdoVigno');
insert into Partecipa values(402,'Broccoletti');
INSERT INTO Iscrizione VALUES('Lèo',402,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Massi',402,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Kikki',402,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Nuvolia',402,'non valutato','giocatore');
update Iscrizione
set stato='confermato'
where IdEvento=402 and Username='Nuvolia';--l'aggiornamento viene bloccato perchè Pimpi non appartiene 



Delete from Evento
where IdEvento=400;--l'eliminazione non viene effettuata perchèl'evento ormai è chiuso


INSERT INTO Evento VALUES(403,'aperto','2018-12-01 12:30','2018-12-01 13:50','Tennis','Complesso Sportivo Valle Puggia',null,null,'Moncuu');
INSERT INTO Iscrizione VALUES('simocampi',403,'confermato','giocatore');--viene incrementato il numero di partite di tennis del giocatore

delete from Iscrizione
where Username='simocampi' and IdEvento=403;--viene decrementato il numero di partite giocate dall'utente 

delete from Evento
where IdEvento=403; --eliminazione consentita perchè l'evento è ancora aperto

delete from Squadra
where NomeSq='Broccoletti';--l'eliminazione è consentita perchè la squadra è definitiva ma non ha mai partecipato ad eventi, di conseguenza anche le candidature vengono eliminate




