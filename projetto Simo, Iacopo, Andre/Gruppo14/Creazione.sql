create schema "UniGenovaSocialSport";
set search_path to "UniGenovaSocialSport";
set datestyle to "MDY";


CREATE TABLE Corso(
	NomeCorso varchar(50) PRIMARY KEY,
	Via varchar(30) NOT NULL,
	Civ varchar(10) NOT NULL,
	Città varchar(30) NOT NULL DEFAULT 'Genova'
);

CREATE TABLE Utente(
	Username varchar(30) PRIMARY KEY,
	Genere varchar(8) NOT NULL check(Genere in('Maschio','Femmina')), 
	Matricola varchar(30) NOT NULL,
	Password varchar(30) NOT NULL,
	Nome varchar(30) NOT NULL,
	Cognome varchar(30) NOT NULL,
	AnnoN integer NOT NULL check (AnnoN between 1900 and 2018),
	LuogoN varchar(30) NOT NULL,
	TelU char(15) NOT NULL,
	NomeCorso varchar(50) NOT NULL REFERENCES Corso (NomeCorso)  ON UPDATE CASCADE,
	Premium boolean NOT NULL DEFAULT false,
	UNIQUE(Matricola)
);

CREATE TABLE Categoria(
	NomeCat varchar(30) PRIMARY KEY,
	Regolamento varchar(1000) NOT NULL,
	FotoC varchar(500) NOT NULL,
	NumGC integer NOT NULL check (NumGC >0),
	Squadre Boolean NOT NULL DEFAULT TRUE
);

CREATE TABLE Impianto(
	NomeImp varchar(50) PRIMARY KEY,
	Via varchar(50) NOT NULL,
	EmailImp varchar(50) NOT NULL check ( EmailImp LIKE '%@%'),
	Latitudine decimal(5,2) NOT NULL,
	Longitudine decimal(5,2) NOT NULL,
	TellImp char(15) NOT NULL
);

CREATE TABLE Torneo(
	IdTorneo integer PRIMARY KEY,
	Tipo varchar(30) NOT NULL check( Tipo in('Eliminazione Diretta','Girone all italiana' , 'Misto') ),
	DescrT varchar(100) NOT NULL,
	Modalità varchar(30) NOT NULL check( Modalità in('singolo','squadre')),
	NomeCat varchar(30) NOT NULL REFERENCES Categoria(NomeCat) ON UPDATE CASCADE,
	Creatore varchar(30)NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE
);
CREATE TABLE Evento(
	IdEvento integer  PRIMARY KEY,
	Stato char(6) NOT NULL check( Stato in('aperto','chiuso')),
	DataEv TIMESTAMP NOT NULL ,
	DataFine TIMESTAMP NOT NULL ,
	NomeCat varchar(30) NOT NULL  REFERENCES Categoria(NomeCat) ON UPDATE CASCADE,
	NomeImp varchar(50) NOT NULL  REFERENCES Impianto(NomeImp) ON UPDATE CASCADE,
	IdTorneo integer REFERENCES Torneo(IdTorneo) ON UPDATE CASCADE ON DELETE CASCADE ,
	Fase varchar(10) check( Fase in('girone','quarti','ottavi','semifinale','finale','spareggio')),
	Organizzatore varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE,
	check (DataEv > CURRENT_TIMESTAMP ),
	check (DataFine > DataEv )
);

CREATE TABLE  Squadra(
	NomeSq varchar(30) PRIMARY KEY,
	StatoSq varchar(13) NOT NULL check(StatoSq in('in formazione','definitiva','temporanea')),
	ColoreM varchar(20) NOT NULL,
	GiocMin integer NOT NULL check (GiocMin>0),
	GiocMax integer NOT NULL check (GiocMax >= GiocMin),
	DescrSq varchar(100) NOT NULL,
	Note varchar(100),
	Compositore varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE	
);

CREATE TABLE Esito(
	IdEvento integer PRIMARY KEY REFERENCES Evento(IdEvento) ON UPDATE CASCADE ON DELETE CASCADE,
	DataEs TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	Durata time NOT NULL
);

CREATE TABLE Post(
	NomeCorso varchar(50) NOT NULL REFERENCES Corso(NomeCorso) ON UPDATE CASCADE ON DELETE CASCADE ,
	NomeCat  varchar(30) NOT NULL REFERENCES Categoria(NomeCat) ON UPDATE CASCADE ON DELETE CASCADE ,
	Username varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE ON DELETE CASCADE ,
	Data TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	Testo varchar(100) NOT NULL,
	FotoP varchar(500) ,
	PRIMARY KEY(NomeCorso,NomeCat,Username)
);

CREATE TABLE Sponsor(
	NomeSponsor varchar(50) PRIMARY KEY,
	Descr varchar(150) NOT NULL
);

CREATE TABLE Premi(
	IdPremi integer PRIMARY KEY,
	Descr varchar(200) NOT NULL
);

