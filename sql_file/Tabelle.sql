DROP schema "UniGenovaSocialSport" CASCADE;



create schema "UniGenovaSocialSport";
set search_path to "UniGenovaSocialSport";
set datestyle to "MDY";


CREATE TABLE CorsoDiStudi(
	NomeCorso varchar(50) PRIMARY KEY
);

CREATE TABLE Utente(
	Username varchar(30) PRIMARY KEY,
	Matricola varchar(30) NOT NULL,
	Password varchar(30) NOT NULL,
	Nome varchar(30) NOT NULL,
	Cognome varchar(30) NOT NULL,
	AnnoNascita integer NOT NULL check (AnnoNascita between 1900 and 2000),
	LuogoNascita varchar(30) NOT NULL,
	Telefono char(15) NOT NULL,
	NomeCorso varchar(50) NOT NULL REFERENCES CorsoDiStudi (NomeCorso)  ON UPDATE CASCADE,
	Premium boolean NOT NULL DEFAULT false,
	UNIQUE(Matricola)
);

CREATE TABLE Struttura(
	NomeStr varchar(50) PRIMARY KEY,
	Via varchar(50) NOT NULL,
	Email varchar(50) NOT NULL check ( Email LIKE '%@%.%'),
	Latitudine decimal(5,2) NOT NULL,
	Longitudine decimal(5,2) NOT NULL,
	Telefono char(15) NOT NULL
);

CREATE TABLE Sport(
	NomeSport varchar(30) PRIMARY KEY,
	Regolamento varchar(1000) NOT NULL,
	Foto varchar(500) NOT NULL,
	NumGiocatori integer NOT NULL check (NumGiocatori >0),  --num giocatori per squadra
	DiSquadra Boolean NOT NULL DEFAULT TRUE
);

CREATE TABLE Torneo(
	IdT integer PRIMARY KEY,
	Tipo varchar(30) NOT NULL check( Tipo in('ELIMINAZIONE_DIRETTA','GIRONE_ALL_ITALIANA' ,'MISTO') ),
	Descrizione varchar(100) NOT NULL,
	Modalità varchar(30) NOT NULL check( Modalità in('SINGOLO','SQUADRA')),
	NomeSport varchar(30) NOT NULL REFERENCES Sport(NomeSport) ON UPDATE CASCADE,
	Creatore varchar(30)NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE
);

CREATE TABLE Evento(
	IdE integer  PRIMARY KEY,
	Stato char(6) NOT NULL check( Stato in('APERTO','CHIUSO')),
	Data TIMESTAMP NOT NULL ,
	DataFine TIMESTAMP NOT NULL ,
	NomeSport varchar(30) NOT NULL  REFERENCES Sport(NomeSport) ON UPDATE CASCADE,
	NomeStruttura varchar(50) NOT NULL  REFERENCES Struttura(NomeStr) ON UPDATE CASCADE,
	IdTorneo integer REFERENCES Torneo(IdT) ON UPDATE CASCADE ON DELETE CASCADE ,
	Fase varchar(10) check( Fase in('GIRONE','QUARTI','OTTAVI','SEMIFINALE','FINALE','SPAREGGIO',NULL)),
	Organizzatore varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE,
	check (Data > CURRENT_TIMESTAMP ),
	check (DataFine > Data )
);


CREATE TABLE  Squadra(
	NomeSq varchar(30) PRIMARY KEY,
	Stato varchar(13) NOT NULL check(Stato in('RECLUTAMENTO','DEFINITIVA','TEMPORANEA')),
	ColoreMaglia varchar(20) NOT NULL,
	MinGiocatori integer NOT NULL check (MinGiocatori >0),
	MaxGiocatori integer NOT NULL check (MaxGiocatori >= MinGiocatori),
	Descrizione varchar(100) NOT NULL,
	Note varchar(100),
	Creatore varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE
);

CREATE TABLE Esito(
	IdEvento integer PRIMARY KEY REFERENCES Evento(IdE) ON UPDATE CASCADE ON DELETE CASCADE,
	Data TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	Durata time NOT NULL
);



--VALUTAZIONE DI UN UTENTE DA UN ALTRO UTENTE PER UN EVENTO
CREATE TABLE Valuta
(
	Valutato varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE,
	IdEvento integer NOT NULL REFERENCES Evento(IdE) ON UPDATE CASCADE ON DELETE CASCADE ,
	Valutatore varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE,
	Data TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	Commento varchar(500) ,
	Punti SMALLINT NOT NULL,
	check(Punti>0 and Punti<11),
	PRIMARY KEY(Valutato,IdEvento,Valutatore)
);

--CANDIDATURA UTENTE -> SQUADRA
CREATE TABLE Candida(
	Username varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE,
	NomeSq varchar(30) NOT NULL REFERENCES Squadra(NomeSq) ON UPDATE CASCADE ON DELETE CASCADE,
	stato varchar(20) NOT NULL default 'NON_VALUTATO' check(stato in ('ACCETTATO','RIFIUTATO','NON_VALUTATO')),
	Ruolo varchar(30) NOT NULL,
	PRIMARY KEY(Username,NomeSq)
);

