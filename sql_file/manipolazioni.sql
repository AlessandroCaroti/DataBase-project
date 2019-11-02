set search_path to 'UniGenovaSocialSport';

-- operazioni di manipolazione atte a testare i trigger

--inserisco un nuovo evento che si sovrappone in parte con l'evento con identificatore "1", si attiva il trigger "fun_eventi_contemporanei" che impedisce l'inserimento

INSERT INTO Evento VALUES(500,'APERTO','2020-12-18 9:00','2021-12-18 9:50','Pallavolo','A.S.D Pink Volley Genova',null,null,'aalborg'); --[EXCEPTION]

--inserisco un nuovo evento creato da un utente non premium, si attiva il trigger "Trigger_Contemporanei"

INSERT INTO Evento VALUES(501,'APERTO','2022-11-3 9:30','2022-11-3 10:50','Tennis Doppio','Valletta Cambiaso Asd',null,null,'baby face'); --[EXCEPTION]

INSERT INTO Evento VALUES(501,'APERTO','2022-11-3 9:30','2022-11-3 10:50','Tennis Doppio','Valletta Cambiaso Asd',null,null,'aalborg');

INSERT INTO Iscrive VALUES('babushka1',501,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES('baby face',501,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES('babykins',501,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES('bitsy',501,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES('cowboy',501,'ACCETTATO','GIOCATORE');

--un utente  non può avere l'iscrizione confermata per eventi che avvengono contemporaneamente

INSERT INTO Evento VALUES(505,'APERTO','2022-11-3 9:30','2022-11-3 10:50','Tennis','A.S.D Pink Volley Genova',null,null,'aalborg');

INSERT INTO Iscrive VALUES ('babushka1',505,'ACCETTATO','GIOCATORE');   --[EXCEPTION] inserimento bloccato perchè l'utente partecipa già ad un evento nella stessa data

--il numero di utenti giocatori confermati per un evento non deve superare il numero di giocatori previsto dalla categoria, per un evento non ci può essere  più di un arbitro.

INSERT INTO Iscrive VALUES('Utente000',501,'ACCETTATO','ARBITRO');       --[EXCEPTION] inserimento bloccato perchè non ci può essere più di un arbitro per evento

INSERT INTO Iscrive VALUES('minnesinger',501,'ACCETTATO','GIOCATORE');  --[EXCEPTION] l'operazione viola il vincolo sul numero di giocatori che si possono iscrivere ad un evento e ormai l'evento è chiuso

INSERT INTO Iscrive VALUES('bitsy',505,'ACCETTATO','GIOCATORE');    --[EXCEPTION] iscrizione rifiutata dal trigger "Fun_Partecipazione_Contenporanea" perchè viola il vincolo della partecipazione contemporanea di un utente ad un evento [DA CONTROLLARE]

--inserisco una valutazione di un utente che non sia stato ancora accettato

INSERT INTO Valuta VALUES('babykins', 501, 'minnesinger', '2018-11-30 11:00', null, 5); --[EXCEPTION] inserimento rifiutato dal trigger "Fun_Valutazione_utente" perchè l'utente "minnesinger" non ha un'iscrizione confermata per l'evento


INSERT INTO Utente VALUES('Leon','s999920','fghjkghgjhkhjghfgj','Leonardo','Biglia',1996,'Genova',33463453458,'Economia',FALSE);
INSERT INTO Utente VALUES('Mina','s999921','ghbjnkb','Romina','Piras',1994,'Genova',336740165041,'Scienze Ambientali',FALSE);
INSERT INTO Utente VALUES('Fraiz','s999922','chsdjkj','Francesco','Patroclo',1996,'Sestri Levante',330023895665,'Economia',FALSE);
INSERT INTO Utente VALUES('Massi','s999923','fhudisjbfsjnk','Massimigliano','Bernardeschi',1996,'Firenze',3330401458,'Fisica',FALSE);
INSERT INTO Utente VALUES('Alex','s999924','bdhvjncsk','Alessio','Anfigeno',1994,'Lavagna',33323902653,'Scienze Ambientali',FALSE);
INSERT INTO Utente VALUES('Embolia','s999925','bhvdjnkcs','Gino','Menestrello',1996,'Lavagna',33301761455,'Ingegneria Nav',FALSE);

--Operazioni sulla squadra "Drunk Monkeys"
INSERT INTO Squadra VALUES('Drunk Monkeys','RECLUTAMENTO','rosso e giallo',4,5,'Test','per testare i trigger','cowboy');
INSERT INTO Candida VALUES('Leon','Drunk Monkeys','ACCETTATO','CAPITANO');
INSERT INTO Candida VALUES('Mina','Drunk Monkeys','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES('Fraiz','Drunk Monkeys','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES('Massi','Drunk Monkeys','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES('Alex','Drunk Monkeys','ACCETTATO','GIOCATORE');


--Un utente può candidarsi per una squadra solo se lo stato di quest’ultima è “RECLUTAMENTO”
INSERT INTO Candida VALUES('Embolia','Drunk Monkeys','NON_VALUTATO','GIOCATORE');
update Candida
set stato='ACCETTATO'
where NomeSq='Drunk Monkeys'and Username='Embolia'; --[EXCEPTION] candidatura rifiutata perchè la squadra è definitiva, trigger "Fun_candidatura_possibile"

--Un utente può avere la candidatura accettata ad una sola squadra che non sia temporanea

INSERT INTO Squadra VALUES('Vinicio','RECLUTAMENTO','blu e giallo',4,5,'Test','per testare i trigger','cowboy');
INSERT INTO Squadra VALUES ('Apostoli','TEMPORANEA','oro e rosso',4,5,'Test','per testare i trigger','cowboy');
INSERT INTO Squadra VALUES ('Criminali','TEMPORANEA','blu e rosso',4,5,'Test','per testare i trigger','cowboy');
INSERT INTO Squadra VALUES ('Internazionale','RECLUTAMENTO','blu e nero',4,5,'Test','per testare i trigger','cowboy');


INSERT INTO Candida VALUES ('Mina','Vinicio','ACCETTATO','GIOCATORE');  --[EXCEPTION] l'inserimento bloccato perchè l'utente è già candidato ad un'altra squadra Definitiva
INSERT INTO Candida VALUES ('Mina','Apostoli','ACCETTATO','GIOCATORE'); --inserimento accettato perchè l'utente viene candidato ad una squadra TEMPORANEA

INSERT INTO Torneo VALUES(100,'GIRONE_ALL_ITALIANA','Torneo di Tennis doppio, con gironi all italiana','SQUADRA','Tennis Doppio','aalborg');
INSERT INTO Composto VALUES('Drunk Monkeys',100);
INSERT INTO Evento VALUES(402,'APERTO','2021-12-01 9:00','2021-12-01 11:50','Tennis Doppio','Complesso Sportivo Valle Puggia',100,'quarti', 'aalborg');
insert into Di values(402,'Drunk Monkeys');
INSERT INTO Iscrive VALUES('Leon',402,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES('Fraiz',402,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES('Embolia',402,'NON_VALUTATO','GIOCATORE');
update Iscrive
set stato='ACCETTATO'
where IdEvento=402 and Username='Embolia';  --[EXCEPTION] aggiornamento bloccato perchè Embolia non appartiene alla squadra

--Possono partecipare ad eventi solo squadre che hanno come stato "definitiva" o "temporanea".

INSERT INTO Evento VALUES(602,'APERTO','2023-06-01 9:00','2023-06-01 11:50','Tennis Doppio','Complesso Sportivo Valle Puggia',null,null, 'aalborg');

INSERT INTO Di VALUES(602,'Vinicio');   --[EXCEPTION] l'inserimento bloccato perchè la squadra è in RECLUTAMENTO

--un utente si può iscrivere ad un torneo se questo non è a squadre

INSERT INTO Partecipa VALUES('Embolia',100); --[EXCEPTION] inserimento bloccato perchè l'utente vuole partecipare ad un evento a squadre

--Gli eventi devono essere dello stesso sport del torneo associato

INSERT INTO Evento VALUES (509,'APERTO','2022-09-01 15:30','2022-09-01 16:50','Pallavolo','Bagni Italia',10,null,'implant');    --[EXCEPTION] inserimento bloccato perchè l'evento è di uno sport diverso dal torneo

--per partecipare ad evento del torneo bisogna essere iscritti al torneo

INSERT INTO Torneo VALUES(50,'ELIMINAZIONE_DIRETTA','Torneo di Tennis Singolo, ad Eliminazione Diretta','SINGOLO','Tennis','aalborg');
INSERT INTO Evento VALUES(600,'APERTO','2021-10-01 9:00','2021-10-01 11:50','Tennis','Valletta Cambiaso Asd',50,'FINALE','aalborg');

INSERT INTO Iscrive VALUES('Embolia',600,'ACCETTATO','GIOCATORE'); --[EXCEPTION] inserimento bloccato perchè l'utente non è iscritto al torneo

Delete from Evento
where IdE=501; --[EXCEPTION] eliminazione non effettuata perchè l'evento ormai è chiuso

--UPDATE: se l'iscrizione ad un evento viene accettata viene incrementato il numero di partite della categoria giocate dall'utente

INSERT INTO Evento VALUES(403,'APERTO','2023-09-01 15:30','2023-09-01 16:50','Tennis','Bagni Italia',null,null,'aalborg');
INSERT INTO Iscrive VALUES('Alex',403,'ACCETTATO','GIOCATORE'); --viene incrementato il numero di partite di tennis del giocatore

delete from Iscrive
where Username='Alex' and IdEvento=403; --DELETE: iscrizione confermata ammessa perchè evento associato è aperto e viene decrementato il numero di partite giocate dall'utente

delete from Evento
where IdE=403; --eliminazione consentita perchè l'evento è ancora aperto

delete from Squadra           --LANCIA UN ECCEZIONE,NON COME C'E' SCRITTO NELLA DESCRIZIONE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
where NomeSq='Drunk Monkeys'; --DELETE: Elimina una squadra solo se questa non ha mai giocato ad una partita, l'eliminazione è consentita perchè la squadra è definitiva ma non ha mai partecipato ad eventi, di conseguenza anche le candidature vengono eliminate

--INSERT: Esito inseribile solo se l'evento associato è chiuso
INSERT INTO Esito VALUES (600,'2021-11-18 9:30','00:50:00'); --[EXCEPTION] inserimento bloccato perchè evento ancora aperto

--DELETE: Eliminazione candidatura ad una squadra: è possibile solo se la squadra è ancora in RECLUTAMENTO o se le candidature sono rifiutate

INSERT INTO Candida VALUES ('Embolia','Vinicio','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente019','Vinicio','RIFIUTATO','GIOCATORE');

delete from Candida
where Username='Embolia' and NomeSq='Vinicio';

delete from Candida
where Username='Utente019' and NomeSq='Vinicio';

--DELETE: eliminazione di un torneo solo nel caso in cui non ci siano ancora eventi chiusi

delete from Torneo
where IdT=50;

INSERT INTO Di VALUES(602,'Internazionale');    --[EXCEPTION] l'inserimento viene bloccato perchè all'evento partecipano già due squadre

--è possibile modificare la partecipazione ad un torneo a squadre solo se non ci sono ancora eventi del torneo

INSERT INTO Torneo VALUES(60,'GIRONE_ALL_ITALIANA','Torneo di Tennis doppio, con gironi all italiana','SQUADRA','Tennis Doppio','aalborg');
INSERT INTO Composto VALUES('Drunk Monkeys',60); --inserimento di una squadra ad un torneo finchè non ci sono eventi associati

delete from Composto
where idTorneo=60 and NomeSq='Drunk Monkeys'; --delete accettata perchè non ci sono ancora eventi nel torneo

--Eliminazione o Modifica della partecipazione di un utente ad un torneo singolo solo se non ci sono eventi programmati

INSERT INTO Torneo VALUES(61,'ELIMINAZIONE_DIRETTA','Torneo di Tennis Singolo, ad Eliminazione Diretta','SINGOLO','Tennis','aalborg');
INSERT INTO Partecipa VALUES('Utente019',61); --inserimento di un utente ad un torneo finche non ci sono eventi associati

delete from Partecipa
where idTorneo='61' and Username='Utente019';

--inserimento di almno una valutazione (1 sbagliata e una corretta) con test sul trigger
--inserimento di almono un punteggio (1 sbagliata e una corretta) con test sul trigger