CREATE TABLE Restrizioni(
	idRestrizioni integer PRIMARY KEY,
	Descr varchar(150) NOT NULL
);

CREATE TABLE Valuta(
	Valutato varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE,
	IdEvento integer NOT NULL REFERENCES Evento(IdEvento) ON UPDATE CASCADE ON DELETE CASCADE ,
	Valutatore varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE,
	Data TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
	Commento varchar(500) ,
	Punti SMALLINT NOT NULL,
	check(Punti>0 and Punti<11),
	PRIMARY KEY(Valutato,IdEvento,Valutatore)
);

CREATE TABLE Iscrizione(
	Username varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE,
	IdEvento integer NOT NULL REFERENCES Evento(IdEvento) ON UPDATE CASCADE ON DELETE CASCADE,
	Stato varchar(12) NOT NULL default 'non valutato' check(stato in('confermato','rifiutato','non valutato')),
	Qualità varchar(9) NOT NULL check( Qualità in('arbitro','giocatore')),
	PRIMARY KEY(Username,IdEvento)
);

CREATE TABLE Candidato(
	Username varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE,
	NomeSq varchar(30) NOT NULL REFERENCES Squadra(NomeSq) ON UPDATE CASCADE ON DELETE CASCADE,
	stato varchar(20) NOT NULL default 'non valutato' check(stato in ('accettato','rifiutato','non valutato')),
	Ruolo varchar(30) NOT NULL,
	PRIMARY KEY(Username,NomeSq)
);

CREATE TABLE Partite(
	Username varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE,
	NomeCat varchar(30) NOT NULL REFERENCES Categoria(NomeCat) ON UPDATE CASCADE,
	qta integer NOT NULL default 0 check(qta>=0),
	PRIMARY KEY(Username,NomeCat)
);

CREATE TABLE Partecipa(
	IdEvento integer NOT NULL REFERENCES Evento(IdEvento) ON UPDATE CASCADE ON DELETE CASCADE,
	NomeSq varchar(30) NOT NULL REFERENCES Squadra(NomeSq) ON UPDATE CASCADE,
	PRIMARY KEY(IdEvento,NomeSq)
);

CREATE TABLE Registra(
	Username varchar(30) NOT NULL REFERENCES Utente(Username) ON UPDATE CASCADE,
	IdTorneo integer NOT NULL REFERENCES Torneo(IdTorneo) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY(Username,IdTorneo)
);

CREATE TABLE Sponsorizza(
	IdTorneo integer NOT NULL REFERENCES Torneo(IdTorneo) ON UPDATE CASCADE ON DELETE CASCADE,
	NomeSponsor varchar(30) NOT NULL REFERENCES Sponsor(NomeSponsor) ON UPDATE CASCADE,
	PRIMARY KEY(IdTorneo,NomeSponsor)
);

CREATE TABLE Regole(
	IdTorneo integer NOT NULL REFERENCES Torneo(IdTorneo) ON UPDATE CASCADE ON DELETE CASCADE,
	idRestrizioni integer NOT NULL REFERENCES Restrizioni(idRestrizioni) ON UPDATE CASCADE,
	PRIMARY KEY(IdTorneo,idRestrizioni)
);

CREATE TABLE Premia(
	IdPremi integer REFERENCES Premi(IdPremi) ON UPDATE CASCADE,
	IdTorneo integer REFERENCES Torneo(IdTorneo) ON UPDATE CASCADE ON DELETE CASCADE,
	Posizione smallint NOT NULL check(Posizione<4 and Posizione>0),
	PRIMARY KEY(IdTorneo,idPremi)
);

CREATE TABLE Composto(
	NomeSq varchar(30) REFERENCES Squadra(NomeSq),
	IdTorneo integer REFERENCES Torneo(IdTorneo) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY(IdTorneo,NomeSq)
);

CREATE TABLE Punti(
	Username varchar(30) REFERENCES Utente(Username),
	IdEvento integer REFERENCES Evento(IdEvento) ON UPDATE CASCADE ON DELETE CASCADE,
	Punti integer NOT NULL,
	PRIMARY KEY(Username,IdEvento)
);

--Tabelle di supporto per  le funzione, non sono parte dello schema
Create  Table Ris_Girone (
		Partecipante varchar(30),
		punti integer default 0,
	Primary key(Partecipante)
	);				

 	create table Vincitori_Tornei(
		NomeSq varchar(30),
		IdTorneo integer,
		NomeCat varchar(30),
		primary key(NomeSq,IdTorneo)
	);

	create table Eventi_Vinti(
 		NomeCorso varchar(50),
		NomeCat varchar(30),
		Qta bigint default 0,
		primary key(NomeCorso,NomeCat)
 );







	 create table Vincitori_Tornei_singoli (
		Username varchar(30),
		Qta integer default 0,
		NomeCat varchar(30),
		primary key(Username,NomeCat)
	);