--ISCRIZIONE UTENTE -> EVENTO
CREATE TABLE Iscrive(
	Username varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE,
	IdEvento integer NOT NULL REFERENCES Evento(IdE) ON UPDATE CASCADE ON DELETE CASCADE,
	Stato varchar(12) NOT NULL default 'NON_VALUTATO' check(stato in ('ACCETTATO','RIFIUTATO','NON_VALUTATO')),
	Ruolo varchar(9) NOT NULL check( Ruolo in('ARBITRO','GIOCATORE')),
	PRIMARY KEY(Username,IdEvento)
);

CREATE TABLE PartiteGiocate(
	Username varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE,
	NomeSport varchar(30) NOT NULL REFERENCES Sport(NomeSport) ON UPDATE CASCADE,
	Quantità integer NOT NULL default 0 check(Quantità>=0),
	PRIMARY KEY(Username,NomeSport)
);

--ASSOCIAZIONE DELLE SQUADRE CHE PARTECIPA AD UN EVENTO   SQUADRA -> EVENTO
CREATE TABLE Di(
	IdEvento integer NOT NULL REFERENCES Evento(IdE) ON UPDATE CASCADE ON DELETE CASCADE,
	NomeSq varchar(30) NOT NULL REFERENCES Squadra(NomeSq) ON UPDATE CASCADE,
	PRIMARY KEY(IdEvento,NomeSq)
);


--UTENTE -> TORNEO
CREATE TABLE Partecipa(
	Username varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE,
	IdTorneo integer NOT NULL REFERENCES Torneo(IdT) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY(Username,IdTorneo)
);

--*****************************************************--
--TABELLE RELATIVE AL TORNEO
--*****************************************************--

		--SQUADRE -> TORNEO
		CREATE TABLE Composto(
			NomeSq varchar(30) REFERENCES Squadra(NomeSq),
			IdTorneo integer REFERENCES Torneo(IdT) ON UPDATE CASCADE ON DELETE CASCADE,
			PRIMARY KEY(IdTorneo,NomeSq)
		);

		CREATE TABLE Sponsor(
			NomeSp varchar(50) PRIMARY KEY
		);
		CREATE TABLE Sponsorizza(
			IdTorneo integer NOT NULL REFERENCES Torneo(IdT) ON UPDATE CASCADE ON DELETE CASCADE,
			NomeSponsor varchar(30) NOT NULL REFERENCES Sponsor(NomeSp) ON UPDATE CASCADE,
			PRIMARY KEY(IdTorneo,NomeSponsor)
		);

		CREATE TABLE Restrizioni(
			IdR integer PRIMARY KEY,
			Descrizione varchar(150) NOT NULL
		);
		CREATE TABLE Regole(
			IdTorneo integer NOT NULL REFERENCES Torneo(IdT) ON UPDATE CASCADE ON DELETE CASCADE,
			idRestrizioni integer NOT NULL REFERENCES Restrizioni(IdR) ON UPDATE CASCADE,
			PRIMARY KEY(IdTorneo,idRestrizioni)
		);

		CREATE TABLE Premi(
			IdP integer PRIMARY KEY,
			Descr varchar(200) NOT NULL
		);
		CREATE TABLE Premia(
			IdPremi integer REFERENCES Premi(IdP) ON UPDATE CASCADE,
			IdTorneo integer REFERENCES Torneo(IdT) ON UPDATE CASCADE ON DELETE CASCADE,
			Posizione smallint NOT NULL check(Posizione<4 and Posizione>0),
			PRIMARY KEY(IdTorneo,idPremi)
		);
--*****************************************************--

--PUNTI SEGNATI DA UN UTENTE IN UN PARTICOLARE EVENTO
CREATE TABLE Punti(
	Username varchar(30) REFERENCES Utente(Username),
	IdEvento integer REFERENCES Evento(IdE) ON UPDATE CASCADE ON DELETE CASCADE,
	Punti integer NOT NULL,
	PRIMARY KEY(Username,IdEvento)
);


--RIGUARDARE LA GESTIONE DELLA CHIAVE
CREATE TABLE Forum(
  NomeF varchar(100),
  NomeCorso varchar(50) NOT NULL REFERENCES CorsoDiStudi (NomeCorso) ON UPDATE CASCADE,
  NomeSport varchar(30) NOT NULL REFERENCES Sport(NomeSport) ON UPDATE CASCADE,
  Descrizione varchar(500),
  PRIMARY KEY (NomeCorso,NomeSport),
  UNIQUE (NomeF)
);

--DA RICONTROLLARE, NON NE SONO PER NIENTE SICURO
CREATE TABLE Post(
  Id integer,
  NomeForum varchar(100) NOT NULL REFERENCES Forum(NomeF) ON UPDATE CASCADE,
	Username varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE ON DELETE CASCADE ,
	Data TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	Testo varchar(100) NOT NULL,
	Foto varchar(500) ,
	PRIMARY KEY(Id,NomeForum,Username)
);





--TABELLE EXTRA---------------------------

Create  Table Ris_Girone (
	Partecipante varchar(30),
	punti integer default 0,
	Primary key(Partecipante)
);

create table Vincitori_Tornei(
	NomeSquadra varchar(30),
	IdTorneo integer,
	NomeSport varchar(30),
	primary key(NomeSquadra,IdTorneo)
);

create table Eventi_Vinti(
	NomeCorso varchar(50),
	NomeSport varchar(30),
	Qta bigint default 0,
	primary key(NomeCorso,NomeSport)
);

create table Vincitori_Tornei_singoli (
  Username varchar(30),
  Qta integer default 0,
  NomeSport varchar(30),
  primary key(Username,NomeSport)
);

