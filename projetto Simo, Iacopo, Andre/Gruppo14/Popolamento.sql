set search_path to 'UniGenovaSocialSport';

INSERT INTO Categoria  VALUES ('Calcio a 5', 'Squadre composte da 5 giocatori (compreso il portiere), 
le partite si giocano a in un campo lungo dai 25 ai 42 metri e largo dai 15 ai 25 metri. Se viene commesso fallo nell  area di rigore, 
verr?dato calcio di rigore per la squadra che ha subito il fallo, altrimenti se ?fuori calcio di punizione.
Per proteste o fallo antisportivo pu?venire assegnato un cartellino giallo (2 gialli= 1 rosso).
Se il pallone supera la riga della porta, viene dato punto alla sqaudra del portiere opposto. 
Per la durata della gara son previsti due periodi da 20 minuti ciascuno. ', 
'https://upload.wikimedia.org/wikipedia/commons/c/c9/FutsalPitch.png',10);

INSERT INTO Categoria  VALUES ('Pallavolo', 'Squadre composte da 6 giocatori. Se la palla cade nel campo avversario ?punto.
Chi fa punto ottine il diritto di battere.
Una partita viene divisa in set da 25 punti. Raggiunto  punteggio si vince il set. in caso di partit?il set viene vinto
dalla squadra che raggiunge 2 punti di margine di vantaggio. Non si pu?trattenere il pallone, 
ne invadere il campo avversario delimitato da una rete. ', 
'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Mondiali_di_pallavolo_2014_%2815437127220%29.jpg/1920px-Mondiali_di_pallavolo_2014_%2815437127220%29.jpg',12);

INSERT INTO Categoria  VALUES ('Tennis', 'Tennis singolo: Viene considerato punto quando esce la pallina, oppure quando fa 2 rimbalzi nel campo avversario
(obbligatorio un rimbalzo). Il campo pu?essere in terra battuta, erba o sintetico. Le Fasi di gioco son suddivise in set, suddivisi a loro volta in game. 
Per vincere un game, bisogna superare l avversario di almeno due punti. I punti hanno la particolarit?di non seguire la norm successione numerica: 15 - 30 - 40 - vittoria.
Per vincere un set, bisogna vincere 6 game. Se si arriva a 6 pari si fa il Tie Break, dove si alternato alla battutta i giocatori. Chi ha uno scarto di due punti a partire dalla
settimo punto vinc eil tie break.', 
'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Centre_Court.jpg/1280px-Centre_Court.jpg',2, false);
INSERT INTO Categoria  VALUES ('Tennis Doppio', 'Come il tennis singolo ma a squadre composte da due giocatori', 
'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Centre_Court.jpg/1280px-Centre_Court.jpg',4, true);


INSERT INTO Impianto  VALUES ('Complesso Sportivo Valle Puggia','Via Gambaro, 66, 16145, Genova', 'Segreteria@Cusgenova.It', 44.401495, 8.971674, 0103623001); 
INSERT INTO Impianto  VALUES ('Sede Cus Genova','Via Montezovetto, 21A, 16145, Genova', 'Segreteria@Cusgenova.It', 44.401930, 8.964279, 0103623001); 
INSERT INTO Impianto  VALUES ('Valletta Cambiaso Asd',' Via Federico Ricci, 1, 16145 Genova', 'valcambiasoasd@gmail.com', 44.401930, 8.964279, 0103620730); 
INSERT INTO Impianto  VALUES ('Bagni Italia','Corso Italia, 9, 16145 Genova', 'info@bagnitaliagenova.it', 44.393679, 8.962785, 0103620685); 
INSERT INTO Impianto  VALUES ('Palestra Salle','Salita Negrone Durazzo 3, 16125, Genova', 'segreteria@cusgenova.it', 44.414935, 8.930173, 0103623001); 



INSERT INTO Corso  VALUES ('Matematica','Via Dodecaneso','35');
INSERT INTO Corso  VALUES ('Informatica','Via Dodecaneso','35');
INSERT INTO Corso  VALUES ('Economia','Via Francesco Vivaldi','6');
INSERT INTO Corso  VALUES ('Scienze dell Architettura','Stradone di Sant Agostino','37');
INSERT INTO Corso  VALUES ('Ingegneria Biomedica','Via all Opera Pia','13');
INSERT INTO Corso  VALUES ('Scienze Biologiche','Corso Europa','26');
INSERT INTO Corso  VALUES ('Fisica','Via Dodecaneso','33');
INSERT INTO Corso  VALUES ('Odontoiatria','Via Leon Battista Alberti','4');
INSERT INTO Corso  VALUES ('Scienze Ambientali','Via Balbi','5');
INSERT INTO Corso  VALUES ('Giurisprudenza','Via Balbi','5');
INSERT INTO Corso  VALUES ('Psicologia',' Corso Andrea Podesta','2');
INSERT INTO Corso  VALUES ('Ingegneria Informatica','Via all Opera Pia','13');
INSERT INTO Corso  VALUES ('Ingegneria Nav','Via all Opera Pia','11');
INSERT INTO Corso  VALUES ('Scienze Politiche Internazionali','Piazz E. Brignole','3A');



INSERT INTO Sponsor  VALUES('Pasta Fresca Bussone', 'Pastificio, Gastronomia a Loano');
INSERT INTO Sponsor  VALUES('Energade', 'Azienda che produce bibite energetiche');
INSERT INTO Sponsor  VALUES('Polla Nicolo', 'Frantoio Ligure. Dal 1875');
INSERT INTO Sponsor  VALUES('Estathe', 'EstatheFerrero il the freddo dissetante natur, ottenuto da vero infuso di the disponibile ai gusti limone, pesca, the verde o deteinato.');
INSERT INTO Sponsor  VALUES('Fruttitalia', 'Vendita al dettaglio di frutta e verdura a Loano, corso Roma 60');


INSERT INTO Premi  VALUES(1,'1000 euro');
INSERT INTO Premi  VALUES(2,'700 euro'); 
INSERT INTO Premi  VALUES(3,'400 euro');
INSERT INTO Premi  VALUES(4,'2 Giorni a Riccione in un hotel a 4 stelle.'); 
INSERT INTO Premi  VALUES(5,'Un Trattamento alla SPA Relais Il Cas a Tovo San Giacomo (SV).'); 
INSERT INTO Premi  VALUES(6,'Una cena in uno dei 4 ristoranti di ssandro Borghese a Genova.');
INSERT INTO Premi  VALUES(7,'Ingresso omaggio allo stadio per la sqaudra del cuore.'); 
INSERT INTO Premi  VALUES(8,'Maglia della squadra del cuore.');
INSERT INTO Premi  VALUES(9,'Gadget squadra del cuore.');	


INSERT INTO Restrizioni VALUES(1,'I partecipanti devono essere regolarmente iscritti all università di Genova');
INSERT INTO Restrizioni VALUES(2,'Possono iscriversi al torneo solo gli utenti che hanno giocato ad almeno un evento della stessa categoria');



INSERT INTO Utente VALUES('simocampi','Maschio','ad1235f5','Agosto97','Simone','Campisi',1997,'Pietra Ligure',3403953414,'Informatica',TRUE);
INSERT INTO Utente VALUES('dapu97','Maschio','sa4f5sra','1Mag97','Jacopo','Dapueto',1997,'Genova',3333933414,'Informatica',TRUE);
INSERT INTO Utente VALUES('ilManzo','Maschio','4sdgad2r','LPOlover97','Andrea','Manzi',1997,'Genova',3303923414,'Informatica',TRUE);
INSERT INTO Utente VALUES('ErikPerti','Maschio','89dhagt5','Novembre97','Erik','Arienti',1997,'Pietra Ligure',3289234141,'Ingegneria Biomedica',TRUE);
INSERT INTO Utente VALUES('Provagg','Maschio','09ijhgfr','PupiPupi&%','ssandro','Provaggi',1999,'Pietra Ligure',3709234141,'Ingegneria Biomedica',TRUE);
INSERT INTO Utente VALUES('SimoGiro','Maschio','123erfg5','Giro98_.','Simone','Giromini',1999,'Pietra Ligure',3409233141,'Economia',TRUE);
INSERT INTO Utente VALUES('elcarrubs','Maschio','56yftyja','Carrubs97?&','Filippo','Carrubba',1997,'Pietra Ligure',3709262187,'Scienze Politiche Internazionali',TRUE);
INSERT INTO Utente VALUES('Storac','Maschio','a567abvf','Phibonachos96','Andrea','Storace',1996,'Genova',32609282157,'Informatica',TRUE);
INSERT INTO Utente VALUES('Arma96','Maschio','4gef624v','Arm@@%96','Grabriele','Armanino',1996,'Genova',33319289857,'Informatica',TRUE);
INSERT INTO Utente VALUES('IlRoss','Maschio','4fpd1245','mari__0','Mario','Rossi',1987,'Savona',33409242857,'Fisica',TRUE);
INSERT INTO Utente VALUES('Gelll','Maschio','se2084t6','MirkoGell____','Mirko','Gelli',1990,'Savona',33409242857,'Scienze Ambientali',TRUE);
INSERT INTO Utente VALUES('Frank89','Femmina','cdo42361','Frankina89$$','Franca','Parodi',1989,'Rimini',3540924257,'Giurisprudenza');
INSERT INTO Utente VALUES('Verdi90','Femmina','23re1235g','VerdiAgosto90','Luisa','Verdi',1990,'Bari',3240929653,'Psicologia',TRUE);
INSERT INTO Utente VALUES('FaVince85','Maschio','6gvdr567','Fa_Vin8571','Vincenzo','Fara',1985,'Firenze',3540929613,'Scienze Ambientali',TRUE);
INSERT INTO Utente VALUES('Moncuu','Femmina','ase5t789','Moncuu___98&$','Aurora','Moncheroni',1998,'Pietra Ligure',3640939623,'Giurisprudenza', TRUE);
INSERT INTO Utente VALUES('FabriBO90','Maschio','4fvdr565','FabriBodro76','Fabrizio','Bodrato',1990,'Arquata Scrivia',3740923139,'Odontoiatria');
INSERT INTO Utente VALUES('SimoGaviz','Femmina','6cvdr561','simogaviz89..','Simona','Gavizzi',1989,'Genova',3309296413,'Fisica',TRUE);
INSERT INTO Utente VALUES('Bofabi','Femmina','5yh4586lm','Bodrato000__','Fabiana','Bodrato',1996,'Milano',3240829013,'Ingegneria Informatica',TRUE);
INSERT INTO Utente VALUES('Boe96','Maschio','567uhjko','Cattedra96','Lorenzo','Boetto',1996,'Pietra Ligure',3450927813,'Economia',TRUE);
INSERT INTO Utente VALUES('Schiappa96','Maschio','3gvdt531','Schi_@ppa96-.','Andrea','Schappacasse',1996,'Pietra Ligure',3120929513,'Economia',TRUE);
INSERT INTO Utente VALUES('Bibi98','Femmina','3fgrt664','bi_bi%&','Bianca','Re',1998,'Pietra Ligure',3840329623,'Psicologia', TRUE);
INSERT INTO Utente VALUES('Marli_one','Maschio','1rvvr54r','Marino97','Luca','Marin',1997,'Pietra Ligure',3458924113,'Ingegneria Informatica',TRUE);
INSERT INTO Utente VALUES('Foc','Maschio','54rgbndf','Foxxxx.-','ssio','Volpi',1999,'Pietra Ligure',3940229617,'Scienze dell Architettura',TRUE);
INSERT INTO Utente VALUES('riii4','Maschio','56trd7fe','rikiriki98','Riccardo','Fumagalli',1998,'Pietra Ligure',3640949623,'Economia');
INSERT INTO Utente VALUES('EdoVigno','Maschio','98bref43','juve.Edo97','Edoardo','Vignola',1997,'Pietra Ligure',3330924611,'Fisica', TRUE);
INSERT INTO Utente VALUES('Deve89','Maschio','6rv6rt47','dedeveve.-','Maurizio','De Vecchi',1989,'Roma',3280969613,'Scienze Biologiche');
INSERT INTO Utente VALUES('Branc','Maschio','9v4fr556','BrancFranc,.-&','Franco','Branco',1979,'La Spezia',3427829673,'Ingegneria Nav');
INSERT INTO Utente VALUES('SannaMarghe','Femmina','53vfr5b2','Margheee98__','Margherita','Sanna',1998,'Pietra Ligure',3310959413,'Ingegneria Nav');
INSERT INTO Utente VALUES('Fraaaa','Femmina','56fhtkmnb','Fra__98','Francesca','Bruno',1998,'Savona',3340921610,'Fisica',TRUE);
INSERT INTO Utente VALUES('Devoooo95','Femmina','642d1fd5','Devodevo9890','Francesca','Devoto',1995,'Albenga',3238926612,'Matematica');
INSERT INTO Utente VALUES('Maggioo92','Maschio','44vtr5r7','Maggio_Nov9023','Gabriele','Maggioni',1992,'Pietra Ligure',3944522116,'Ingegneria Informatica',TRUE);
INSERT INTO Utente VALUES('sofii','Femmina','456yh5aa7','Sofiiaaaa.456','Sofia','Cavuoto',1996,'Albenga',3340929612,'Fisica',TRUE);
INSERT INTO Utente VALUES('Maggio95','Femmina','5fgjr5679','MagiiAl_95','ssandra','Maggioni',1995,'Pietra Ligure',3467989213,'Odontoiatria');
INSERT INTO Utente VALUES('Eleee98','Femmina','456yhmio','boglioMarzo90321','Elenora','Bogliolo',1998,'Pietra Ligure',3890929613,'Giurisprudenza');
INSERT INTO Utente VALUES('EliZazze98','Femmina','57u4bn5m','Zazze___97','Elisa','Zazzera',1997,'Genova',326904763,'Informatica',TRUE);
INSERT INTO Utente VALUES('Carott','Maschio','456yh6fg','Catottttt__yr45','ssandro','Caroti',1996,'Genova',3265795428,'Informatica',TRUE);
INSERT INTO Utente VALUES('MarcGiuli','Maschio','4fh2cun3','GiuliGiuli89','Giuliano','Marcia',1989,'Napoli',3436598124,'Scienze Politiche Internazionali',TRUE);
INSERT INTO Utente VALUES('FantiAlb','Maschio','56tfdc3b','fant00?5','Alberto','Fantino',1993,'Savona',3251836890,'Fisica', TRUE);
INSERT INTO Utente VALUES('Casaccstefi','Femmina','46hnma5','Stefi_Cas98642','Stefania','Casaccio',1992,'Genova',3679843276,'Scienze Biologiche');
INSERT INTO Utente VALUES('MassiDesa92','Maschio','a4b6tghj','MassDess__3468','Massimiliano','De Sanctis',1994,'Roma',3479543675,'Ingegneria Biomedica',TRUE);
INSERT INTO Utente VALUES('Strafo','Maschio','dfa876fw','buskgneoio87','Andrea','Straforini',1997,'Lavagna',3451567840,'Informatica',True);
INSERT INTO Utente VALUES('Chia','Femmina','6rgrthtj5','Chia94','Chiara','Coraggioso',1994,'Santa Margherita Ligure',3567824901,'Psicologia');
INSERT INTO Utente VALUES('Ste','Maschio','435ngrfj','Nino345','Stefano','Antola',1994,'Genova',3215687094,'Matematica');
INSERT INTO Utente VALUES('Fountainbleau','Maschio','4sdttge7','94','ssio','Fontanarossa',1996,'Lavagna',3412687901,'Fisica');
INSERT INTO Utente VALUES('Damont','Maschio','23wererr','Andam','Andrea','Damonte',1996,'Genova',3651482079,'Fisica');
INSERT INTO Utente VALUES('DaVac','Maschio','fewrt346','Vacc95','Danilo','Vaccaro',1996,'Genova',3547885167,'Ingegneria Nav');
INSERT INTO Utente VALUES('Luca','Maschio','ewt54546ty','Luca','Luca','Chiola',1997,'Lavagna',3541067860,'Odontoiatria',TRUE);
INSERT INTO Utente VALUES('SofiSofi','Femmina','dfaer56','Sofii','Sofia','Deste',1997,'Lavagna',3556278016,'Odontoiatria');
INSERT INTO Utente VALUES('Raffa','Maschio','weft655','Raf','Raffaele','Raminelli',1997,'Lavagna',35516871237,'Giurisprudenza');
INSERT INTO Utente VALUES('Pimpi','Femmina','sdgfer56','Sof','Sofia','Bagnato',1998,'Genova',3310147689,'Informatica');
INSERT INTO Utente VALUES('Elotti','Femmina','dsffw345','Ele','Elena','Sala',1998,'Lavagna',3256819720,'Scienze Biologiche');
INSERT INTO Utente VALUES('Bea','Femmina','djfw3643','Ice','Beatrice','Coraggioso',1997,'Genova',3210259997,'Ingegneria Nav');
INSERT INTO Utente VALUES('Micki','Femmina','sbd7wee','Mik','Michela','Mustorgi',1997,'Lavagna',3201598745,'Economia');
INSERT INTO Utente VALUES('Carl','Maschio','dsfr34fr','LuCarl','Luca','Carlini',1997,'Lavagna',3201568745,'Matematica');
INSERT INTO Utente VALUES('Teo','Maschio','df4sedfrt','Vido','Matteo','Vidotto',1996,'Lavagna',3562146980,'Ingegneria Informatica');
INSERT INTO Utente VALUES('Erika','Femmina','dfsdg34','Er','Erica','Ghiorzo',1996,'Lavagna',3201456874,'Scienze Biologiche');
INSERT INTO Utente VALUES('Cece','Femmina','hdgf4y4','Cecia','Cecilia','Oneto',1998,'Genova',3201569874,'Matematica');
INSERT INTO Utente VALUES('Colli','Femmina','dfg67yfrf','Col','ssia','Colace',1996,'Lavagna',32015687490,'Matematica');
INSERT INTO Utente VALUES('Pedro','Maschio','dgtr432e','P','Cioiui','Pedriga',1984,'Prest',2015687460,'Informatica');
INSERT INTO Utente VALUES('Albi','Maschio','dsfer6gh','Albi99','Alberto','Artioli',1999,'Lavagna',3256874569,'Scienze Politiche Internazionali');
INSERT INTO Utente VALUES('Ale','Maschio','ewfby54','Sav','Alessandro','Savona',1996,'Genova',3201574698,'Informatica');
INSERT INTO Utente VALUES('Bimba98','Femmina','swdfwer4','Bimba','Anna','De Luca',1998,'Lavagna',3205698413,'Giurisprudenza');
INSERT INTO Utente VALUES('Dan','Maschio','jdjj76deb','Tolst','Daniel','Tolstenco',1995,'Genova',3256987066,'Ingegneria Nav');
INSERT INTO Utente VALUES('Cangio','Maschio','dhsdfv6','Jack','Giacomo','Cangioloni',1997,'Addis Abeba',3654789210,'Matematica');
INSERT INTO Utente VALUES('Jack','Maschio','uegf7ee','Jack97','Giacomo','Usai',1997,'Genova',3654120982,'Informatica');
INSERT INTO Utente VALUES('Gughi','Maschio','dgnij2ik','Gughi98','Guglielmo','Chiavarini',1998,'Genova',3336985214,'Ingegneria Nav');
INSERT INTO Utente VALUES('Meso','Maschio','dfjnnew34','Meso96','Luca','Mesiti',1996,'Lavagna',3002568976,'Matematica');
INSERT INTO Utente VALUES('Mickie','Femmina','dsjfw34nk','Mik','Michela','Gardella',1995,'Genova',3665588991,'Giurisprudenza');
INSERT INTO Utente VALUES('Cane','Maschio','lpasskd2','Tommy','Tommaso','Canepa',1998,'Genova',3221155698,'Giurisprudenza');
INSERT INTO Utente VALUES('Enzo','Maschio','kasmfo3r','Vince','Vincenzo','Terraciano',1993,'Napoli',3669888522,'Informatica');
INSERT INTO Utente VALUES('Sacco','Maschio','lsdfkwjf9','ASacco','Andrea','Saccomanno',1996,'Lavagna',3222556877,'Ingegneria Informatica');
INSERT INTO Utente VALUES('Annina','Femmina','dsgmrwe3a','Que','Anna','Queirolo',1997,'Lavagna',3556698744,'Scienze Ambientali');
INSERT INTO Utente VALUES('ChiaMo','Femmina','dg6sdff','Chia','Chiara','Motta',1997,'Genova',3654788999,'Scienze Ambientali');
INSERT INTO Utente VALUES('LaDe','Femmina','kasifh32','Lalla','Laura','De Moro',1997,'Genova',3215568767,'Ingegneria Biomedica');
INSERT INTO Utente VALUES('Castel','Maschio','ppkferhg34','Iggi','Luigi','Castello',1997,'Lavagna',3654887749,'Scienze Politiche Internazionali');
INSERT INTO Utente VALUES('Giecchi','Maschio','nvsdh234r','Gick','Giacomo','Longo',1997,'Lavagna',3356849766,'Ingegneria Informatica');
INSERT INTO Utente VALUES('Aladimpa','Femmina','ue332nfji','Rob','Roberta','Tassara',1997,'Lavagna',3569997418,'Ingegneria Informatica');
INSERT INTO Utente VALUES('Svano','Maschio','jf3rjuuw3','Svanok','Lorenzo','Svanosio',1997,'Lavagna',3368755144,'Informatica');
INSERT INTO Utente VALUES('Onne','Maschio','ij2k4tdd','Onne95','Andrea','Oneto',1995,'Lavagna',3356698758,'Scienze Ambientali');
INSERT INTO Utente VALUES('Bresaolo','Maschio','uh45uu3e','Tizzi','Tiziano','Firpo',1997,'Savona',3365499855,'Informatica');
INSERT INTO Utente VALUES('Porci','Maschio','iiuh34bb','Porci','Lorenzo','Porcile',1995,'Lavagna',3325688994,'Informatica');
INSERT INTO Utente VALUES('GaGhi','Femmina','df45erd','Ghia','Gaia','Zignaigo',1997,'Lavagna',3574865788,'Scienze dell Architettura');
INSERT INTO Utente VALUES('Pier','Maschio','d45wdx4','Pi','Pierluigi','Usuroni',1999,'Genova',3233655639,'Matematica');
INSERT INTO Utente VALUES('Gian','Maschio','hhu4345','Infi','Gianfranco','Infiltrini',1999,'Genova',3556588877,'Scienze Ambientali');
INSERT INTO Utente VALUES('Cos','Maschio','jkj12jii','Cos','Cosimo','Tristetti',1998,'Genova',3525898768,'Economia');
INSERT INTO Utente VALUES('Gu','Maschio','liy45ui','Gua','Gualtiero','Filippeschi',1998,'Genova',3897754486,'Odontoiatria');
INSERT INTO Utente VALUES('BruDise','Maschio','lqu3uo','Bru','Bruno','Di Sera',1999,'Genova',3656998977,'Giurisprudenza');
INSERT INTO Utente VALUES('Ci','Maschio','poee355e','Ci','Ciro','Calcioni',1999,'Lavagna',3656536589,'Scienze Biologiche');
INSERT INTO Utente VALUES('Scu','Femmina','oelle234n','Scu','Chiara','Scurini',1999,'Lavagna',3255456699,'Ingegneria Informatica');
INSERT INTO Utente VALUES('Osvi','Maschio','iiurh34','Os','Osvaldo','Coraggioni',1999,'Lavagna',3636652014,'Psicologia');
INSERT INTO Utente VALUES('Mem','Maschio','iowfu34','Ern','Ernesto','Memoni',1999,'Genova',356987598255,'Scienze Ambientali');
INSERT INTO Utente VALUES('Raspa','Maschio','bvtgc34','Ub','Ubaldo','Raspini',1999,'Torino',32025688775,'Psicologia');
INSERT INTO Utente VALUES('Anzia','Maschio','jnk34ki','Anz','Carlo','Anzianotti',1999,'Milano',3659856875,'Economia');
INSERT INTO Utente VALUES('Malor','Maschio','klehuh44','Mal','Walter','Malorini',1999,'Milano',36369858754,'Scienze Biologiche');
INSERT INTO Utente VALUES('Lungo','Maschio','cbvy34bj','Long','Pierfrancesco','Lungoni',1999,'Milano',3256987568,'Odontoiatria');
INSERT INTO Utente VALUES('Inventa','Femmina','bjbh45j','Inv','Beatrice','Inventini',1999,'Genova',3256585858,'Ingegneria Biomedica');
INSERT INTO Utente VALUES('LL','Maschio','bhhi34f','Lo','Lorenzo','Lorenzotti',1999,'Genova',325684584,'Ingegneria Nav');
INSERT INTO Utente VALUES('Castro','Maschio','nksj45','Lu','Luca','Castricini',1998,'Genova',3214587787,'Economia');
INSERT INTO Utente VALUES('Cop','Femmina','lnb4ui','Giu','Giulia','Copello',1998,'Lavagna',32588788987,'Giurisprudenza');
INSERT INTO Utente VALUES('Vigno','Femmina','lnbvy4y7','Gio','Giorgia','Vignozzi',1997,'Genova',36259887585,'Scienze Biologiche');
INSERT INTO Utente VALUES('Eli','Femmina','nhvy7yiu','Eli','Elisa','Costa',1997,'Genova',3658658987,'Scienze Biologiche');
INSERT INTO Utente VALUES('Ila','Femmina','vhhvy5fd','Ila','Ilaria','Apuzzo',1998,'Genova',3202501001,'Ingegneria Nav');
INSERT INTO Utente VALUES('Ronca','Maschio','mbjguh5vy','Ronca','Federico','Roncagliolo',1996,'Lavagna',3256525878,'Odontoiatria');
INSERT INTO Utente VALUES('Ari','Femmina','nv8i9t6f','Ari','Ariela','Hoxha',1997,'Lavagna',3250014589,'Scienze Biologiche');
INSERT INTO Utente VALUES('Gianb','Femmina','bkih7g','Mar','Marta','Giambruno',1999,'Lavagna',320549877,'Scienze Biologiche');
INSERT INTO Utente VALUES('Pica','Maschio','jfu34','Pi','Giuseppe','Picasso',1998,'Genova',3636524178,'Economia');
INSERT INTO Utente VALUES('Cippo','Maschio','ikf78','Cippo','Davide','Cipolla',1995,'Lavagna',3625685487,'Scienze Ambientali');
INSERT INTO Utente VALUES('Cuppi','Maschio','wrg556','Cuppi','Francesco','Cupido',1996,'Genova',3620257896,'Ingegneria Informatica');
INSERT INTO Utente VALUES('Serre','Femmina','giu445','Sere','Serena','Passalacqua',1997,'Lavagna',36201558745,'Scienze Biologiche');
INSERT INTO Utente VALUES('Cla98','Femmina','wrt54dff','Cla','Clara','Gualco',1998,'Genova',32021459687,'Giurisprudenza');
INSERT INTO Utente VALUES('Steddu','Maschio','jn34lqa','Ste','Stefano','Stagno',1998,'Genova',3698785878,'Economia');
INSERT INTO Utente VALUES('Tomm','Maschio','rt54df','Tom','Tommaso','Monti',1998,'Genova',3332145878,'Giurisprudenza');
INSERT INTO Utente VALUES('Ganza','Maschio','lkn84','Ganza','Matteo','Ganzarolli',1997,'Lavagna',3200145877,'Scienze Biologiche');
INSERT INTO Utente VALUES('Ric','Maschio','knbh54o','Ric','Riccardo','Coscia',1996,'Lavagna',33242165451,'Economia');
INSERT INTO Utente VALUES('Budi','Maschio','bvg45vjh','Bu','Luca','Budano',1996,'Genova',3256858875,'Giurisprudenza');
INSERT INTO Utente VALUES('alepizz','Femmina','g54gve','','ssia','Pizzo',1998,'Lavagna',32025568988,'Economia');
INSERT INTO Utente VALUES('Benve','Femmina','gnn5oi','Ben','Elisa','Benvenuto',1996,'Genova',36654788987,'Economia');
INSERT INTO Utente VALUES('Candy','Femmina','bnjn45ny','giu','Giulia','Candiano',1997,'Genova',32025548965,'Scienze Biologiche');
INSERT INTO Utente VALUES('Derra','Maschio','ahgd677','De','Davide','Deraco',1995,'Lavagna',3369988875,'Odontoiatria');
INSERT INTO Utente VALUES('Berna','Maschio','vbehuoi34','Ber','Lorenzo','Bernardin',1996,'Lavagna',3025658987,'Matematica');
INSERT INTO Utente VALUES('Lu','Femmina','b4fdsf','Lu','Lucrezia','Vazzoler',1996,'Lavagna',366558774787,'Economia');
INSERT INTO Utente VALUES('Musso','Maschio','ajfbhiu23','Lo','Lorenzo','Musso',1995,'Lavagna',3696985820,'Matematica');
INSERT INTO Utente VALUES('Bru','Maschio','fvntio34','Lu','Luca','Bruzzone',1995,'Lavagna',322018585465,'Ingegneria Nav');
INSERT INTO Utente VALUES('GiuCane','Femmina','fsg34edf','Giu','Giulia','Canessa',1995,'Lavagna',3336874584,'Scienze dell Architettura');
INSERT INTO Utente VALUES('Gra','Maschio','biw3yr','','ssio','Granata',1995,'Genova',3665874898,'Matematica');
INSERT INTO Utente VALUES('Marghe','Femmina','fbui34f','Mar','Margherita','Santarello',1995,'Genova',369878855,'Scienze Ambientali');
INSERT INTO Utente VALUES('Sasha','Maschio','df4efd','','ssandro','Silvestrini',1995,'Genova',3369877747,'Matematica');
INSERT INTO Utente VALUES('Foca','Femmina','bt4sd','Fo','Giulia','Focarelli',1995,'Genova',3369878585,'Economia');
INSERT INTO Utente VALUES('Denni','Femmina','ffwrf43','De','Denis','Fregonara',1997,'Lavagna',3668477865,'Scienze Biologiche');
INSERT INTO Utente VALUES('FraPa','Maschio','jkbjhv8','Fra','Francesco','Palli',1995,'Lavagna',3320255745,'Economia');
INSERT INTO Utente VALUES('Kry','Femmina','hkg7hb','K','Krystal','Coluccini',1998,'Lavagna',3640552100,'Psicologia');
INSERT INTO Utente VALUES('Duddu','Maschio','hkv7hn','D','Andrea','Dufour',1995,'Lavagna',3698575820,'Scienze dell Architettura');
INSERT INTO Utente VALUES('Maria','Femmina','jn45uer','ele','Elena Maria','Coppola',1995,'Lavagna',3698758584,'Giurisprudenza');
INSERT INTO Utente VALUES('Pedra','Femmina','dfnioert3','Nic','Nicole','Pedrazza',1996,'Lavagna',3654472010,'Psicologia');
INSERT INTO Utente VALUES('Lamb','Maschio','fg67vh3','Andre','Andrea','Agnelli',1997,'Lavagna',33698585200,'Economia');
INSERT INTO Utente VALUES('Madda','Maschio','ver4f30','And','Andrea','Maddaloni',1995,'Lavagna',30114885880,'Giurisprudenza');
INSERT INTO Utente VALUES('Eu','Femmina','ytf76j','Eu','Eugenia','Boero',1995,'Lavagna',3365220011,'Economia');
INSERT INTO Utente VALUES('Briga','Femmina','in34','Lore','Loredana','Brighina',1996,'Lavagna',3365585478,'Psicologia');
INSERT INTO Utente VALUES('Usbe','Femmina','jhvyu78','Mar','Marta','Usberti',1997,'Genova',3365252101,'Economia');
INSERT INTO Utente VALUES('Tora','Maschio','j6fh8yy','Da','Davide','Torarolo',1995,'Lavagna',3365244755,'Scienze Ambientali');
INSERT INTO Utente VALUES('Lori','Femmina','fg43fr','Lo','Lorenza','Ghisu',1996,'Genova',352456875258,'Scienze dell Architettura');
INSERT INTO Utente VALUES('Macchia','Femmina','f56ru','Sara','Sara','Macchiavello',1995,'Genova',3554873521,'Ingegneria Biomedica');
INSERT INTO Utente VALUES('Cata','Femmina','f34ffc','Eli','Elisa','Catassi',1998,'Lavagna',3336998855,'Scienze Biologiche');
INSERT INTO Utente VALUES('Cla','Femmina','3no43','Cla','Clauzia Erika','Lanata',1996,'Lavagna',36888542258,'Economia');
INSERT INTO Utente VALUES('Penny','Femmina','hgfytr65rfg','Pen','Penelope','Carnevali',1997,'Lavagna',3235488754,'Psicologia');
INSERT INTO Utente VALUES('Lillo','Maschio','jhv6fhu','lo','Lorenzo','Sogliani',1996,'Lavagna',33201012554,'Ingegneria Informatica');
INSERT INTO Utente VALUES('FraFi','Femmina','vrf43fs','Fra','Francesca','Figari',1997,'Lavagna',33368954416,'Scienze dell Architettura');
INSERT INTO Utente VALUES('Gre','Femmina','hgyut667','Gre','Gren','Janko',1997,'Lavagna',3368715418,'Scienze Ambientali');
INSERT INTO Utente VALUES('Verro','Femmina','fvyu434v','Ve','Veronica','Rizzi',1998,'Lodi',3302144485,'Scienze Biologiche');
INSERT INTO Utente VALUES('Fabi','Femmina','cwef34d','Fa','Fabiola','Campanella',1998,'Genova',355254464,'Psicologia');
INSERT INTO Utente VALUES('Sha','Femmina','vfe34d','Sha','Sharon','Gennaro',1997,'Lavagna',3641184665,'Economia');
INSERT INTO Utente VALUES('Sav','Maschio','sd4rdcc','El','Elia','Savino',1998,'Lavagna',33200121564,'Ingegneria Biomedica');
INSERT INTO Utente VALUES('Gal','Maschio','dcwg78vs','Fede','Federico','Gallio',1997,'Genova',3645318120,'Ingegneria Informatica');
INSERT INTO Utente VALUES('Pan','Femmina','ver4t3d0','Sil','Silvia','Panesi',1998,'Genova',3698584487,'Giurisprudenza');
INSERT INTO Utente VALUES('Pagans','Maschio','wdf34df','Pag','Andrea','Pagano',1994,'Lavagna',3546516548,'Matematica');
INSERT INTO Utente VALUES('Sche','Maschio','jyfvg67fh','Andre','Andrea','Schenardi',1998,'Genova',336255574,'Giurisprudenza');
INSERT INTO Utente VALUES('Marti','Femmina','wec343','Mar','Martina','Arancio',1998,'Lavagna',320546540232,'Scienze Biologiche');
INSERT INTO Utente VALUES('Mis','Femmina','bibf43','Anna','Anna','Misul',1998,'Lavagna',33313545445,'Matematica');
INSERT INTO Utente VALUES('Revve','Femmina','dcsc3443','Gra','Grazia','Revello',1997,'Lavagna',33201101455,'Scienze dell Architettura');
INSERT INTO Utente VALUES('Riccio','Maschio','hcfgb32','Ric','Riccardo','Ricci',1994,'Genova',32154515545,'Scienze Biologiche');
INSERT INTO Utente VALUES('Lucy','Femmina','fwfr3ghv','Lucy','Arianna','Lentile',1996,'Genova',3335452654654,'Psicologia');
INSERT INTO Utente VALUES('Leo','Maschio','dvg764','Leo','Leonardo','Sehnert',1995,'Genova',3635848464852,'Informatica');
INSERT INTO Utente VALUES('Amed','Maschio','dcerg3w','Am','Amedeo','Cuneo',1997,'Genova',330012545421,'Ingegneria Biomedica');
INSERT INTO Utente VALUES('AGiu','Femmina','cew34f','Giu','Anna','Giusto',1998,'Genova',3335545454,'Giurisprudenza');
INSERT INTO Utente VALUES('GioMarc','Maschio','fv3r43f','Gio','Giovanni','Marchi',1995,'Lavagna',354464021,'Scienze Biologiche');
INSERT INTO Utente VALUES('Della','Femmina','cv34fc','','ssia','Della Fazia',1998,'Genova',333044640,'Ingegneria Biomedica');
INSERT INTO Utente VALUES('Ines','Femmina','vby67vhu','Romi','Romilla','Dalla Corte',1997,'Lavagna',3396754889,'Scienze Biologiche');
INSERT INTO Utente VALUES('GrePa','Femmina','sdxwqed','Gre','Greta','Parodi',1995,'Lavagna',3369880010,'Scienze Politiche Internazionali');
INSERT INTO Utente VALUES('Fedina','Femmina','f65ytf','Fe','Federica','Di Naro',1997,'Lavagna',33324544552,'Scienze Biologiche');
INSERT INTO Utente VALUES('Bruggia','Maschio','cb6734fg','Bru','Bruno','Viviani',1997,'Genova',33652240255,'Scienze Politiche Internazionali');
INSERT INTO Utente VALUES('Gandalf','Femmina','v76fr56r','Eri','Erica','Gandolfo',1996,'Genova',33022154810,'Scienze Politiche Internazionali');
INSERT INTO Utente VALUES('CaroCa','Femmina','cfv334f','Caro','Carola','Capurro',1996,'Lavagna',3201148500,'Scienze Politiche Internazionali');
INSERT INTO Utente VALUES('Barba','Femmina','cec3sa','ari','Arianna','Barbagelata',1997,'Lavagna',3366854878,'Scienze Biologiche');
INSERT INTO Utente VALUES('Olli','Maschio','dsvc43fsd','Olli','Lorenzo','Olivari',1997,'Genova',33694898855,'Scienze Politiche Internazionali');
INSERT INTO Utente VALUES('Berta','Femmina','verv34f','Sil','Silvia','Bertuccio',1995,'Genova',3131841251,'Scienze Politiche Internazionali');
INSERT INTO Utente VALUES('DeVince','Femmina','cfev4334','Sa','Sara','De Vincenzi',1996,'Lavagna',3335346452,'Scienze Biologiche');
INSERT INTO Utente VALUES('LaGu','Femmina','cvw243rf','Gu','Guya','Stefanel',1998,'Lavagna',3301145200,'Economia');
INSERT INTO Utente VALUES('Polve','Maschio','dcb45','Mat','Mattia','Polverino',1997,'Genova',3322833650,'Ingegneria Nav');
INSERT INTO Utente VALUES('Boris','Maschio','dcv3bh45','Andre','Andrea','Russo',1997,'Lavagna',33668522400,'Economia');
INSERT INTO Utente VALUES('Nit','Femmina','fv4qtdg','Nita','Nitana','Tondo',1997,'Genova',3368445598,'Economia');
INSERT INTO Utente VALUES('Dessa','Maschio','fv439hi','Lu','Luca','Dessalvi',1995,'Lavagna',3300032568,'Matematica');
INSERT INTO Utente VALUES('Nana','Femmina','ds099df','Gio','Giorgia','Benedetti',1999,'Lavagna',33689575456,'Scienze Politiche Internazionali');
INSERT INTO Utente VALUES('Mano','Femmina','kjh10h0','','ssandra','Francomano',1996,'Lavagna',33368456498,'Economia');
INSERT INTO Utente VALUES('Colomba','Femmina','bc09hwadc','Rob','Roberta','Colombini',1999,'Lavagna',336600125441,'Economia');
INSERT INTO Utente VALUES('Shaddy','Maschio','b889ehf','Jack','Giacomo','Catozzo',1996,'Lavagna',330023355465,'Economia');
INSERT INTO Utente VALUES('GiuMin','Femmina','hbou0db','Giu','Giulia','Mingardi',1997,'Lavagna',3336401458,'Scienze Politiche Internazionali');
INSERT INTO Utente VALUES('Eugi','Maschio','fv3rfveg','Eugi','Eugenio','Pagano',1997,'Lavagna',33622202653,'Psicologia');


INSERT INTO Squadra VALUES('Alpha','in formazione','blu',5,6,'Forza Genoa','Niente da segnalare','simocampi');
INSERT INTO Squadra VALUES('Bravo','in formazione','verde',6,7,'Siamo forti','Niente da notare','dapu97');
INSERT INTO Squadra VALUES('Charlie','in formazione','rosso',5,6,'Ad Victoriam','Niente da segnalare','Bibi98');
INSERT INTO Squadra VALUES('Delta','in formazione','nero',5,5,'Memento Audere Semper','La squadra pi? quotata','ilManzo');
INSERT INTO Squadra VALUES('Echo','in formazione','giallo',5,5,'Vinciamo','Niente da notare','IlRoss');
INSERT INTO Squadra VALUES('Foxtrot','in formazione','viola',5,5,'Poweranza in abbondanza','Niente da segnalare','Arma96');
INSERT INTO Squadra VALUES('Golf','in formazione','bianco',5,6,'Vinciamo noi','Niente da segnalare','Storac');
INSERT INTO Squadra VALUES('Hotel','in formazione','rosa',6,7,'Non ci batte nessuno','Niente da segnalare','EliZazze98');
INSERT INTO Squadra VALUES('India','in formazione','arancione',5,5,'Potere ai piccoli','Niente da segnalare','sofii');
INSERT INTO Squadra VALUES('Juliet','in formazione','azzurro',5,6,'Hic Sunt Leones','Niente da segnalare','Gelll');
INSERT INTO Squadra VALUES('Kilo','in formazione','grigio',6,7,'Forza Samp','Niente da segnalare','SimoGiro');
INSERT INTO Squadra VALUES('Lima','in formazione','fucsia',2,2,'I Federel dei poveri','Niente da segnalare','Carott');
INSERT INTO Squadra VALUES('Mike','in formazione','marrone',2,2,'Road to Wimbledon','Niente da segnalare','MassiDesa92');
INSERT INTO Squadra VALUES('November','in formazione','panna',6,7,'Pronti a vincere','Niente da segnalare','elcarrubs');
INSERT INTO Squadra VALUES('Oscar','in formazione','oro',6,8,'Volley Master','Niente da segnalare','Gelll');
INSERT INTO Squadra VALUES('Papa','in formazione','verde acqua',5,5,'Calciatori nati','Niente da segnalare','Verdi90');
INSERT INTO Squadra VALUES('Quebec','in formazione','rosso',6,7,'Dagghe','Niente da segnalare','MarcGiuli');
INSERT INTO Squadra VALUES('Romeo','in formazione','verde',6,7,'Viva noi','Niente da segnalare','Fraaaa');
INSERT INTO Squadra VALUES('Sierra','in formazione','blu',6,7,'Viva lo sport','Niente da segnalare','Maggioo92');
INSERT INTO Squadra VALUES('Tango','in formazione','azzurro',6,7,'Siamo una squadra fortissimi','Niente da notare','ErikPerti');
INSERT INTO Squadra VALUES('Uniform','in formazione','bianco',6,7,'Forza','Niente da notare','Provagg');
INSERT INTO Squadra VALUES('Victor','in formazione','giallo',6,7,'Vicitori','Niente da notare','FaVince85');
INSERT INTO Squadra VALUES('Whiskey','in formazione','arancione',6,7,'Come on','','Moncuu');
INSERT INTO Squadra VALUES('X-Ray','in formazione','blu',5,6,'Pronti','','SimoGaviz');
INSERT INTO Squadra VALUES('Yankee','in formazione','Giallo',6,7,'Vinceremo','','Bofabi');
INSERT INTO Squadra VALUES('Zulu','in formazione','rosso',6,7,'VolleyLovers','','Boe96');
INSERT INTO Squadra VALUES('1','in formazione','viola',5,5,'CalcioLovers','','Schiappa96');
INSERT INTO Squadra VALUES('2','in formazione','rosa',2,3,'TennisLovers','','Marli_one');
INSERT INTO Squadra VALUES('3','in formazione','verde',6,7,'VolleyForLife','','Foc');
--Inserimento per testing
INSERT INTO Squadra VALUES('Test','in formazione','rosso',6,7,'Test funzioni','per testare le funzioni sulle squadre','dapu97');
--------


--Inserimento per testing
INSERT INTO Candidato VALUES('Storac','Test','non valutato','capitano');
INSERT INTO Candidato VALUES('Jack','Test','non valutato','giocatore');
INSERT INTO Candidato VALUES('Gughi','Test','non valutato','giocatore');
INSERT INTO Candidato VALUES('Meso','Test','non valutato','giocatore');
INSERT INTO Candidato VALUES('Mickie','Test','non valutato','giocatore');
INSERT INTO Candidato VALUES('Enzo','Test','non valutato','arbitro');
--------

INSERT INTO Candidato VALUES('simocampi','Alpha','accettato','capitano');
INSERT INTO Candidato VALUES('Ste','Alpha','accettato','giocatore');
INSERT INTO Candidato VALUES('Fountainbleau','Alpha','accettato','giocatore');
INSERT INTO Candidato VALUES('Damont','Alpha','accettato','giocatore');
INSERT INTO Candidato VALUES('DaVac','Alpha','accettato','giocatore');
INSERT INTO Candidato VALUES('Elotti','Alpha','accettato','arbitro');

INSERT INTO Candidato VALUES('dapu97','Bravo','accettato','capitano');
INSERT INTO Candidato VALUES('Strafo','Bravo','accettato','giocatore');
INSERT INTO Candidato VALUES('Chia','Bravo','accettato','giocatore');
INSERT INTO Candidato VALUES('Sacco','Bravo','accettato','giocatore');
INSERT INTO Candidato VALUES('Annina','Bravo','accettato','giocatore');
INSERT INTO Candidato VALUES('Svano','Bravo','accettato','giocatore');
INSERT INTO Candidato VALUES('Pier','Bravo','accettato','giocatore');

INSERT INTO Candidato VALUES('Bibi98','Charlie','accettato','capitano');
INSERT INTO Candidato VALUES('Bea','Charlie','accettato','giocatore');
INSERT INTO Candidato VALUES('Micki','Charlie','accettato','giocatore');
INSERT INTO Candidato VALUES('Carl','Charlie','accettato','giocatore');
INSERT INTO Candidato VALUES('Teo','Charlie','accettato','giocatore');
INSERT INTO Candidato VALUES('Albi','Charlie','accettato','arbitro');

INSERT INTO Candidato VALUES('ilManzo','Delta','accettato','capitano');
INSERT INTO Candidato VALUES('Luca','Delta','accettato','giocatore');
INSERT INTO Candidato VALUES('SofiSofi','Delta','accettato','giocatore');
INSERT INTO Candidato VALUES('Raffa','Delta','accettato','giocatore');
INSERT INTO Candidato VALUES('Pimpi','Delta','accettato','giocatore');

INSERT INTO Candidato VALUES('IlRoss','Echo','accettato','capitano');
INSERT INTO Candidato VALUES('Erika','Echo','accettato','giocatore');
INSERT INTO Candidato VALUES('Cece','Echo','accettato','giocatore');
INSERT INTO Candidato VALUES('Colli','Echo','accettato','giocatore');
INSERT INTO Candidato VALUES('Pedro','Echo','accettato','giocatore');

INSERT INTO Candidato VALUES('Arma96','Foxtrot','accettato','capitano');
INSERT INTO Candidato VALUES('Ale','Foxtrot','accettato','giocatore');
INSERT INTO Candidato VALUES('Bimba98','Foxtrot','accettato','giocatore');
INSERT INTO Candidato VALUES('Dan','Foxtrot','accettato','giocatore');
INSERT INTO Candidato VALUES('Cangio','Foxtrot','accettato','giocatore');

INSERT INTO Candidato VALUES('Storac','Golf','accettato','capitano');
INSERT INTO Candidato VALUES('Jack','Golf','accettato','giocatore');
INSERT INTO Candidato VALUES('Gughi','Golf','accettato','giocatore');
INSERT INTO Candidato VALUES('Meso','Golf','accettato','giocatore');
INSERT INTO Candidato VALUES('Mickie','Golf','accettato','giocatore');
INSERT INTO Candidato VALUES('Enzo','Golf','accettato','arbitro');

INSERT INTO Candidato VALUES('EliZazze98','Hotel','accettato','capitano');
INSERT INTO Candidato VALUES('Bru','Hotel','accettato','giocatore');
INSERT INTO Candidato VALUES('Ci','Hotel','accettato','giocatore');
INSERT INTO Candidato VALUES('Scu','Hotel','accettato','giocatore');
INSERT INTO Candidato VALUES('Osvi','Hotel','accettato','giocatore');
INSERT INTO Candidato VALUES('Mem','Hotel','accettato','giocatore');
INSERT INTO Candidato VALUES('Raspa','Hotel','accettato','giocatore');

INSERT INTO Candidato VALUES('sofii','India','accettato','capitano');
INSERT INTO Candidato VALUES('LaDe','India','accettato','giocatore');
INSERT INTO Candidato VALUES('Onne','India','accettato','giocatore');
INSERT INTO Candidato VALUES('GaGhi','India','accettato','giocatore');
INSERT INTO Candidato VALUES('Giecchi','India','accettato','giocatore');

INSERT INTO Candidato VALUES('Gelll','Juliet','accettato','capitano');
INSERT INTO Candidato VALUES('Castel','Juliet','accettato','giocatore');
INSERT INTO Candidato VALUES('FantiAlb','Juliet','accettato','giocatore');
INSERT INTO Candidato VALUES('ChiaMo','Juliet','accettato','giocatore');
INSERT INTO Candidato VALUES('Bresaolo','Juliet','accettato','giocatore');
INSERT INTO Candidato VALUES('Eleee98','Juliet','accettato','arbitro');

INSERT INTO Candidato VALUES('SimoGiro','Kilo','accettato','capitano');
INSERT INTO Candidato VALUES('Malor','Kilo','accettato','giocatore');
INSERT INTO Candidato VALUES('Lungo','Kilo','accettato','giocatore');
INSERT INTO Candidato VALUES('Inventa','Kilo','accettato','giocatore');
INSERT INTO Candidato VALUES('LL','Kilo','accettato','giocatore');
INSERT INTO Candidato VALUES('Castro','Kilo','accettato','giocatore');
INSERT INTO Candidato VALUES('Cop','Kilo','accettato','arbitro');

INSERT INTO Candidato VALUES('Carott','Lima','accettato','capitano');
INSERT INTO Candidato VALUES('Ronca','Lima','accettato','giocatore');


INSERT INTO Candidato VALUES('MassiDesa92','Mike','accettato','capitano');
INSERT INTO Candidato VALUES('Ari','Mike','accettato','giocatore');

INSERT INTO Candidato VALUES('elcarrubs','November','accettato','capitano');
INSERT INTO Candidato VALUES('Gianb','November','accettato','giocatore');
INSERT INTO Candidato VALUES('Pica','November','accettato','giocatore');
INSERT INTO Candidato VALUES('Cippo','November','accettato','giocatore');
INSERT INTO Candidato VALUES('Cuppi','November','accettato','giocatore');
INSERT INTO Candidato VALUES('Serre','November','accettato','giocatore');
INSERT INTO Candidato VALUES('Cla98','November','accettato','arbitro');

INSERT INTO Candidato VALUES('Frank89','Oscar','accettato','capitano');
INSERT INTO Candidato VALUES('Ric','Oscar','accettato','giocatore');
INSERT INTO Candidato VALUES('Budi','Oscar','accettato','giocatore');
INSERT INTO Candidato VALUES('alepizz','Oscar','accettato','giocatore');
INSERT INTO Candidato VALUES('Benve','Oscar','accettato','giocatore');
INSERT INTO Candidato VALUES('Candy','Oscar','accettato','giocatore');
INSERT INTO Candidato VALUES('Berna','Oscar','accettato','arbitro');
INSERT INTO Candidato VALUES('Derra','Oscar','accettato','giocatore');

INSERT INTO Candidato VALUES('Verdi90','Papa','accettato','capitano');
INSERT INTO Candidato VALUES('Musso','Papa','accettato','giocatore');
INSERT INTO Candidato VALUES('Shaddy','Papa','accettato','giocatore');
INSERT INTO Candidato VALUES('GiuCane','Papa','accettato','giocatore');
INSERT INTO Candidato VALUES('Gra','Papa','accettato','giocatore');

INSERT INTO Candidato VALUES('MarcGiuli','Quebec','accettato','capitano');
INSERT INTO Candidato VALUES('Marghe','Quebec','accettato','giocatore');
INSERT INTO Candidato VALUES('Sasha','Quebec','accettato','giocatore');
INSERT INTO Candidato VALUES('Foca','Quebec','accettato','giocatore');
INSERT INTO Candidato VALUES('Denni','Quebec','accettato','giocatore');
INSERT INTO Candidato VALUES('FraPa','Quebec','accettato','giocatore');
INSERT INTO Candidato VALUES('Kry','Quebec','accettato','arbitro');

INSERT INTO Candidato VALUES('Fraaaa','Romeo','accettato','capitano');
INSERT INTO Candidato VALUES('Maria','Romeo','accettato','giocatore');
INSERT INTO Candidato VALUES('Pedra','Romeo','accettato','giocatore');
INSERT INTO Candidato VALUES('Lamb','Romeo','accettato','giocatore');
INSERT INTO Candidato VALUES('Madda','Romeo','accettato','giocatore');
INSERT INTO Candidato VALUES('Eu','Romeo','accettato','giocatore');
INSERT INTO Candidato VALUES('Usbe','Romeo','accettato','arbitro');

INSERT INTO Candidato VALUES('Maggioo92','Sierra','accettato','capitano');
INSERT INTO Candidato VALUES('Tora','Sierra','accettato','giocatore');
INSERT INTO Candidato VALUES('Lori','Sierra','accettato','giocatore');
INSERT INTO Candidato VALUES('Macchia','Sierra','accettato','giocatore');
INSERT INTO Candidato VALUES('Cata','Sierra','accettato','giocatore');
INSERT INTO Candidato VALUES('Cla','Sierra','accettato','giocatore');
INSERT INTO Candidato VALUES('Lillo','Sierra','accettato','arbitro');

INSERT INTO Candidato VALUES('ErikPerti','Tango','accettato','capitano');
INSERT INTO Candidato VALUES('FraFi','Tango','accettato','giocatore');
INSERT INTO Candidato VALUES('Gre','Tango','accettato','giocatore');
INSERT INTO Candidato VALUES('Verro','Tango','accettato','giocatore');
INSERT INTO Candidato VALUES('Fabi','Tango','accettato','giocatore');
INSERT INTO Candidato VALUES('Sha','Tango','accettato','giocatore');
INSERT INTO Candidato VALUES('Gal','Tango','accettato','arbitro');

INSERT INTO Candidato VALUES('Provagg','Uniform','accettato','capitano');
INSERT INTO Candidato VALUES('Pan','Uniform','accettato','giocatore');
INSERT INTO Candidato VALUES('Pagans','Uniform','accettato','giocatore');
INSERT INTO Candidato VALUES('Sche','Uniform','accettato','giocatore');
INSERT INTO Candidato VALUES('Marti','Uniform','accettato','giocatore');
INSERT INTO Candidato VALUES('Mis','Uniform','accettato','giocatore');
INSERT INTO Candidato VALUES('Riccio','Uniform','accettato','arbitro');

INSERT INTO Candidato VALUES('FaVince85','Victor','accettato','capitano');
INSERT INTO Candidato VALUES('Lucy','Victor','accettato','giocatore');
INSERT INTO Candidato VALUES('Leo','Victor','accettato','giocatore');
INSERT INTO Candidato VALUES('Amed','Victor','accettato','giocatore');
INSERT INTO Candidato VALUES('AGiu','Victor','accettato','giocatore');
INSERT INTO Candidato VALUES('GioMarc','Victor','accettato','giocatore');
INSERT INTO Candidato VALUES('Eugi','Victor','accettato','arbitro');

INSERT INTO Candidato VALUES('Moncuu','Whiskey','accettato','capitano');
INSERT INTO Candidato VALUES('Briga','Whiskey','accettato','giocatore');
INSERT INTO Candidato VALUES('Penny','Whiskey','accettato','giocatore');
INSERT INTO Candidato VALUES('Sav','Whiskey','accettato','giocatore');
INSERT INTO Candidato VALUES('Revve','Whiskey','accettato','giocatore');
INSERT INTO Candidato VALUES('Della','Whiskey','accettato','giocatore');
INSERT INTO Candidato VALUES('Ines','Whiskey','accettato','arbitro');

INSERT INTO Candidato VALUES('SimoGaviz','X-Ray','accettato','capitano');
INSERT INTO Candidato VALUES('Anzia','X-Ray','accettato','giocatore');
INSERT INTO Candidato VALUES('Vigno','X-Ray','accettato','giocatore');
INSERT INTO Candidato VALUES('Eli','X-Ray','accettato','giocatore');
INSERT INTO Candidato VALUES('Ila','X-Ray','accettato','giocatore');
INSERT INTO Candidato VALUES('Gu','X-Ray','accettato','giocatore');


INSERT INTO Candidato VALUES('Bofabi','Yankee','accettato','capitano');
INSERT INTO Candidato VALUES('Cos','Yankee','accettato','giocatore');
INSERT INTO Candidato VALUES('Gian','Yankee','accettato','giocatore');
INSERT INTO Candidato VALUES('Steddu','Yankee','accettato','giocatore');
INSERT INTO Candidato VALUES('Tomm','Yankee','accettato','giocatore');
INSERT INTO Candidato VALUES('Ganza','Yankee','accettato','giocatore');
INSERT INTO Candidato VALUES('Lu','Yankee','accettato','arbitro');

INSERT INTO Candidato VALUES('Boe96','Zulu','accettato','capitano');
INSERT INTO Candidato VALUES('Duddu','Zulu','accettato','giocatore');
INSERT INTO Candidato VALUES('GrePa','Zulu','accettato','giocatore');
INSERT INTO Candidato VALUES('Fedina','Zulu','accettato','giocatore');
INSERT INTO Candidato VALUES('Bruggia','Zulu','accettato','giocatore');
INSERT INTO Candidato VALUES('Gandalf','Zulu','accettato','giocatore');
INSERT INTO Candidato VALUES('CaroCa','Zulu','accettato','arbitro');

INSERT INTO Candidato VALUES('Schiappa96','1','accettato','capitano');
INSERT INTO Candidato VALUES('Barba','1','accettato','giocatore');
INSERT INTO Candidato VALUES('Olli','1','accettato','giocatore');
INSERT INTO Candidato VALUES('Berta','1','accettato','giocatore');
INSERT INTO Candidato VALUES('DeVince','1','accettato','giocatore');

INSERT INTO Candidato VALUES('Marli_one','2','accettato','capitano');
INSERT INTO Candidato VALUES('LaGu','2','accettato','giocatore');
INSERT INTO Candidato VALUES('Polve','2','accettato','arbitro');

INSERT INTO Candidato VALUES('Foc','3','accettato','capitano');
INSERT INTO Candidato VALUES('Boris','3','accettato','giocatore');
INSERT INTO Candidato VALUES('Nit','3','accettato','giocatore');
INSERT INTO Candidato VALUES('Dessa','3','accettato','giocatore');
INSERT INTO Candidato VALUES('Nana','3','accettato','giocatore');
INSERT INTO Candidato VALUES('Mano','3','accettato','giocatore');
INSERT INTO Candidato VALUES('Colomba','3','accettato','arbitro');


INSERT INTO Torneo VALUES(2,'Eliminazione Diretta','Toreno di Tennis Singolo, ad Eliminazione Diretta','singolo','Tennis','dapu97');
INSERT INTO Torneo VALUES(3,'Misto','Torneo di calcio a 5, con giorni all italina ed Eliminazione Diretta','squadre','Calcio a 5','Storac');
INSERT INTO Torneo VALUES(4,'Misto','Torneo di Tennis Singolo, con Girone all italiana ed Eliminazione Diretta','singolo','Tennis','Moncuu');
INSERT INTO Torneo VALUES(5,'Girone all italiana','Torneo di Tennis singolo, con giorni all italina','singolo','Tennis','FantiAlb');
INSERT INTO Torneo VALUES(6,'Eliminazione Diretta','Torneo di calcio a 5 ad eliminazione diretta','squadre','Calcio a 5','EdoVigno');
INSERT INTO Torneo VALUES(7,'Eliminazione Diretta','Torneo di Pallavolo ad eliminazione diretta','squadre','Pallavolo','Moncuu');
INSERT INTO Torneo VALUES(8,'Girone all italiana','Torneo di Pallavolo con giorni all italina','squadre','Pallavolo','FantiAlb');
INSERT INTO Torneo VALUES(10,'Eliminazione Diretta','Torneo di Tennis doppio a eliminazione diretta','squadre','Tennis Doppio','EdoVigno');


INSERT INTO Registra VALUES('dapu97',2);
INSERT INTO Registra VALUES('ilManzo',2);
INSERT INTO Registra VALUES('simocampi',2);
INSERT INTO Registra VALUES('Onne',2);
INSERT INTO Registra VALUES('Porci',2);
INSERT INTO Registra VALUES('Gughi',2);
INSERT INTO Registra VALUES('Sacco',2);
INSERT INTO Registra VALUES('Annina',2);

INSERT INTO Composto VALUES('Alpha',3);
INSERT INTO Composto VALUES('Charlie',3);
INSERT INTO Composto VALUES('Delta',3);
INSERT INTO Composto VALUES('Echo',3);
INSERT INTO Composto VALUES('Foxtrot',3);
INSERT INTO Composto VALUES('Golf',3);
INSERT INTO Composto VALUES('India',3);
INSERT INTO Composto VALUES('Juliet',3);

INSERT INTO Registra VALUES('dapu97',4);
INSERT INTO Registra VALUES('ilManzo',4);
INSERT INTO Registra VALUES('simocampi',4);
INSERT INTO Registra VALUES('Onne',4);
INSERT INTO Registra VALUES('Porci',4);
INSERT INTO Registra VALUES('Gughi',4);
INSERT INTO Registra VALUES('Sacco',4);
INSERT INTO Registra VALUES('Annina',4);
INSERT INTO Registra VALUES('Bimba98',4);
INSERT INTO Registra VALUES('Moncuu',4);
INSERT INTO Registra VALUES('Carl',4);
INSERT INTO Registra VALUES('Teo',4);
INSERT INTO Registra VALUES('Erika',4);
INSERT INTO Registra VALUES('Cece',4);
INSERT INTO Registra VALUES('Colli',4);
INSERT INTO Registra VALUES('Pimpi',4);

INSERT INTO Registra VALUES('Bimba98',5);
INSERT INTO Registra VALUES('Micki',5);
INSERT INTO Registra VALUES('Carl',5);
INSERT INTO Registra VALUES('Teo',5);
INSERT INTO Registra VALUES('Erika',5);
INSERT INTO Registra VALUES('Cece',5);
INSERT INTO Registra VALUES('Colli',5);
INSERT INTO Registra VALUES('Pimpi',5);

INSERT INTO Composto VALUES('Bravo',6);
INSERT INTO Composto VALUES('Golf',6);
INSERT INTO Composto VALUES('Hotel',6);
INSERT INTO Composto VALUES('Kilo',6);
INSERT INTO Composto VALUES('Juliet',6);
INSERT INTO Composto VALUES('November',6);
INSERT INTO Composto VALUES('Oscar',6);
INSERT INTO Composto VALUES('Quebec',6);
INSERT INTO Composto VALUES('X-Ray',6);
INSERT INTO Composto VALUES('Yankee',6);
INSERT INTO Composto VALUES('Whiskey',6);
INSERT INTO Composto VALUES('Victor',6);
INSERT INTO Composto VALUES('Uniform',6);
INSERT INTO Composto VALUES('Tango',6);
INSERT INTO Composto VALUES('Sierra',6);
INSERT INTO Composto VALUES('Romeo',6);

INSERT INTO Composto VALUES('Bravo',7);
INSERT INTO Composto VALUES('Hotel',7);
INSERT INTO Composto VALUES('Sierra',7);
INSERT INTO Composto VALUES('Oscar',7);
INSERT INTO Composto VALUES('Kilo',7);
INSERT INTO Composto VALUES('Tango',7);
INSERT INTO Composto VALUES('Yankee',7);
INSERT INTO Composto VALUES('Juliet',7);
INSERT INTO Composto VALUES('Quebec',7);
INSERT INTO Composto VALUES('Romeo',7);
INSERT INTO Composto VALUES('Victor',7);
INSERT INTO Composto VALUES('Whiskey',7);
INSERT INTO Composto VALUES('November',7);
INSERT INTO Composto VALUES('Uniform',7);
INSERT INTO Composto VALUES('X-Ray',7);
INSERT INTO Composto VALUES('Golf',7);

INSERT INTO Composto VALUES('Bravo',8);
INSERT INTO Composto VALUES('Hotel',8);
INSERT INTO Composto VALUES('Kilo',8);
INSERT INTO Composto VALUES('November',8);
INSERT INTO Composto VALUES('Oscar',8);
INSERT INTO Composto VALUES('Quebec',8);
INSERT INTO Composto VALUES('Zulu',8);

INSERT INTO Composto VALUES('Alpha',10);
INSERT INTO Composto VALUES('Bravo',10);
INSERT INTO Composto VALUES('Charlie',10);
INSERT INTO Composto VALUES('Delta',10);
INSERT INTO Composto VALUES('Echo',10);
INSERT INTO Composto VALUES('Foxtrot',10);
INSERT INTO Composto VALUES('Golf',10);
INSERT INTO Composto VALUES('Hotel',10);
INSERT INTO Composto VALUES('Juliet',10);
INSERT INTO Composto VALUES('Kilo',10);
INSERT INTO Composto VALUES('Lima',10);
INSERT INTO Composto VALUES('Mike',10);
INSERT INTO Composto VALUES('November',10);
INSERT INTO Composto VALUES('Oscar',10);
INSERT INTO Composto VALUES('Papa',10);
INSERT INTO Composto VALUES('Quebec',10);



INSERT INTO Evento VALUES(1,'aperto','2018-10-14 9:00','2018-10-14 9:50','Calcio a 5','Complesso Sportivo Valle Puggia',3,'girone', 'Storac');
INSERT INTO Evento VALUES(2,'aperto','2018-10-14 10:00','2018-10-14 10:50','Calcio a 5','Complesso Sportivo Valle Puggia',3,'girone','Storac');
INSERT INTO Evento VALUES(3,'aperto','2018-10-14 11:00','2018-10-14 11:50','Calcio a 5','Complesso Sportivo Valle Puggia',3,'girone','Storac');
INSERT INTO Evento VALUES(4,'aperto','2018-10-14 12:00','2018-10-14 12:50','Calcio a 5','Complesso Sportivo Valle Puggia',3,'girone','Storac');
INSERT INTO Evento VALUES(5,'aperto','2018-10-14 14:00','2018-10-14 14:50','Calcio a 5','Complesso Sportivo Valle Puggia',3,'semifinale','Storac');
INSERT INTO Evento VALUES(86,'aperto','2018-10-14 15:00','2018-10-14 15:50','Calcio a 5','Complesso Sportivo Valle Puggia',3,'semifinale','Storac');
INSERT INTO Evento VALUES(6,'aperto','2018-10-14 16:00','2018-10-14 16:50','Calcio a 5','Complesso Sportivo Valle Puggia',3,'finale','Storac');

INSERT INTO Evento VALUES(7,'aperto','2018-10-15 9:00','2018-10-15 10:50','Pallavolo','Complesso Sportivo Valle Puggia',7,'ottavi','Moncuu');
INSERT INTO Evento VALUES(8,'aperto','2018-10-15 9:00','2018-10-15 10:50','Pallavolo','Palestra Salle',7,'ottavi','Moncuu');
INSERT INTO Evento VALUES(9,'aperto','2018-10-15 11:00','2018-10-15 12:50','Pallavolo','Complesso Sportivo Valle Puggia',7,'ottavi','Moncuu');
INSERT INTO Evento VALUES(10,'aperto','2018-10-15 11:00','2018-10-15 12:50','Pallavolo','Palestra Salle',7,'ottavi','Moncuu');
INSERT INTO Evento VALUES(11,'aperto','2018-10-15 13:00','2018-10-15 14:50','Pallavolo','Complesso Sportivo Valle Puggia',7,'ottavi','Moncuu');
INSERT INTO Evento VALUES(12,'aperto','2018-10-15 13:00','2018-10-15 14:50','Pallavolo','Palestra Salle',7,'ottavi','Moncuu');
INSERT INTO Evento VALUES(13,'aperto','2018-10-15 15:00','2018-10-15 16:50','Pallavolo','Complesso Sportivo Valle Puggia',7,'ottavi','Moncuu');
INSERT INTO Evento VALUES(14,'aperto','2018-10-15 15:00','2018-10-15 16:50','Pallavolo','Palestra Salle',7,'ottavi','Moncuu');
INSERT INTO Evento VALUES(15,'aperto','2018-10-15 17:00','2018-10-15 18:50','Pallavolo','Complesso Sportivo Valle Puggia',7,'quarti','Moncuu');
INSERT INTO Evento VALUES(16,'aperto','2018-10-15 17:00','2018-10-15 18:50','Pallavolo','Palestra Salle',7,'quarti','Moncuu');
INSERT INTO Evento VALUES(17,'aperto','2018-10-15 19:00','2018-10-15 20:50','Pallavolo','Complesso Sportivo Valle Puggia',7,'quarti','Moncuu');
INSERT INTO Evento VALUES(18,'aperto','2018-10-15 19:00','2018-10-15 20:50','Pallavolo','Palestra Salle',7,'quarti','Moncuu');
INSERT INTO Evento VALUES(19,'aperto','2018-10-16 9:00','2018-10-16 10:50','Pallavolo','Complesso Sportivo Valle Puggia',7,'semifinale','Moncuu');
INSERT INTO Evento VALUES(20,'aperto','2018-10-16 9:00','2018-10-16 10:50','Pallavolo','Palestra Salle',7,'semifinale','Moncuu');
INSERT INTO Evento VALUES(21,'aperto','2018-10-16 12:00','2018-10-16 13:50','Pallavolo','Complesso Sportivo Valle Puggia',7,'finale','Moncuu');

INSERT INTO Evento VALUES(22,'aperto','2018-10-17 9:00','2018-10-17 11:50','Tennis','Complesso Sportivo Valle Puggia',2,'girone', 'Moncuu');
INSERT INTO Evento VALUES(23,'aperto','2018-10-17 9:00','2018-10-17 11:50','Tennis','Valletta Cambiaso Asd',2,'girone', 'Moncuu');
INSERT INTO Evento VALUES(24,'aperto','2018-10-17 12:00','2018-10-17 14:50','Tennis','Valletta Cambiaso Asd',2,'girone', 'Moncuu');
INSERT INTO Evento VALUES(25,'aperto','2018-10-17 12:00','2018-10-17 14:50','Tennis','Complesso Sportivo Valle Puggia',2,'girone', 'Moncuu');
INSERT INTO Evento VALUES(26,'aperto','2018-10-17 15:00','2018-10-17 17:50','Tennis','Valletta Cambiaso Asd',2,'semifinale', 'Moncuu');
INSERT INTO Evento VALUES(27,'aperto','2018-10-17 15:00','2018-10-17 17:50','Tennis','Complesso Sportivo Valle Puggia',2,'semifinale', 'Moncuu');
INSERT INTO Evento VALUES(28,'aperto','2018-10-17 19:00','2018-10-17 21:50','Tennis','Complesso Sportivo Valle Puggia',2,'finale', 'Moncuu');

INSERT INTO Evento VALUES(29,'aperto','2018-10-18 9:00','2018-10-18 9:50','Calcio a 5','Complesso Sportivo Valle Puggia',6,'ottavi', 'EdoVigno');
INSERT INTO Evento VALUES(30,'aperto','2018-10-18 9:00','2018-10-18 9:50','Calcio a 5','Bagni Italia',6,'ottavi', 'EdoVigno');
INSERT INTO Evento VALUES(31,'aperto','2018-10-18 10:00','2018-10-18 10:50','Calcio a 5','Complesso Sportivo Valle Puggia',6,'ottavi', 'EdoVigno');
INSERT INTO Evento VALUES(32,'aperto','2018-10-18 10:00','2018-10-18 10:50','Calcio a 5','Bagni Italia',6,'ottavi', 'EdoVigno');
INSERT INTO Evento VALUES(33,'aperto','2018-10-18 11:00','2018-10-18 11:50','Calcio a 5','Complesso Sportivo Valle Puggia',6,'ottavi', 'EdoVigno');
INSERT INTO Evento VALUES(34,'aperto','2018-10-18 11:00','2018-10-18 11:50','Calcio a 5','Bagni Italia',6,'ottavi', 'EdoVigno');
INSERT INTO Evento VALUES(35,'aperto','2018-10-18 12:00','2018-10-18 12:50','Calcio a 5','Complesso Sportivo Valle Puggia',6,'ottavi', 'EdoVigno');
INSERT INTO Evento VALUES(36,'aperto','2018-10-18 12:00','2018-10-18 12:50','Calcio a 5','Bagni Italia',6,'ottavi', 'EdoVigno');
INSERT INTO Evento VALUES(37,'aperto','2018-10-18 13:00','2018-10-18 13:50','Calcio a 5','Complesso Sportivo Valle Puggia',6,'quarti', 'EdoVigno');
INSERT INTO Evento VALUES(38,'aperto','2018-10-18 13:00','2018-10-18 13:50','Calcio a 5','Bagni Italia',6,'quarti', 'EdoVigno');
INSERT INTO Evento VALUES(39,'aperto','2018-10-18 14:00','2018-10-18 14:50','Calcio a 5','Complesso Sportivo Valle Puggia',6,'quarti', 'EdoVigno');
INSERT INTO Evento VALUES(40,'aperto','2018-10-18 14:00','2018-10-18 14:50','Calcio a 5','Bagni Italia',6,'quarti', 'EdoVigno');
INSERT INTO Evento VALUES(41,'aperto','2018-10-18 16:00','2018-10-18 16:50','Calcio a 5','Complesso Sportivo Valle Puggia',6,'semifinale', 'EdoVigno');
INSERT INTO Evento VALUES(42,'aperto','2018-10-18 16:00','2018-10-18 16:50','Calcio a 5','Bagni Italia',6,'semifinale', 'EdoVigno');
INSERT INTO Evento VALUES(43,'aperto','2018-10-18 18:00','2018-10-18 18:50','Calcio a 5','Complesso Sportivo Valle Puggia',6,'finale', 'EdoVigno');

INSERT INTO Evento VALUES(44,'aperto','2018-10-19 9:00','2018-10-19 11:50','Tennis Doppio','Complesso Sportivo Valle Puggia',10,'ottavi', 'EdoVigno');
INSERT INTO Evento VALUES(45,'aperto','2018-10-19 9:00','2018-10-19 11:50','Tennis Doppio','Valletta Cambiaso Asd',10,'ottavi', 'EdoVigno');
INSERT INTO Evento VALUES(46,'aperto','2018-10-19 12:00','2018-10-19 14:50','Tennis Doppio','Complesso Sportivo Valle Puggia',10,'ottavi', 'EdoVigno');
INSERT INTO Evento VALUES(47,'aperto','2018-10-19 12:00','2018-10-19 14:50','Tennis Doppio','Valletta Cambiaso Asd',10,'ottavi', 'EdoVigno');
INSERT INTO Evento VALUES(48,'aperto','2018-10-19 15:00','2018-10-19 17:50','Tennis Doppio','Complesso Sportivo Valle Puggia',10,'ottavi', 'EdoVigno');
INSERT INTO Evento VALUES(49,'aperto','2018-10-19 15:00','2018-10-19 17:50','Tennis Doppio','Valletta Cambiaso Asd',10,'ottavi', 'EdoVigno');
INSERT INTO Evento VALUES(50,'aperto','2018-10-19 18:00','2018-10-19 20:50','Tennis Doppio','Complesso Sportivo Valle Puggia',10,'ottavi', 'EdoVigno');
INSERT INTO Evento VALUES(51,'aperto','2018-10-19 18:00','2018-10-19 20:50','Tennis Doppio','Valletta Cambiaso Asd',10,'ottavi', 'EdoVigno');
INSERT INTO Evento VALUES(52,'aperto','2018-10-20 9:00','2018-10-20 11:50','Tennis Doppio','Complesso Sportivo Valle Puggia',10,'quarti', 'EdoVigno');
INSERT INTO Evento VALUES(53,'aperto','2018-10-20 9:00','2018-10-20 11:50','Tennis Doppio','Valletta Cambiaso Asd',10,'quarti', 'EdoVigno');
INSERT INTO Evento VALUES(54,'aperto','2018-10-20 12:00','2018-10-20 14:50','Tennis Doppio','Complesso Sportivo Valle Puggia',10,'quarti', 'EdoVigno');
INSERT INTO Evento VALUES(55,'aperto','2018-10-20 12:00','2018-10-20 14:50','Tennis Doppio','Valletta Cambiaso Asd',10,'quarti', 'EdoVigno');
INSERT INTO Evento VALUES(56,'aperto','2018-10-20 15:00','2018-10-20 17:50','Tennis Doppio','Complesso Sportivo Valle Puggia',10,'semifinale', 'EdoVigno');
INSERT INTO Evento VALUES(57,'aperto','2018-10-20 15:00','2018-10-20 17:50','Tennis Doppio','Valletta Cambiaso Asd',10,'semifinale', 'EdoVigno');
INSERT INTO Evento VALUES(58,'aperto','2018-10-20 18:00','2018-10-20 20:50','Tennis Doppio','Complesso Sportivo Valle Puggia',10,'finale', 'EdoVigno');

INSERT INTO Evento VALUES(59,'aperto','2018-10-25 9:00','2018-10-25 10:50','Pallavolo','Complesso Sportivo Valle Puggia',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(60,'aperto','2018-10-26 9:00','2018-10-26 10:50','Pallavolo','Palestra Salle',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(61,'aperto','2018-10-26 11:00','2018-10-26 12:50','Pallavolo','Complesso Sportivo Valle Puggia',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(62,'aperto','2018-10-26 13:00','2018-10-26 14:50','Pallavolo','Palestra Salle',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(63,'aperto','2018-10-26 15:00','2018-10-26 16:50','Pallavolo','Complesso Sportivo Valle Puggia',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(64,'aperto','2018-10-26 17:00','2018-10-26 18:50','Pallavolo','Palestra Salle',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(65,'aperto','2018-10-26 17:00','2018-10-26 18:50','Pallavolo','Complesso Sportivo Valle Puggia',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(66,'aperto','2018-10-26 19:00','2018-10-26 20:50','Pallavolo','Palestra Salle',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(67,'aperto','2018-10-26 21:00','2018-10-26 22:50','Pallavolo','Complesso Sportivo Valle Puggia',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(68,'aperto','2018-10-26 23:00','2018-10-27 00:50','Pallavolo','Palestra Salle',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(69,'aperto','2018-10-27 6:00','2018-10-27 7:50','Pallavolo','Complesso Sportivo Valle Puggia',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(70,'aperto','2018-10-27 8:00','2018-10-27 9:50','Pallavolo','Palestra Salle',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(71,'aperto','2018-10-27 10:00','2018-10-27 11:50','Pallavolo','Complesso Sportivo Valle Puggia',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(72,'aperto','2018-10-27 12:00','2018-10-27 13:50','Pallavolo','Palestra Salle',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(73,'aperto','2018-10-27 14:00','2018-10-27 15:50','Pallavolo','Complesso Sportivo Valle Puggia',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(74,'aperto','2018-10-27 16:00','2018-10-27 17:50','Pallavolo','Palestra Salle',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(75,'aperto','2018-10-28 09:00','2018-10-28 10:50','Pallavolo','Complesso Sportivo Valle Puggia',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(76,'aperto','2018-10-28 11:00','2018-10-28 12:50','Pallavolo','Palestra Salle',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(77,'aperto','2018-10-28 13:00','2018-10-28 14:50','Pallavolo','Complesso Sportivo Valle Puggia',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(78,'aperto','2018-10-28 15:00','2018-10-28 16:50','Pallavolo','Palestra Salle',8,'girone','FantiAlb');
INSERT INTO Evento VALUES(87,'aperto','2018-10-28 17:00','2018-10-28 18:50','Pallavolo','Palestra Salle',8,'girone','FantiAlb');

INSERT INTO Evento VALUES(79,'aperto','2018-10-29 9:00','2018-10-29 11:50','Tennis','Complesso Sportivo Valle Puggia',5,'girone', 'FantiAlb');
INSERT INTO Evento VALUES(80,'aperto','2018-10-29 12:00','2018-10-29 13:50','Tennis','Valletta Cambiaso Asd',5,'girone', 'FantiAlb');
INSERT INTO Evento VALUES(81,'aperto','2018-10-29 14:00','2018-10-29 15:50','Tennis','Valletta Cambiaso Asd',5,'girone', 'FantiAlb');
INSERT INTO Evento VALUES(82,'aperto','2018-10-29 16:00','2018-10-29 17:50','Tennis','Complesso Sportivo Valle Puggia',5,'girone', 'FantiAlb');
INSERT INTO Evento VALUES(83,'aperto','2018-10-29 18:00','2018-10-29 19:50','Tennis','Valletta Cambiaso Asd',5,'semifinale', 'FantiAlb');
INSERT INTO Evento VALUES(84,'aperto','2018-10-29 20:00','2018-10-29 21:50','Tennis','Complesso Sportivo Valle Puggia',5,'semifinale', 'FantiAlb');
INSERT INTO Evento VALUES(85,'aperto','2018-10-29 22:00','2018-10-29 23:50','Tennis','Complesso Sportivo Valle Puggia',5,'finale', 'FantiAlb');

--Eventi terzo quarto posto
INSERT INTO Evento VALUES(90,'aperto','2018-10-14 17:00','2018-10-14 17:50','Calcio a 5','Complesso Sportivo Valle Puggia',3,'spareggio','Storac');
INSERT INTO Evento VALUES(91,'aperto','2018-10-16 14:00','2018-10-16 15:50','Pallavolo','Complesso Sportivo Valle Puggia',7,'spareggio','Moncuu');
INSERT INTO Evento VALUES(92,'aperto','2018-10-18 19:00','2018-10-18 21:50','Tennis','Complesso Sportivo Valle Puggia',2,'spareggio', 'Moncuu');
INSERT INTO Evento VALUES(93,'aperto','2018-10-21 18:00','2018-10-21 20:50','Tennis Doppio','Valletta Cambiaso Asd',10,'spareggio', 'EdoVigno');
INSERT INTO Evento VALUES(94,'aperto','2018-10-30 17:00','2018-10-30 19:50','Tennis','Complesso Sportivo Valle Puggia',5,'spareggio', 'FantiAlb');


--evento inserito per testare le funzioni
INSERT INTO Evento VALUES(88,'aperto','2018-10-31 09:00','2018-10-31 10:50','Tennis','Complesso Sportivo Valle Puggia',null,null, 'FantiAlb');
INSERT INTO Evento VALUES(89,'aperto','2018-10-31 11:00','2018-10-31 12:50','Calcio a 5','Complesso Sportivo Valle Puggia',null,null, 'Moncuu');


--Tennis Singolo

INSERT INTO Evento VALUES(95,'aperto','2018-11-1 09:00','2018-11-1 11:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(96,'aperto','2018-11-1 09:00','2018-11-1 11:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(97,'aperto','2018-11-1 12:00','2018-11-1 14:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(98,'aperto','2018-11-1 12:00','2018-11-1 14:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(99,'aperto','2018-11-1 15:00','2018-11-1 17:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(100,'aperto','2018-11-1 15:00','2018-11-1 17:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(101,'aperto','2018-11-1 18:00','2018-11-1 20:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(102,'aperto','2018-11-1 18:00','2018-11-1 20:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(103,'aperto','2018-11-2 09:00','2018-11-2 11:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(104,'aperto','2018-11-2 09:00','2018-11-2 11:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(105,'aperto','2018-11-2 12:00','2018-11-2 14:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(106,'aperto','2018-11-2 12:00','2018-11-2 14:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(107,'aperto','2018-11-2 15:00','2018-11-2 17:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(108,'aperto','2018-11-2 15:00','2018-11-2 17:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(109,'aperto','2018-11-2 18:00','2018-11-2 20:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(110,'aperto','2018-11-2 18:00','2018-11-2 20:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(111,'aperto','2018-11-3 09:00','2018-11-3 11:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(112,'aperto','2018-11-3 09:00','2018-11-3 11:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(113,'aperto','2018-11-3 12:00','2018-11-3 14:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(114,'aperto','2018-11-3 12:00','2018-11-3 14:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(115,'aperto','2018-11-3 15:00','2018-11-3 17:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(116,'aperto','2018-11-3 15:00','2018-11-3 17:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(117,'aperto','2018-11-3 18:00','2018-11-3 20:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(118,'aperto','2018-11-3 18:00','2018-11-3 20:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(119,'aperto','2018-11-4 09:00','2018-11-4 11:50','Tennis','Sede Cus Genova',4,'girone','Moncuu');
INSERT INTO Evento VALUES(120,'aperto','2018-11-4 09:00','2018-11-4 11:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(121,'aperto','2018-11-4 12:00','2018-11-4 14:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(122,'aperto','2018-11-4 12:00','2018-11-4 14:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(123,'aperto','2018-11-4 15:00','2018-11-4 17:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(124,'aperto','2018-11-4 15:00','2018-11-4 17:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(125,'aperto','2018-11-4 18:00','2018-11-4 20:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(126,'aperto','2018-11-4 18:00','2018-11-4 20:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(127,'aperto','2018-11-5 09:00','2018-11-5 11:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(128,'aperto','2018-11-5 09:00','2018-11-5 11:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(129,'aperto','2018-11-5 12:00','2018-11-5 14:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(130,'aperto','2018-11-5 12:00','2018-11-5 14:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(131,'aperto','2018-11-5 15:00','2018-11-5 17:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(132,'aperto','2018-11-5 15:00','2018-11-5 17:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(133,'aperto','2018-11-5 18:00','2018-11-5 20:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(134,'aperto','2018-11-5 18:00','2018-11-5 20:50','Tennis','Sede Cus Genova',4,'girone','Moncuu');
INSERT INTO Evento VALUES(135,'aperto','2018-11-6 09:00','2018-11-6 11:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(136,'aperto','2018-11-6 09:00','2018-11-6 11:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(137,'aperto','2018-11-6 12:00','2018-11-6 14:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(138,'aperto','2018-11-6 12:00','2018-11-6 14:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(139,'aperto','2018-11-6 15:00','2018-11-6 17:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(140,'aperto','2018-11-6 15:00','2018-11-6 17:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(141,'aperto','2018-11-6 18:00','2018-11-6 20:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(142,'aperto','2018-11-6 18:00','2018-11-6 20:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(143,'aperto','2018-11-7 09:00','2018-11-7 11:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(144,'aperto','2018-11-7 09:00','2018-11-7 11:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(145,'aperto','2018-11-7 12:00','2018-11-7 14:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(146,'aperto','2018-11-7 12:00','2018-11-7 14:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(147,'aperto','2018-11-7 15:00','2018-11-7 17:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(148,'aperto','2018-11-7 15:00','2018-11-7 17:50','Tennis','Valletta Cambiaso Asd',4,'girone','Moncuu');
INSERT INTO Evento VALUES(149,'aperto','2018-11-7 18:00','2018-11-7 20:50','Tennis','Complesso Sportivo Valle Puggia',4,'girone','Moncuu');
INSERT INTO Evento VALUES(150,'aperto','2018-11-7 18:00','2018-11-7 20:50','Tennis','Sede Cus Genova',4,'girone','Moncuu');
INSERT INTO Evento VALUES(151,'aperto','2018-11-8 09:00','2018-11-8 11:50','Tennis','Sede Cus Genova',4,'ottavi','Moncuu');
INSERT INTO Evento VALUES(152,'aperto','2018-11-8 09:00','2018-11-8 11:50','Tennis','Valletta Cambiaso Asd',4,'ottavi','Moncuu');
INSERT INTO Evento VALUES(153,'aperto','2018-11-8 12:00','2018-11-8 14:50','Tennis','Complesso Sportivo Valle Puggia',4,'ottavi','Moncuu');
INSERT INTO Evento VALUES(154,'aperto','2018-11-8 12:00','2018-11-8 14:50','Tennis','Valletta Cambiaso Asd',4,'ottavi','Moncuu');
INSERT INTO Evento VALUES(155,'aperto','2018-11-8 15:00','2018-11-8 17:50','Tennis','Complesso Sportivo Valle Puggia',4,'ottavi','Moncuu');
INSERT INTO Evento VALUES(156,'aperto','2018-11-8 15:00','2018-11-8 17:50','Tennis','Valletta Cambiaso Asd',4,'ottavi','Moncuu');
INSERT INTO Evento VALUES(157,'aperto','2018-11-8 18:00','2018-11-8 20:50','Tennis','Sede Cus Genova',4,'ottavi','Moncuu');
INSERT INTO Evento VALUES(158,'aperto','2018-11-8 18:00','2018-11-8 20:50','Tennis','Valletta Cambiaso Asd',4,'ottavi','Moncuu');
INSERT INTO Evento VALUES(159,'aperto','2018-11-9 09:00','2018-11-9 11:50','Tennis','Complesso Sportivo Valle Puggia',4,'quarti','Moncuu');
INSERT INTO Evento VALUES(160,'aperto','2018-11-9 09:00','2018-11-9 11:50','Tennis','Valletta Cambiaso Asd',4,'quarti','Moncuu');
INSERT INTO Evento VALUES(161,'aperto','2018-11-9 12:00','2018-11-9 14:50','Tennis','Complesso Sportivo Valle Puggia',4,'quarti','Moncuu');
INSERT INTO Evento VALUES(162,'aperto','2018-11-9 12:00','2018-11-9 14:50','Tennis','Valletta Cambiaso Asd',4,'quarti','Moncuu');
INSERT INTO Evento VALUES(163,'aperto','2018-11-9 15:00','2018-11-9 17:50','Tennis','Complesso Sportivo Valle Puggia',4,'spareggio','Moncuu');
INSERT INTO Evento VALUES(164,'aperto','2018-11-9 15:00','2018-11-9 17:50','Tennis','Valletta Cambiaso Asd',4,'spareggio','Moncuu');
INSERT INTO Evento VALUES(165,'aperto','2018-11-9 18:00','2018-11-9 20:50','Tennis','Sede Cus Genova',4,'semifinale','Moncuu');
INSERT INTO Evento VALUES(166,'aperto','2018-11-9 18:00','2018-11-9 20:50','Tennis','Valletta Cambiaso Asd',4,'semifinale','Moncuu');
INSERT INTO Evento VALUES(167,'aperto','2018-11-10 09:00','2018-11-10 11:50','Tennis','Complesso Sportivo Valle Puggia',4,'spareggio','Moncuu');
INSERT INTO Evento VALUES(168,'aperto','2018-11-10 09:00','2018-11-10 11:50','Tennis','Sede Cus Genova',4,'finale','Moncuu');

------
--Calcio  a 5
--Alpha/Delta 2/1
insert into Partecipa values(1,'Alpha');
insert into Partecipa values(1,'Delta');
INSERT INTO Iscrizione VALUES('simocampi',1,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ste',1,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Fountainbleau',1,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Damont',1,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('DaVac',1,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ilManzo',1,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Luca',1,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('SofiSofi',1,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Raffa',1,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Elotti',1,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Pimpi',1,'confermato','giocatore');

INSERT INTO Punti VALUES('simocampi',1,1);
INSERT INTO Punti VALUES('Ste',1,1);
INSERT INTO Punti VALUES('Raffa',1,1);
INSERT INTO Punti VALUES('Fountainbleau',1,0);
INSERT INTO Punti VALUES('Damont',1,0);
INSERT INTO Punti VALUES('DaVac',1,0);
INSERT INTO Punti VALUES('ilManzo',1,0);
INSERT INTO Punti VALUES('Luca',1,0);
INSERT INTO Punti VALUES('SofiSofi',1,0);
INSERT INTO Punti VALUES('Pimpi',1,0);
--Charlie/Echo 6/1
insert into Partecipa values(2,'Charlie');
insert into Partecipa values(2,'Echo');
INSERT INTO Iscrizione VALUES('Bibi98',2,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bea',2,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Micki',2,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Carl',2,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Teo',2,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('IlRoss',2,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Erika',2,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cece',2,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Colli',2,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Albi',2,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Pedro',2,'confermato','giocatore');
INSERT INTO Punti VALUES('Bibi98',2,1);
INSERT INTO Punti VALUES('Carl',2,3);
INSERT INTO Punti VALUES('Pedro',2,1);
INSERT INTO Punti VALUES('Albi',2,2);
INSERT INTO Punti VALUES('Bea',2,0);
INSERT INTO Punti VALUES('Micki',2,0);
INSERT INTO Punti VALUES('Teo',2,0);
INSERT INTO Punti VALUES('IlRoss',2,0);
INSERT INTO Punti VALUES('Erika',2,0);
INSERT INTO Punti VALUES('Cece',2,0);
INSERT INTO Punti VALUES('Colli',2,0);
--Foxtrot/Golf 1/2
insert into Partecipa values(3,'Foxtrot');
insert into Partecipa values(3,'Golf');
INSERT INTO Iscrizione VALUES('Arma96',3,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ale',3,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bimba98',3,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Dan',3,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cangio',3,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Storac',3,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Jack',3,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gughi',3,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Meso',3,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Enzo',3,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Mickie',3,'confermato','giocatore');

INSERT INTO Punti VALUES('Arma96',3,1);
INSERT INTO Punti VALUES('Enzo',3,1);
INSERT INTO Punti VALUES('Meso',3,1);
INSERT INTO Punti VALUES('Ale',3,0);
INSERT INTO Punti VALUES('Bimba98',3,0);
INSERT INTO Punti VALUES('Dan',3,0);
INSERT INTO Punti VALUES('Cangio',3,0);
INSERT INTO Punti VALUES('Storac',3,0);
INSERT INTO Punti VALUES('Gughi',3,0);
INSERT INTO Punti VALUES('Jack',3,0);
INSERT INTO Punti VALUES('Mickie',3,0);
--India/Juliet2/3
insert into Partecipa values(4,'India');
insert into Partecipa values(4,'Juliet');
INSERT INTO Iscrizione VALUES('sofii',4,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('LaDe',4,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Onne',4,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('GaGhi',4,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Giecchi',4,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gelll',4,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Castel',4,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('FantiAlb',4,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ChiaMo',4,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Eleee98',4,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Bresaolo',4,'confermato','giocatore');

INSERT INTO Punti VALUES('Bresaolo',4,3);
INSERT INTO Punti VALUES('Onne',4,1);
INSERT INTO Punti VALUES('sofii',4,1);
INSERT INTO Punti VALUES('LaDe',4,0);
INSERT INTO Punti VALUES('GaGhi',4,0);
INSERT INTO Punti VALUES('Giecchi',4,0);
INSERT INTO Punti VALUES('Gelll',4,0);
INSERT INTO Punti VALUES('Castel',4,0);
INSERT INTO Punti VALUES('FantiAlb',4,0);
INSERT INTO Punti VALUES('ChiaMo',4,0);
--Alpha/Charlie 1/0
insert into Partecipa values(5,'Alpha');
insert into Partecipa values(5,'Charlie');
INSERT INTO Iscrizione VALUES('simocampi',5,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ste',5,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Fountainbleau',5,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Damont',5,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('DaVac',5,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bibi98',5,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bea',5,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Micki',5,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Carl',5,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Albi',5,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Teo',5,'confermato','giocatore');
INSERT INTO Punti VALUES('Ste',5,1);
INSERT INTO Punti VALUES('simocampi',5,0);
INSERT INTO Punti VALUES('Fountainbleau',5,0);
INSERT INTO Punti VALUES('Damont',5,0);
INSERT INTO Punti VALUES('DaVac',5,0);
INSERT INTO Punti VALUES('Bibi98',5,0);
INSERT INTO Punti VALUES('Bea',5,0);
INSERT INTO Punti VALUES('Micki',5,0);
INSERT INTO Punti VALUES('Carl',5,0);
INSERT INTO Punti VALUES('Teo',5,0);
--Golf/Juliet 0/1
insert into Partecipa values(86,'Golf');
insert into Partecipa values(86,'Juliet');
INSERT INTO Iscrizione VALUES('Gelll',86,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Castel',86,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('FantiAlb',86,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ChiaMo',86,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bresaolo',86,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Storac',86,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Jack',86,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gughi',86,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Meso',86,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Eleee98',86,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Mickie',86,'confermato','giocatore');

INSERT INTO Punti VALUES('Bresaolo',86,1);
INSERT INTO Punti VALUES('Gelll',86,0);
INSERT INTO Punti VALUES('Castel',86,0);
INSERT INTO Punti VALUES('FantiAlb',86,0);
INSERT INTO Punti VALUES('ChiaMo',86,0);
INSERT INTO Punti VALUES('Storac',86,0);
INSERT INTO Punti VALUES('Jack',86,0);
INSERT INTO Punti VALUES('Gughi',86,0);
INSERT INTO Punti VALUES('Meso',86,0);
INSERT INTO Punti VALUES('Mickie',86,0);

--Alpha/Juliet
insert into Partecipa values(6,'Alpha');
insert into Partecipa values(6,'Juliet');
INSERT INTO Iscrizione VALUES('simocampi',6,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ste',6,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Fountainbleau',6,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Damont',6,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('DaVac',6,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gelll',6,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Castel',6,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('FantiAlb',6,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ChiaMo',6,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Elotti',6,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Bresaolo',6,'confermato','giocatore');

INSERT INTO Punti VALUES('simocampi',6,1);
INSERT INTO Punti VALUES('Damont',6,1);
INSERT INTO Punti VALUES('Bresaolo',6,1);
INSERT INTO Punti VALUES('Ste',6,0);
INSERT INTO Punti VALUES('Fountainbleau',6,0);
INSERT INTO Punti VALUES('DaVac',6,0);
INSERT INTO Punti VALUES('Gelll',6,0);
INSERT INTO Punti VALUES('Castel',6,0);
INSERT INTO Punti VALUES('FantiAlb',6,0);
INSERT INTO Punti VALUES('ChiaMo',6,0);

--Charlie/Golf per il terzo posto
INSERT INTO Partecipa VALUES(90,'Charlie');
INSERT INTO Partecipa VALUES(90,'Golf');

INSERT INTO Iscrizione VALUES('Storac',90,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Jack',90,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gughi',90,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Meso',90,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Mickie',90,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bibi98',90,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bea',90,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Micki',90,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Carl',90,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Albi',90,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Teo',90,'confermato','giocatore');

INSERT INTO Punti VALUES('Storac',90,1);
INSERT INTO Punti VALUES('Jack',90,1);
INSERT INTO Punti VALUES('Gughi',90,1);
INSERT INTO Punti VALUES('Meso',90,0);
INSERT INTO Punti VALUES('Mickie',90,0);
INSERT INTO Punti VALUES('Bibi98',90,0);
INSERT INTO Punti VALUES('Bea',90,0);
INSERT INTO Punti VALUES('Micki',90,0);
INSERT INTO Punti VALUES('Carl',90,0);
INSERT INTO Punti VALUES('Teo',90,0);


--Pallavolo
--Romeo/Sierra
insert into Partecipa values(7,'Romeo');
insert into Partecipa values(7,'Sierra');
INSERT INTO Iscrizione VALUES('Fraaaa',7,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Maria',7,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pedra',7,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lamb',7,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Madda',7,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Eu',7,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Maggioo92',7,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Tora',7,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lori',7,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Macchia',7,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cata',7,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lillo',7,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Cla',7,'confermato','giocatore');

INSERT INTO Punti VALUES('Fraaaa',7,1);
INSERT INTO Punti VALUES('Maria',7,3);
INSERT INTO Punti VALUES('Pedra',7,3);
INSERT INTO Punti VALUES('Lamb',7,0);
INSERT INTO Punti VALUES('Madda',7,4);
INSERT INTO Punti VALUES('Eu',7,1);
INSERT INTO Punti VALUES('Maggioo92',7,5);
INSERT INTO Punti VALUES('Tora',7,3);
INSERT INTO Punti VALUES('Lori',7,4);
INSERT INTO Punti VALUES('Macchia',7,2);
INSERT INTO Punti VALUES('Cata',7,1);
INSERT INTO Punti VALUES('Cla',7,3);
--Tango/Uniform
insert into Partecipa values(8,'Tango');
insert into Partecipa values(8,'Uniform');
INSERT INTO Iscrizione VALUES('ErikPerti',8,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('FraFi',8,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gre',8,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Verro',8,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Fabi',8,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sha',8,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Provagg',8,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pan',8,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pagans',8,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sche',8,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Marti',8,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Riccio',8,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Mis',8,'confermato','giocatore');

INSERT INTO Punti VALUES('ErikPerti',8,4);
INSERT INTO Punti VALUES('FraFi',8,3);
INSERT INTO Punti VALUES('Gre',8,2);
INSERT INTO Punti VALUES('Verro',8,5);
INSERT INTO Punti VALUES('Fabi',8,2);
INSERT INTO Punti VALUES('Sha',8,2);
INSERT INTO Punti VALUES('Provagg',8,2);
INSERT INTO Punti VALUES('Pan',8,3);
INSERT INTO Punti VALUES('Pagans',8,1);
INSERT INTO Punti VALUES('Sche',8,0);
INSERT INTO Punti VALUES('Marti',8,3);
INSERT INTO Punti VALUES('Mis',8,1);

--Victor/Whiskey
insert into Partecipa values(9,'Victor');
insert into Partecipa values(9,'Whiskey');
INSERT INTO Iscrizione VALUES('FaVince85',9,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lucy',9,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Leo',9,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Amed',9,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('AGiu',9,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('GioMarc',9,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Moncuu',9,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Briga',9,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Penny',9,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sav',9,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Revve',9,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ines',9,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Della',9,'confermato','giocatore');

INSERT INTO Punti VALUES('FaVince85',9,3);
INSERT INTO Punti VALUES('Lucy',9,2);
INSERT INTO Punti VALUES('Leo',9,5);
INSERT INTO Punti VALUES('Amed',9,2);
INSERT INTO Punti VALUES('AGiu',9,3);
INSERT INTO Punti VALUES('GioMarc',9,2);
INSERT INTO Punti VALUES('Moncuu',9,1);
INSERT INTO Punti VALUES('Briga',9,0);
INSERT INTO Punti VALUES('Penny',9,3);
INSERT INTO Punti VALUES('Sav',9,0);
INSERT INTO Punti VALUES('Revve',9,2);
INSERT INTO Punti VALUES('Della',9,2);

--X-Ray/Yankee
insert into Partecipa values(10,'X-Ray');
insert into Partecipa values(10,'Yankee');
INSERT INTO Iscrizione VALUES('SimoGaviz',10,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Anzia',10,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Vigno',10,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Eli',10,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ila',10,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gu',10,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bofabi',10,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cos',10,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gian',10,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Steddu',10,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Tomm',10,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lu',10,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Ganza',10,'confermato','giocatore');

INSERT INTO Punti VALUES('SimoGaviz',10,3);
INSERT INTO Punti VALUES('Anzia',10,4);
INSERT INTO Punti VALUES('Vigno',10,2);
INSERT INTO Punti VALUES('Eli',10,2);
INSERT INTO Punti VALUES('Ila',10,5);
INSERT INTO Punti VALUES('Gu',10,2);
INSERT INTO Punti VALUES('Bofabi',10,3);
INSERT INTO Punti VALUES('Cos',10,0);
INSERT INTO Punti VALUES('Gian',10,2);
INSERT INTO Punti VALUES('Steddu',10,1);
INSERT INTO Punti VALUES('Tomm',10,3);
INSERT INTO Punti VALUES('Ganza',10,2);


--Sierra/Tango
insert into Partecipa values(11,'Sierra');
insert into Partecipa values(11,'Tango');
INSERT INTO Iscrizione VALUES('Maggioo92',11,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Tora',11,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lori',11,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Macchia',11,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cata',11,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cla',11,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ErikPerti',11,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('FraFi',11,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gre',11,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Verro',11,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Fabi',11,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gal',11,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Sha',11,'confermato','giocatore');

INSERT INTO Punti VALUES('Maggioo92',11,2);
INSERT INTO Punti VALUES('Tora',11,1);
INSERT INTO Punti VALUES('Lori',11,3);
INSERT INTO Punti VALUES('Macchia',11,1);
INSERT INTO Punti VALUES('Cata',11,0);
INSERT INTO Punti VALUES('Cla',11,1);
INSERT INTO Punti VALUES('ErikPerti',11,4);
INSERT INTO Punti VALUES('FraFi',11,3);
INSERT INTO Punti VALUES('Gre',11,5);
INSERT INTO Punti VALUES('Verro',11,3);
INSERT INTO Punti VALUES('Fabi',11,2);
INSERT INTO Punti VALUES('Sha',11,4);


--Whiskey/X-Ray
insert into Partecipa values(12,'Whiskey');
insert into Partecipa values(12,'X-Ray');
INSERT INTO Iscrizione VALUES('Moncuu',12,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Briga',12,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Penny',12,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sav',12,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Revve',12,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Della',12,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('SimoGaviz',12,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Anzia',12,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Vigno',12,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Eli',12,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ila',12,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ines',12,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Gu',12,'confermato','giocatore');

INSERT INTO Punti VALUES('Moncuu',12,5);
INSERT INTO Punti VALUES('Briga',12,3);
INSERT INTO Punti VALUES('Penny',12,3);
INSERT INTO Punti VALUES('Sav',12,2);
INSERT INTO Punti VALUES('Revve',12,4);
INSERT INTO Punti VALUES('Della',12,3);
INSERT INTO Punti VALUES('SimoGaviz',12,2);
INSERT INTO Punti VALUES('Anzia',12,2);
INSERT INTO Punti VALUES('Vigno',12,4);
INSERT INTO Punti VALUES('Eli',12,3);
INSERT INTO Punti VALUES('Ila',12,0);
INSERT INTO Punti VALUES('Gu',12,0);


--Oscar/Kilo
insert into Partecipa values(13,'Oscar');
insert into Partecipa values(13,'Kilo');
INSERT INTO Iscrizione VALUES('Frank89',13,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ric',13,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Budi',13,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('alepizz',13,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Benve',13,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Candy',13,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('SimoGiro',13,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Malor',13,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lungo',13,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Inventa',13,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('LL',13,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cop',13,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Castro',13,'confermato','giocatore');

INSERT INTO Punti VALUES('Frank89',13,5);
INSERT INTO Punti VALUES('Ric',13,3);
INSERT INTO Punti VALUES('Budi',13,4);
INSERT INTO Punti VALUES('alepizz',13,3);
INSERT INTO Punti VALUES('Benve',13,4);
INSERT INTO Punti VALUES('Candy',13,3);
INSERT INTO Punti VALUES('SimoGiro',13,2);
INSERT INTO Punti VALUES('Malor',13,5);
INSERT INTO Punti VALUES('Lungo',13,2);
INSERT INTO Punti VALUES('Inventa',13,0);
INSERT INTO Punti VALUES('LL',13,0);
INSERT INTO Punti VALUES('Castro',13,4);



--Golf/Quebec
insert into Partecipa values(14,'Golf');
insert into Partecipa values(14,'Quebec');
INSERT INTO Iscrizione VALUES('Storac',14,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Jack',14,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gughi',14,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Meso',14,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Mickie',14,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Enzo',14,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('MarcGiuli',14,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Marghe',14,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sasha',14,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Foca',14,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Denni',14,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Kry',14,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('FraPa',14,'confermato','giocatore');

INSERT INTO Punti VALUES('Storac',14,2);
INSERT INTO Punti VALUES('Jack',14,3);
INSERT INTO Punti VALUES('Gughi',14,2);
INSERT INTO Punti VALUES('Meso',14,1);
INSERT INTO Punti VALUES('Mickie',14,0);
INSERT INTO Punti VALUES('Enzo',14,3);
INSERT INTO Punti VALUES('MarcGiuli',14,4);
INSERT INTO Punti VALUES('Marghe',14,6);
INSERT INTO Punti VALUES('Sasha',14,3);
INSERT INTO Punti VALUES('Foca',14,2);
INSERT INTO Punti VALUES('Denni',14,2);
INSERT INTO Punti VALUES('FraPa',14,4);


--Hotel/November
insert into Partecipa values(15,'Hotel');
insert into Partecipa values(15,'November');
INSERT INTO Iscrizione VALUES('EliZazze98',15,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bru',15,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ci',15,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Scu',15,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Osvi',15,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Mem',15,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('elcarrubs',15,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gianb',15,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pica',15,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cippo',15,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cuppi',15,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cla98',15,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Serre',15,'confermato','giocatore');

INSERT INTO Punti VALUES('EliZazze98',15,6);
INSERT INTO Punti VALUES('Bru',15,3);
INSERT INTO Punti VALUES('Ci',15,4);
INSERT INTO Punti VALUES('Scu',15,2);
INSERT INTO Punti VALUES('Osvi',15,2);
INSERT INTO Punti VALUES('Mem',15,3);
INSERT INTO Punti VALUES('elcarrubs',15,3);
INSERT INTO Punti VALUES('Gianb',15,2);
INSERT INTO Punti VALUES('Pica',15,4);
INSERT INTO Punti VALUES('Cippo',15,0);
INSERT INTO Punti VALUES('Cuppi',15,1);
INSERT INTO Punti VALUES('Serre',15,3);


--Juliet/Bravo
insert into Partecipa values(16,'Juliet');
insert into Partecipa values(16,'Bravo');
INSERT INTO Iscrizione VALUES('Gelll',16,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Castel',16,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('FantiAlb',16,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ChiaMo',16,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bresaolo',16,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Eleee98',16,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('dapu97',16,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Strafo',16,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Chia',16,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',16,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',16,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pier',16,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Svano',16,'confermato','giocatore');

INSERT INTO Punti VALUES('Gelll',16,2);
INSERT INTO Punti VALUES('Castel',16,3);
INSERT INTO Punti VALUES('FantiAlb',16,0);
INSERT INTO Punti VALUES('ChiaMo',16,2);
INSERT INTO Punti VALUES('Bresaolo',16,3);
INSERT INTO Punti VALUES('Eleee98',16,3);
INSERT INTO Punti VALUES('dapu97',16,5);
INSERT INTO Punti VALUES('Strafo',16,3);
INSERT INTO Punti VALUES('Chia',16,2);
INSERT INTO Punti VALUES('Sacco',16,4);
INSERT INTO Punti VALUES('Annina',16,5);
INSERT INTO Punti VALUES('Svano',16,4);


--Bravo/Hotel
insert into Partecipa values(17,'Bravo');
insert into Partecipa values(17,'Hotel');
INSERT INTO Iscrizione VALUES('dapu97',17,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Strafo',17,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Chia',17,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',17,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',17,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Svano',17,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('EliZazze98',17,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bru',17,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ci',17,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Scu',17,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Osvi',17,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Raspa',17,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Mem',17,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',17,2);
INSERT INTO Punti VALUES('Strafo',17,3);
INSERT INTO Punti VALUES('Chia',17,0);
INSERT INTO Punti VALUES('Sacco',17,1);
INSERT INTO Punti VALUES('Annina',17,4);
INSERT INTO Punti VALUES('Svano',17,2);
INSERT INTO Punti VALUES('EliZazze98',17,6);
INSERT INTO Punti VALUES('Bru',17,4);
INSERT INTO Punti VALUES('Ci',17,5);
INSERT INTO Punti VALUES('Scu',17,3);
INSERT INTO Punti VALUES('Osvi',17,4);
INSERT INTO Punti VALUES('Mem',17,4);


--Oscar/Quebec
insert into Partecipa values(18,'Oscar');
insert into Partecipa values(18,'Quebec');
INSERT INTO Iscrizione VALUES('Frank89',18,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ric',18,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Budi',18,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('alepizz',18,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Benve',18,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Candy',18,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('MarcGiuli',18,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Marghe',18,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sasha',18,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Foca',18,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Denni',18,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Kry',18,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('FraPa',18,'confermato','giocatore');

INSERT INTO Punti VALUES('Frank89',18,5);
INSERT INTO Punti VALUES('Ric',18,3);
INSERT INTO Punti VALUES('Budi',18,2);
INSERT INTO Punti VALUES('alepizz',18,4);
INSERT INTO Punti VALUES('Benve',18,6);
INSERT INTO Punti VALUES('Candy',18,4);
INSERT INTO Punti VALUES('MarcGiuli',18,3);
INSERT INTO Punti VALUES('Marghe',18,2);
INSERT INTO Punti VALUES('Sasha',18,0);
INSERT INTO Punti VALUES('Foca',18,3);
INSERT INTO Punti VALUES('Denni',18,1);
INSERT INTO Punti VALUES('FraPa',18,1);


--Oscar/Hotel
insert into Partecipa values(19,'Oscar');
insert into Partecipa values(19,'Hotel');
INSERT INTO Iscrizione VALUES('Frank89',19,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ric',19,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Budi',19,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('alepizz',19,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Benve',19,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Candy',19,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('EliZazze98',19,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bru',19,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ci',19,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Scu',19,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Osvi',19,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Raspa',19,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Mem',19,'confermato','giocatore');

INSERT INTO Punti VALUES('Frank89',19,5);
INSERT INTO Punti VALUES('Ric',19,3);
INSERT INTO Punti VALUES('Budi',19,3);
INSERT INTO Punti VALUES('alepizz',19,4);
INSERT INTO Punti VALUES('Benve',19,5);
INSERT INTO Punti VALUES('Candy',19,4);
INSERT INTO Punti VALUES('EliZazze98',19,8);
INSERT INTO Punti VALUES('Bru',19,3);
INSERT INTO Punti VALUES('Ci',19,1);
INSERT INTO Punti VALUES('Scu',19,1);
INSERT INTO Punti VALUES('Osvi',19,1);
INSERT INTO Punti VALUES('Mem',19,1);


--Whiskey/Tango
insert into Partecipa values(20,'Whiskey');
insert into Partecipa values(20,'Tango');
INSERT INTO Iscrizione VALUES('Moncuu',20,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Briga',20,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Penny',20,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sav',20,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Revve',20,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Della',20,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ErikPerti',20,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('FraFi',20,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gre',20,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Verro',20,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Fabi',20,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gal',20,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Sha',20,'confermato','giocatore');

INSERT INTO Punti VALUES('Moncuu',20,6);
INSERT INTO Punti VALUES('Briga',20,3);
INSERT INTO Punti VALUES('Penny',20,4);
INSERT INTO Punti VALUES('Sav',20,2);
INSERT INTO Punti VALUES('Revve',20,3);
INSERT INTO Punti VALUES('Della',20,3);
INSERT INTO Punti VALUES('ErikPerti',20,2);
INSERT INTO Punti VALUES('FraFi',20,0);
INSERT INTO Punti VALUES('Gre',20,1);
INSERT INTO Punti VALUES('Verro',20,3);
INSERT INTO Punti VALUES('Fabi',20,2);
INSERT INTO Punti VALUES('Sha',20,1);


--Whiskey/Oscar
insert into Partecipa values(21,'Whiskey');
insert into Partecipa values(21,'Oscar');
INSERT INTO Iscrizione VALUES('Moncuu',21,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Briga',21,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Penny',21,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sav',21,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Revve',21,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Della',21,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Frank89',21,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ric',21,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Budi',21,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('alepizz',21,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Benve',21,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Candy',21,'confermato','giocatore');

INSERT INTO Punti VALUES('Moncuu',21,5);
INSERT INTO Punti VALUES('Briga',21,3);
INSERT INTO Punti VALUES('Penny',21,2);
INSERT INTO Punti VALUES('Sav',21,3);
INSERT INTO Punti VALUES('Revve',21,2);
INSERT INTO Punti VALUES('Della',21,4);
INSERT INTO Punti VALUES('Frank89',21,3);
INSERT INTO Punti VALUES('Ric',21,5);
INSERT INTO Punti VALUES('Budi',21,4);
INSERT INTO Punti VALUES('alepizz',21,2);
INSERT INTO Punti VALUES('Benve',21,2);
INSERT INTO Punti VALUES('Candy',21,1);

--Terzo quarto posto Hotel/Tango
INSERT INTO Partecipa VALUES(91,'Hotel');
INSERT INTO Partecipa VALUES(91,'Tango');
INSERT INTO Iscrizione VALUES('ErikPerti',91,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('FraFi',91,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gre',91,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Verro',91,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Fabi',91,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gal',91,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Sha',91,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('EliZazze98',91,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bru',91,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ci',91,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Scu',91,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Osvi',91,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Mem',91,'confermato','giocatore');

INSERT INTO Punti VALUES('ErikPerti',91,2);
INSERT INTO Punti VALUES('FraFi',91,0);
INSERT INTO Punti VALUES('Gre',91,1);
INSERT INTO Punti VALUES('Verro',91,3);
INSERT INTO Punti VALUES('Fabi',91,2);
INSERT INTO Punti VALUES('Sha',91,1);
INSERT INTO Punti VALUES('EliZazze98',91,8);
INSERT INTO Punti VALUES('Bru',91,3);
INSERT INTO Punti VALUES('Ci',91,1);
INSERT INTO Punti VALUES('Scu',91,1);
INSERT INTO Punti VALUES('Osvi',91,1);
INSERT INTO Punti VALUES('Mem',91,1);


INSERT INTO Iscrizione VALUES('dapu97',22,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',22,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('ilManzo',22,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',22,1);
INSERT INTO Punti VALUES('ilManzo',22,2);

INSERT INTO Iscrizione VALUES('simocampi',23,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Porci',23,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Onne',23,'confermato','giocatore');

INSERT INTO Punti VALUES('simocampi',23,1);
INSERT INTO Punti VALUES('Onne',23,2);

INSERT INTO Iscrizione VALUES('Porci',24,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('dapu97',24,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Gughi',24,'confermato','giocatore');

INSERT INTO Punti VALUES('Gughi',24,3);
INSERT INTO Punti VALUES('Porci',24,2);

INSERT INTO Iscrizione VALUES('Sacco',25,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Onne',25,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Annina',25,'confermato','giocatore');

INSERT INTO Punti VALUES('Sacco',25,1);
INSERT INTO Punti VALUES('Annina',25,0);

INSERT INTO Iscrizione VALUES('ilManzo',26,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('simocampi',26,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Onne',26,'confermato','giocatore');

INSERT INTO Punti VALUES('ilManzo',26,3);
INSERT INTO Punti VALUES('Onne',26,1);

INSERT INTO Iscrizione VALUES('Gughi',27,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('dapu97',27,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Sacco',27,'confermato','giocatore');

INSERT INTO Punti VALUES('Gughi',27,2);
INSERT INTO Punti VALUES('Sacco',27,1);

INSERT INTO Iscrizione VALUES('ilManzo',28,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',28,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Gughi',28,'confermato','giocatore');

INSERT INTO Punti VALUES('ilManzo',28,3);
INSERT INTO Punti VALUES('Gughi',28,2);

--Terzo posto Onne Sacco
INSERT INTO Iscrizione VALUES('Onne',92,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ilManzo',92,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Sacco',92,'confermato','giocatore');

INSERT INTO Punti VALUES('Onne',92,3);
INSERT INTO Punti VALUES('Sacco',92,1);

--Calcio a 5 girone
--Romeo/Sierra
insert into Partecipa values(29,'Romeo');
insert into Partecipa values(29,'Sierra');
INSERT INTO Iscrizione VALUES('Fraaaa',29,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Maria',29,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pedra',29,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lamb',29,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Madda',29,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Maggioo92',29,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lori',29,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Macchia',29,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cata',29,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lillo',29,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Cla',29,'confermato','giocatore');

INSERT INTO Punti VALUES('Fraaaa',29,1);
INSERT INTO Punti VALUES('Maria',29,0);
INSERT INTO Punti VALUES('Pedra',29,0);
INSERT INTO Punti VALUES('Lamb',29,0);
INSERT INTO Punti VALUES('Madda',29,0);
INSERT INTO Punti VALUES('Maggioo92',29,0);
INSERT INTO Punti VALUES('Lori',29,0);
INSERT INTO Punti VALUES('Macchia',29,0);
INSERT INTO Punti VALUES('Cata',29,0);
INSERT INTO Punti VALUES('Cla',29,2);


--Tango/Uniform
insert into Partecipa values(30,'Tango');
insert into Partecipa values(30,'Uniform');
INSERT INTO Iscrizione VALUES('ErikPerti',30,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gre',30,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Verro',30,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Fabi',30,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sha',30,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Provagg',30,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pan',30,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pagans',30,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Marti',30,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Riccio',30,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Mis',30,'confermato','giocatore');

INSERT INTO Punti VALUES('ErikPerti',30,2);
INSERT INTO Punti VALUES('Gre',30,0);
INSERT INTO Punti VALUES('Verro',30,0);
INSERT INTO Punti VALUES('Fabi',30,0);
INSERT INTO Punti VALUES('Sha',30,0);
INSERT INTO Punti VALUES('Provagg',30,1);
INSERT INTO Punti VALUES('Pan',30,0);
INSERT INTO Punti VALUES('Pagans',30,0);
INSERT INTO Punti VALUES('Marti',30,1);
INSERT INTO Punti VALUES('Mis',30,1);

--Victor/Whiskey
insert into Partecipa values(31,'Victor');
insert into Partecipa values(31,'Whiskey');
INSERT INTO Iscrizione VALUES('FaVince85',31,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lucy',31,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Amed',31,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('AGiu',31,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('GioMarc',31,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Moncuu',31,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Briga',31,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Penny',31,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Revve',31,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ines',31,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Della',31,'confermato','giocatore');

INSERT INTO Punti VALUES('FaVince85',31,0);
INSERT INTO Punti VALUES('Lucy',31,0);
INSERT INTO Punti VALUES('Amed',31,0);
INSERT INTO Punti VALUES('AGiu',31,0);
INSERT INTO Punti VALUES('GioMarc',31,0);
INSERT INTO Punti VALUES('Moncuu',31,0);
INSERT INTO Punti VALUES('Briga',31,0);
INSERT INTO Punti VALUES('Penny',31,0);
INSERT INTO Punti VALUES('Revve',31,0);
INSERT INTO Punti VALUES('Della',31,0);

--X-Ray/Yankee
insert into Partecipa values(32,'X-Ray');
insert into Partecipa values(32,'Yankee');
INSERT INTO Iscrizione VALUES('SimoGaviz',32,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Vigno',32,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Eli',32,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ila',32,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gu',32,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bofabi',32,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cos',32,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gian',32,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Steddu',32,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lu',32,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Ganza',32,'confermato','giocatore');

INSERT INTO Punti VALUES('SimoGaviz',32,0);
INSERT INTO Punti VALUES('Vigno',32,0);
INSERT INTO Punti VALUES('Eli',32,0);
INSERT INTO Punti VALUES('Ila',32,2);
INSERT INTO Punti VALUES('Gu',32,1);
INSERT INTO Punti VALUES('Bofabi',32,1);
INSERT INTO Punti VALUES('Cos',32,0);
INSERT INTO Punti VALUES('Gian',32,0);
INSERT INTO Punti VALUES('Steddu',32,2);
INSERT INTO Punti VALUES('Ganza',32,1);

--Sierra/Tango
insert into Partecipa values(33,'Sierra');
insert into Partecipa values(33,'Tango');
INSERT INTO Iscrizione VALUES('Maggioo92',33,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lori',33,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Macchia',33,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cata',33,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cla',33,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ErikPerti',33,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('FraFi',33,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gre',33,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Verro',33,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gal',33,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Sha',33,'confermato','giocatore');

INSERT INTO Punti VALUES('Maggioo92',33,0);
INSERT INTO Punti VALUES('Lori',33,0);
INSERT INTO Punti VALUES('Macchia',33,0);
INSERT INTO Punti VALUES('Cata',33,0);
INSERT INTO Punti VALUES('Cla',33,0);
INSERT INTO Punti VALUES('ErikPerti',33,0);
INSERT INTO Punti VALUES('FraFi',33,0);
INSERT INTO Punti VALUES('Gre',33,0);
INSERT INTO Punti VALUES('Verro',33,0);
INSERT INTO Punti VALUES('Sha',33,1);

--Whiskey/X-Ray
insert into Partecipa values(34,'Whiskey');
insert into Partecipa values(34,'X-Ray');
INSERT INTO Iscrizione VALUES('Moncuu',34,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Briga',34,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Penny',34,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sav',34,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Della',34,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('SimoGaviz',34,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Vigno',34,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Eli',34,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ila',34,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ines',34,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Gu',34,'confermato','giocatore');

INSERT INTO Punti VALUES('Moncuu',34,0);
INSERT INTO Punti VALUES('Briga',34,0);
INSERT INTO Punti VALUES('Penny',34,0);
INSERT INTO Punti VALUES('Sav',34,0);
INSERT INTO Punti VALUES('Della',34,0);
INSERT INTO Punti VALUES('SimoGaviz',34,0);
INSERT INTO Punti VALUES('Vigno',34,0);
INSERT INTO Punti VALUES('Eli',34,0);
INSERT INTO Punti VALUES('Ila',34,2);
INSERT INTO Punti VALUES('Gu',34,0);

--Oscar/Kilo
insert into Partecipa values(35,'Oscar');
insert into Partecipa values (35,'Kilo');
INSERT INTO Iscrizione VALUES('Frank89',35,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ric',35,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Budi',35,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Benve',35,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Candy',35,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('SimoGiro',35,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Malor',35,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lungo',35,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Inventa',35,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cop',35,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('LL',35,'confermato','giocatore');

INSERT INTO Punti VALUES('Frank89',35,1);
INSERT INTO Punti VALUES('Ric',35,1);
INSERT INTO Punti VALUES('Budi',35,0);
INSERT INTO Punti VALUES('Benve',35,0);
INSERT INTO Punti VALUES('Candy',35,1);
INSERT INTO Punti VALUES('SimoGiro',35,0);
INSERT INTO Punti VALUES('Malor',35,0);
INSERT INTO Punti VALUES('Lungo',35,1);
INSERT INTO Punti VALUES('Inventa',35,0);
INSERT INTO Punti VALUES('LL',35,0);

--Golf/Quebec
insert into Partecipa values (36,'Golf');
insert into Partecipa values (36,'Quebec');
INSERT INTO Iscrizione VALUES('Storac',36,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Jack',36,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gughi',36,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Mickie',36,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Enzo',36,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('MarcGiuli',36,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Marghe',36,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sasha',36,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Foca',36,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Kry',36,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('FraPa',36,'confermato','giocatore');

INSERT INTO Punti VALUES('Storac',36,0);
INSERT INTO Punti VALUES('Jack',36,0);
INSERT INTO Punti VALUES('Gughi',36,0);
INSERT INTO Punti VALUES('Mickie',36,0);
INSERT INTO Punti VALUES('Enzo',36,0);
INSERT INTO Punti VALUES('MarcGiuli',36,2);
INSERT INTO Punti VALUES('Marghe',36,0);
INSERT INTO Punti VALUES('Sasha',36,0);
INSERT INTO Punti VALUES('Foca',36,0);
INSERT INTO Punti VALUES('FraPa',36,0);

--Hotel/November
insert into Partecipa values(37,'Hotel');
insert into Partecipa values(37,'November');
INSERT INTO Iscrizione VALUES('EliZazze98',37,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ci',37,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Scu',37,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Osvi',37,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Mem',37,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('elcarrubs',37,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gianb',37,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pica',37,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cuppi',37,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cla98',37,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Serre',37,'confermato','giocatore');

INSERT INTO Punti VALUES('EliZazze98',37,1);
INSERT INTO Punti VALUES('Ci',37,0);
INSERT INTO Punti VALUES('Scu',37,0);
INSERT INTO Punti VALUES('Osvi',37,0);
INSERT INTO Punti VALUES('Mem',37,0);
INSERT INTO Punti VALUES('elcarrubs',37,0);
INSERT INTO Punti VALUES('Gianb',37,0);
INSERT INTO Punti VALUES('Pica',37,2);
INSERT INTO Punti VALUES('Cuppi',37,0);
INSERT INTO Punti VALUES('Serre',37,0);

--Juliet/Bravo
insert into Partecipa values(38,'Juliet');
insert into Partecipa values(38,'Bravo');
INSERT INTO Iscrizione VALUES('Gelll',38,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('FantiAlb',38,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ChiaMo',38,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bresaolo',38,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Eleee98',38,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('dapu97',38,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Strafo',38,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',38,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',38,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pier',38,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Svano',38,'confermato','giocatore');

INSERT INTO Punti VALUES('Gelll',38,0);
INSERT INTO Punti VALUES('FantiAlb',38,1);
INSERT INTO Punti VALUES('ChiaMo',38,0);
INSERT INTO Punti VALUES('Bresaolo',38,1);
INSERT INTO Punti VALUES('Eleee98',38,0);
INSERT INTO Punti VALUES('dapu97',38,0);
INSERT INTO Punti VALUES('Strafo',38,1);
INSERT INTO Punti VALUES('Sacco',38,0);
INSERT INTO Punti VALUES('Annina',38,0);
INSERT INTO Punti VALUES('Svano',38,0);

--Bravo/Hotel
insert into Partecipa values(39,'Bravo');
insert into Partecipa values(39,'Hotel');
INSERT INTO Iscrizione VALUES('dapu97',39,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Strafo',39,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',39,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',39,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Svano',39,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('EliZazze98',39,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bru',39,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Scu',39,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Osvi',39,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Raspa',39,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Mem',39,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',39,0);
INSERT INTO Punti VALUES('Strafo',39,0);
INSERT INTO Punti VALUES('Sacco',39,0);
INSERT INTO Punti VALUES('Annina',39,0);
INSERT INTO Punti VALUES('Svano',39,0);
INSERT INTO Punti VALUES('EliZazze98',39,0);
INSERT INTO Punti VALUES('Bru',39,0);
INSERT INTO Punti VALUES('Scu',39,0);
INSERT INTO Punti VALUES('Osvi',39,0);
INSERT INTO Punti VALUES('Mem',39,0);


--Oscar/Quebec
insert into Partecipa values(40,'Oscar');
insert into Partecipa values(40,'Quebec');
INSERT INTO Iscrizione VALUES('Frank89',40,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Budi',40,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('alepizz',40,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Benve',40,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Candy',40,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('MarcGiuli',40,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Marghe',40,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sasha',40,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Foca',40,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Kry',40,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('FraPa',40,'confermato','giocatore');

INSERT INTO Punti VALUES('Frank89',40,0);
INSERT INTO Punti VALUES('Budi',40,1);
INSERT INTO Punti VALUES('alepizz',40,0);
INSERT INTO Punti VALUES('Benve',40,0);
INSERT INTO Punti VALUES('Candy',40,0);
INSERT INTO Punti VALUES('MarcGiuli',40,0);
INSERT INTO Punti VALUES('Marghe',40,0);
INSERT INTO Punti VALUES('Sasha',40,0);
INSERT INTO Punti VALUES('Foca',40,0);
INSERT INTO Punti VALUES('FraPa',40,0);

--Oscar/Hotel
insert into Partecipa values(41,'Oscar');
insert into Partecipa values(41,'Hotel');
INSERT INTO Iscrizione VALUES('Frank89',41,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Budi',41,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('alepizz',41,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Benve',41,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Candy',41,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('EliZazze98',41,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bru',41,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Scu',41,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Osvi',41,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Raspa',41,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Mem',41,'confermato','giocatore');

INSERT INTO Punti VALUES('Frank89',41,0);
INSERT INTO Punti VALUES('Budi',41,0);
INSERT INTO Punti VALUES('alepizz',41,0);
INSERT INTO Punti VALUES('Benve',41,0);
INSERT INTO Punti VALUES('Candy',41,0);
INSERT INTO Punti VALUES('EliZazze98',41,0);
INSERT INTO Punti VALUES('Bru',41,0);
INSERT INTO Punti VALUES('Scu',41,1);
INSERT INTO Punti VALUES('Osvi',41,0);
INSERT INTO Punti VALUES('Mem',41,0);

--Whiskey/Tango
insert into Partecipa values(42,'Whiskey');
insert into Partecipa values(42,'Tango');
INSERT INTO Iscrizione VALUES('Moncuu',42,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Briga',42,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Penny',42,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Revve',42,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Della',42,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ErikPerti',42,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('FraFi',42,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gre',42,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Verro',42,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gal',42,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Sha',42,'confermato','giocatore');

INSERT INTO Punti VALUES('Moncuu',42,2);
INSERT INTO Punti VALUES('Briga',42,0);
INSERT INTO Punti VALUES('Penny',42,0);
INSERT INTO Punti VALUES('Revve',42,0);
INSERT INTO Punti VALUES('Della',42,0);
INSERT INTO Punti VALUES('ErikPerti',42,0);
INSERT INTO Punti VALUES('FraFi',42,0);
INSERT INTO Punti VALUES('Gre',42,0);
INSERT INTO Punti VALUES('Verro',42,0);
INSERT INTO Punti VALUES('Sha',42,0);

--Whiskey/Oscar
insert into Partecipa values(43,'Whiskey');
insert into Partecipa values(43,'Oscar');
INSERT INTO Iscrizione VALUES('Moncuu',43,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Briga',43,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Penny',43,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Revve',43,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Della',43,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Frank89',43,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ric',43,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Budi',43,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Benve',43,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Berna',43,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Candy',43,'confermato','giocatore');

INSERT INTO Punti VALUES('Moncuu',43,1);
INSERT INTO Punti VALUES('Briga',43,1);
INSERT INTO Punti VALUES('Penny',43,0);
INSERT INTO Punti VALUES('Revve',43,0);
INSERT INTO Punti VALUES('Della',43,0);
INSERT INTO Punti VALUES('Frank89',43,0);
INSERT INTO Punti VALUES('Ric',43,0);
INSERT INTO Punti VALUES('Budi',43,0);
INSERT INTO Punti VALUES('Benve',43,0);
INSERT INTO Punti VALUES('Candy',43,1);

--Tennis Doppio
--Alpha/Bravo
insert into Partecipa values(44,'Alpha');
insert into Partecipa values(44,'Bravo');
INSERT INTO Iscrizione VALUES('Ste',44,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Damont',44,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Svano',44,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Strafo',44,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Chia',44,'confermato','giocatore');

INSERT INTO Punti VALUES('Ste',44,2);
INSERT INTO Punti VALUES('Damont',44,2);
INSERT INTO Punti VALUES('Svano',44,1);
INSERT INTO Punti VALUES('Chia',44,1);

--Charlie/Delta
insert into Partecipa values(45,'Charlie');
insert into Partecipa values(45,'Delta');
INSERT INTO Iscrizione VALUES('Bea',45,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Albi',45,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ilManzo',45,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('SofiSofi',45,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Luca',45,'confermato','giocatore');
INSERT INTO Punti VALUES('Bea',45,1);
INSERT INTO Punti VALUES('Albi',45,1);
INSERT INTO Punti VALUES('ilManzo',45,2);
INSERT INTO Punti VALUES('Luca',45,1);

--Echo/Foxtrot
insert into Partecipa values(46,'Foxtrot');
insert into Partecipa values(46,'Echo');
INSERT INTO Iscrizione VALUES('Erika',46,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cece',46,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bimba98',46,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cangio',46,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Dan',46,'confermato','giocatore');

INSERT INTO Punti VALUES('Erika',46,3);
INSERT INTO Punti VALUES('Cece',46,2);
INSERT INTO Punti VALUES('Bimba98',46,0);
INSERT INTO Punti VALUES('Dan',46,1);

--Golf/Hotel
insert into Partecipa values(47,'Golf');
insert into Partecipa values(47,'Hotel');
INSERT INTO Iscrizione VALUES('Gughi',47,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Enzo',47,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bru',47,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Mem',47,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Raspa',47,'confermato','giocatore');

INSERT INTO Punti VALUES('Gughi',47,1);
INSERT INTO Punti VALUES('Enzo',47,1);
INSERT INTO Punti VALUES('Bru',47,2);
INSERT INTO Punti VALUES('Raspa',47,1);

--Juliet/Kilo
insert into Partecipa values(48,'Juliet');
insert into Partecipa values(48,'Kilo');
INSERT INTO Iscrizione VALUES('ChiaMo',48,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bresaolo',48,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('LL',48,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Eleee98',48,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Malor',48,'confermato','giocatore');

INSERT INTO Punti VALUES('ChiaMo',48,1);
INSERT INTO Punti VALUES('Bresaolo',48,2);
INSERT INTO Punti VALUES('LL',48,0);
INSERT INTO Punti VALUES('Malor',48,1);

--Lima/Mike
insert into Partecipa values(49,'Lima');
insert into Partecipa values(49,'Mike');
INSERT INTO Iscrizione VALUES('Carott',49,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ronca',49,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('MassiDesa92',49,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ari',49,'confermato','giocatore');

INSERT INTO Punti VALUES('Carott',49,0);
INSERT INTO Punti VALUES('Ronca',49,1);
INSERT INTO Punti VALUES('MassiDesa92',49,2);
INSERT INTO Punti VALUES('Ari',49,0);

--November/Oscar
insert into Partecipa values(50,'November');
insert into Partecipa values(50,'Oscar');
INSERT INTO Iscrizione VALUES('Gianb',50,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pica',50,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Frank89',50,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Budi',50,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Ric',50,'confermato','giocatore');

INSERT INTO Punti VALUES('Gianb',50,1);
INSERT INTO Punti VALUES('Pica',50,1);
INSERT INTO Punti VALUES('Frank89',50,2);
INSERT INTO Punti VALUES('Ric',50,1);

--Papa/Quebec
insert into Partecipa values(51,'Papa');
insert into Partecipa values(51,'Quebec');--hotel
INSERT INTO Iscrizione VALUES('Musso',51,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gra',51,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('MarcGiuli',51,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Kry',51,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Foca',51,'confermato','giocatore');

INSERT INTO Punti VALUES('Musso',51,1);
INSERT INTO Punti VALUES('Gra',51,0);
INSERT INTO Punti VALUES('MarcGiuli',51,2);
INSERT INTO Punti VALUES('Foca',51,1);

--Alpha/Delta
insert into Partecipa values(52,'Alpha');
insert into Partecipa values(52,'Delta');
INSERT INTO Iscrizione VALUES('Ste',52,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Damont',52,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ilManzo',52,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('SofiSofi',52,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Luca',52,'confermato','giocatore');

INSERT INTO Punti VALUES('Ste',52,1);
INSERT INTO Punti VALUES('Damont',52,2);
INSERT INTO Punti VALUES('ilManzo',52,2);
INSERT INTO Punti VALUES('Luca',52,2);

--Foxtrot/Hotel
insert into Partecipa values(53,'Foxtrot');
insert into Partecipa values(53,'Hotel');
INSERT INTO Iscrizione VALUES('Bimba98',53,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Dan',53,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bru',53,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Raspa',53,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Mem',53,'confermato','giocatore');

INSERT INTO Punti VALUES('Bimba98',53,2);
INSERT INTO Punti VALUES('Dan',53,1);
INSERT INTO Punti VALUES('Bru',53,1);
INSERT INTO Punti VALUES('Mem',53,1);

--Juliet/Mike
insert into Partecipa values(54,'Juliet');
insert into Partecipa values(54,'Mike');
INSERT INTO Iscrizione VALUES('ChiaMo',54,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bresaolo',54,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('MassiDesa92',54,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Eleee98',54,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Ari',54,'confermato','giocatore');

INSERT INTO Punti VALUES('ChiaMo',54,0);
INSERT INTO Punti VALUES('Bresaolo',54,2);
INSERT INTO Punti VALUES('MassiDesa92',54,2);
INSERT INTO Punti VALUES('Ari',54,1);

--Oscar/Quebec
insert into Partecipa values(55,'Oscar');
insert into Partecipa values(55,'Quebec');
INSERT INTO Iscrizione VALUES('Frank89',55,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ric',55,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('MarcGiuli',55,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Kry',55,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Foca',55,'confermato','giocatore');

INSERT INTO Punti VALUES('Frank89',55,2);
INSERT INTO Punti VALUES('Ric',55,2);
INSERT INTO Punti VALUES('MarcGiuli',55,1);
INSERT INTO Punti VALUES('Foca',55,1);

--Delta/Foxtrot
insert into Partecipa values(56,'Foxtrot');
insert into Partecipa values(56,'Delta');
INSERT INTO Iscrizione VALUES('ilManzo',56,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Luca',56,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bimba98',56,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cangio',56,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Dan',56,'confermato','giocatore');

INSERT INTO Punti VALUES('ilManzo',56,1);
INSERT INTO Punti VALUES('Luca',56,2);
INSERT INTO Punti VALUES('Bimba98',56,3);
INSERT INTO Punti VALUES('Dan',56,1);

--Oscar/Mike
insert into Partecipa values(57,'Oscar');
insert into Partecipa values(57,'Mike');
INSERT INTO Iscrizione VALUES('MassiDesa92',57,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ari',57,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Frank89',57,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Budi',57,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Ric',57,'confermato','giocatore');

INSERT INTO Punti VALUES('MassiDesa92',57,2);
INSERT INTO Punti VALUES('Ari',57,1);
INSERT INTO Punti VALUES('Frank89',57,0);
INSERT INTO Punti VALUES('Ric',57,0);

--Foxtrot/Mike
insert into Partecipa values(58,'Foxtrot');
insert into Partecipa values(58,'Mike');
INSERT INTO Iscrizione VALUES('Bimba98',58,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Dan',58,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('MassiDesa92',58,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cangio',58,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Ari',58,'confermato','giocatore');

INSERT INTO Punti VALUES('Bimba98',58,1);
INSERT INTO Punti VALUES('Dan',58,1);
INSERT INTO Punti VALUES('MassiDesa92',58,2);
INSERT INTO Punti VALUES('Ari',58,2);

--Terzo Posto Delta/Oscar
INSERT INTO Partecipa VALUES(93,'Delta');
INSERT INTO Partecipa VALUES(93,'Oscar');
INSERT INTO Iscrizione VALUES('Frank89',93,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ric',93,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('SofiSofi',93,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('ilManzo',93,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Luca',93,'confermato','giocatore');

INSERT INTO Punti VALUES('Frank89',93,1);
INSERT INTO Punti VALUES('Ric',93,0);
INSERT INTO Punti VALUES('ilManzo',93,1);
INSERT INTO Punti VALUES('Luca',93,1);


--Girone pallavolo
--Bravo/Hotel
insert into Partecipa values(59,'Bravo');
insert into Partecipa values(59,'Hotel');
INSERT INTO Iscrizione VALUES('dapu97',59,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Strafo',59,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Chia',59,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',59,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',59,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Svano',59,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('EliZazze98',59,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bru',59,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Raspa',59,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ci',59,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Scu',59,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pier',59,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Mem',59,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',59,3);
INSERT INTO Punti VALUES('Strafo',59,2);
INSERT INTO Punti VALUES('Chia',59,3);
INSERT INTO Punti VALUES('Sacco',59,1);
INSERT INTO Punti VALUES('Annina',59,5);
INSERT INTO Punti VALUES('Svano',59,2);
INSERT INTO Punti VALUES('EliZazze98',59,5);
INSERT INTO Punti VALUES('Bru',59,2);
INSERT INTO Punti VALUES('Raspa',59,2);
INSERT INTO Punti VALUES('Ci',59,0);
INSERT INTO Punti VALUES('Scu',59,1);
INSERT INTO Punti VALUES('Mem',59,1);

--Bravo/Kilo
insert into Partecipa values(60,'Bravo');
insert into Partecipa values(60,'Kilo');
INSERT INTO Iscrizione VALUES('dapu97',60,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Strafo',60,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Chia',60,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',60,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',60,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Svano',60,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('SimoGiro',60,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Malor',60,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lungo',60,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Inventa',60,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('LL',60,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cop',60,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Castro',60,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',60,4);
INSERT INTO Punti VALUES('Strafo',60,4);
INSERT INTO Punti VALUES('Chia',60,3);
INSERT INTO Punti VALUES('Sacco',60,2);
INSERT INTO Punti VALUES('Annina',60,5);
INSERT INTO Punti VALUES('Svano',60,2);
INSERT INTO Punti VALUES('SimoGiro',60,2);
INSERT INTO Punti VALUES('Malor',60,2);
INSERT INTO Punti VALUES('Lungo',60,3);
INSERT INTO Punti VALUES('Inventa',60,4);
INSERT INTO Punti VALUES('LL',60,1);
INSERT INTO Punti VALUES('Castro',60,3);

--Bravo/November
insert into Partecipa values(61,'Bravo');
insert into Partecipa values(61,'November');
INSERT INTO Iscrizione VALUES('dapu97',61,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Strafo',61,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Chia',61,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',61,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',61,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Svano',61,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('elcarrubs',61,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gianb',61,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pica',61,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cippo',61,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cuppi',61,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pier',61,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Serre',61,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',61,3);
INSERT INTO Punti VALUES('Strafo',61,2);
INSERT INTO Punti VALUES('Chia',61,4);
INSERT INTO Punti VALUES('Sacco',61,0);
INSERT INTO Punti VALUES('Annina',61,3);
INSERT INTO Punti VALUES('Svano',61,2);
INSERT INTO Punti VALUES('elcarrubs',61,2);
INSERT INTO Punti VALUES('Gianb',61,0);
INSERT INTO Punti VALUES('Pica',61,4);
INSERT INTO Punti VALUES('Cippo',61,4);
INSERT INTO Punti VALUES('Cuppi',61,2);
INSERT INTO Punti VALUES('Serre',61,3);

--Bravo/Oscar
insert into Partecipa values(62,'Bravo');
insert into Partecipa values(62,'Oscar');
INSERT INTO Iscrizione VALUES('dapu97',62,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Strafo',62,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Chia',62,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',62,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',62,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Svano',62,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Frank89',62,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ric',62,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Budi',62,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('alepizz',62,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Benve',62,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Derra',62,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Candy',62,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',62,3);
INSERT INTO Punti VALUES('Strafo',62,2);
INSERT INTO Punti VALUES('Chia',62,1);
INSERT INTO Punti VALUES('Sacco',62,2);
INSERT INTO Punti VALUES('Annina',62,4);
INSERT INTO Punti VALUES('Svano',62,2);
INSERT INTO Punti VALUES('Frank89',62,6);
INSERT INTO Punti VALUES('Ric',62,2);
INSERT INTO Punti VALUES('Budi',62,0);
INSERT INTO Punti VALUES('alepizz',62,1);
INSERT INTO Punti VALUES('Benve',62,1);
INSERT INTO Punti VALUES('Candy',62,1);

--Bravo/Quebec
insert into Partecipa values(63,'Bravo');
insert into Partecipa values(63,'Quebec');
INSERT INTO Iscrizione VALUES('dapu97',63,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Strafo',63,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Chia',63,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',63,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',63,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Svano',63,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('MarcGiuli',63,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Marghe',63,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sasha',63,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Foca',63,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Denni',63,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Kry',63,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('FraPa',63,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',63,3);
INSERT INTO Punti VALUES('Strafo',63,2);
INSERT INTO Punti VALUES('Chia',63,2);
INSERT INTO Punti VALUES('Sacco',63,2);
INSERT INTO Punti VALUES('Annina',63,3);
INSERT INTO Punti VALUES('Svano',63,3);
INSERT INTO Punti VALUES('MarcGiuli',63,5);
INSERT INTO Punti VALUES('Marghe',63,2);
INSERT INTO Punti VALUES('Sasha',63,1);
INSERT INTO Punti VALUES('Foca',63,0);
INSERT INTO Punti VALUES('Denni',63,3);
INSERT INTO Punti VALUES('FraPa',63,3);

--Bravo/Zulu
insert into Partecipa values(64,'Bravo');
insert into Partecipa values(64,'Zulu');
INSERT INTO Iscrizione VALUES('dapu97',64,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Strafo',64,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Chia',64,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',64,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',64,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Svano',64,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Boe96',64,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Duddu',64,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('GrePa',64,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Fedina',64,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bruggia',64,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('CaroCa',64,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Gandalf',64,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',64,2);
INSERT INTO Punti VALUES('Strafo',64,3);
INSERT INTO Punti VALUES('Chia',64,1);
INSERT INTO Punti VALUES('Sacco',64,2);
INSERT INTO Punti VALUES('Annina',64,4);
INSERT INTO Punti VALUES('Svano',64,0);
INSERT INTO Punti VALUES('Boe96',64,3);
INSERT INTO Punti VALUES('Duddu',64,2);
INSERT INTO Punti VALUES('GrePa',64,3);
INSERT INTO Punti VALUES('Fedina',64,4);
INSERT INTO Punti VALUES('Bruggia',64,4);
INSERT INTO Punti VALUES('Gandalf',64,6);

--Hotel/Kilo
insert into Partecipa values(65,'Hotel');
insert into Partecipa values(65,'Kilo');
INSERT INTO Iscrizione VALUES('EliZazze98',65,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bru',65,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ci',65,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Scu',65,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Osvi',65,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Mem',65,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('SimoGiro',65,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Malor',65,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lungo',65,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Inventa',65,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('LL',65,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cop',65,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Castro',65,'confermato','giocatore');

INSERT INTO Punti VALUES('EliZazze98',65,5);
INSERT INTO Punti VALUES('Bru',65,3);
INSERT INTO Punti VALUES('Ci',65,2);
INSERT INTO Punti VALUES('Scu',65,3);
INSERT INTO Punti VALUES('Osvi',65,5);
INSERT INTO Punti VALUES('Mem',65,2);
INSERT INTO Punti VALUES('SimoGiro',65,4);
INSERT INTO Punti VALUES('Malor',65,3);
INSERT INTO Punti VALUES('Lungo',65,3);
INSERT INTO Punti VALUES('Inventa',65,2);
INSERT INTO Punti VALUES('LL',65,2);
INSERT INTO Punti VALUES('Castro',65,2);

--Hotel/November
insert into Partecipa values(66,'Hotel');
insert into Partecipa values(66,'November');
INSERT INTO Iscrizione VALUES('EliZazze98',66,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bru',66,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ci',66,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Scu',66,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Osvi',66,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Mem',66,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('elcarrubs',66,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gianb',66,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pica',66,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cippo',66,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cuppi',66,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Raspa',66,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Serre',66,'confermato','giocatore');

INSERT INTO Punti VALUES('EliZazze98',66,4);
INSERT INTO Punti VALUES('Bru',66,2);
INSERT INTO Punti VALUES('Ci',66,3);
INSERT INTO Punti VALUES('Scu',66,3);
INSERT INTO Punti VALUES('Osvi',66,4);
INSERT INTO Punti VALUES('Mem',66,2);
INSERT INTO Punti VALUES('elcarrubs',66,2);
INSERT INTO Punti VALUES('Gianb',66,1);
INSERT INTO Punti VALUES('Pica',66,1);
INSERT INTO Punti VALUES('Cippo',66,2);
INSERT INTO Punti VALUES('Cuppi',66,3);
INSERT INTO Punti VALUES('Serre',66,5);

--Hotel/Oscar
insert into Partecipa values(67,'Hotel');
insert into Partecipa values(67,'Oscar');
INSERT INTO Iscrizione VALUES('EliZazze98',67,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bru',67,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ci',67,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Scu',67,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Osvi',67,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Mem',67,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Frank89',67,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ric',67,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Budi',67,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('alepizz',67,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Benve',67,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Derra',67,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Candy',67,'confermato','giocatore');

INSERT INTO Punti VALUES('EliZazze98',67,5);
INSERT INTO Punti VALUES('Bru',67,2);
INSERT INTO Punti VALUES('Ci',67,3);
INSERT INTO Punti VALUES('Scu',67,3);
INSERT INTO Punti VALUES('Osvi',67,2);
INSERT INTO Punti VALUES('Mem',67,2);
INSERT INTO Punti VALUES('Frank89',67,4);
INSERT INTO Punti VALUES('Ric',67,2);
INSERT INTO Punti VALUES('Budi',67,4);
INSERT INTO Punti VALUES('alepizz',67,3);
INSERT INTO Punti VALUES('Benve',67,2);
INSERT INTO Punti VALUES('Candy',67,2);

--Hotel/Quebec
insert into Partecipa values(68,'Hotel');
insert into Partecipa values(68,'Quebec');
INSERT INTO Iscrizione VALUES('EliZazze98',68,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bru',68,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ci',68,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Scu',68,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Osvi',68,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Mem',68,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('MarcGiuli',68,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Marghe',68,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sasha',68,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Foca',68,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Denni',68,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Kry',68,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('FraPa',68,'confermato','giocatore');

INSERT INTO Punti VALUES('EliZazze98',68,5);
INSERT INTO Punti VALUES('Bru',68,2);
INSERT INTO Punti VALUES('Ci',68,2);
INSERT INTO Punti VALUES('Scu',68,2);
INSERT INTO Punti VALUES('Osvi',68,2);
INSERT INTO Punti VALUES('Mem',68,3);
INSERT INTO Punti VALUES('MarcGiuli',68,4);
INSERT INTO Punti VALUES('Marghe',68,1);
INSERT INTO Punti VALUES('Sasha',68,2);
INSERT INTO Punti VALUES('Foca',68,4);
INSERT INTO Punti VALUES('Denni',68,2);
INSERT INTO Punti VALUES('FraPa',68,1);

--Hotle/Zulu
insert into Partecipa values(69,'Hotel');
insert into Partecipa values(69,'Zulu');
INSERT INTO Iscrizione VALUES('EliZazze98',69,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bru',69,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ci',69,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Scu',69,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Osvi',69,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Mem',69,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Boe96',69,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Duddu',69,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('GrePa',69,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Fedina',69,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bruggia',69,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('CaroCa',69,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Gandalf',69,'confermato','giocatore');

INSERT INTO Punti VALUES('EliZazze98',69,5);
INSERT INTO Punti VALUES('Bru',69,4);
INSERT INTO Punti VALUES('Ci',69,3);
INSERT INTO Punti VALUES('Scu',69,3);
INSERT INTO Punti VALUES('Osvi',69,3);
INSERT INTO Punti VALUES('Mem',69,0);
INSERT INTO Punti VALUES('Boe96',69,2);
INSERT INTO Punti VALUES('Duddu',69,2);
INSERT INTO Punti VALUES('GrePa',69,3);
INSERT INTO Punti VALUES('Fedina',69,4);
INSERT INTO Punti VALUES('Bruggia',69,5);
INSERT INTO Punti VALUES('Gandalf',69,4);

--Kilo/November
insert into Partecipa values(70,'Kilo');
insert into Partecipa values(70,'November');
INSERT INTO Iscrizione VALUES('SimoGiro',70,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Malor',70,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lungo',70,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Inventa',70,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('LL',70,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Castro',70,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('elcarrubs',70,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gianb',70,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pica',70,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cippo',70,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cuppi',70,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cla98',70,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Serre',70,'confermato','giocatore');

INSERT INTO Punti VALUES('SimoGiro',70,4);
INSERT INTO Punti VALUES('Malor',70,1);
INSERT INTO Punti VALUES('Lungo',70,2);
INSERT INTO Punti VALUES('Inventa',70,3);
INSERT INTO Punti VALUES('LL',70,0);
INSERT INTO Punti VALUES('Castro',70,3);
INSERT INTO Punti VALUES('elcarrubs',70,2);
INSERT INTO Punti VALUES('Gianb',70,4);
INSERT INTO Punti VALUES('Pica',70,3);
INSERT INTO Punti VALUES('Cippo',70,2);
INSERT INTO Punti VALUES('Cuppi',70,2);
INSERT INTO Punti VALUES('Serre',70,1);

--Kilo/Oscar
insert into Partecipa values(71,'Kilo');
insert into Partecipa values(71,'Oscar');
INSERT INTO Iscrizione VALUES('SimoGiro',71,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Malor',71,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lungo',71,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Inventa',71,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('LL',71,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Castro',71,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Frank89',71,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ric',71,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Budi',71,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('alepizz',71,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Benve',71,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Derra',71,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Candy',71,'confermato','giocatore');

INSERT INTO Punti VALUES('SimoGiro',71,3);
INSERT INTO Punti VALUES('Malor',71,2);
INSERT INTO Punti VALUES('Lungo',71,3);
INSERT INTO Punti VALUES('Inventa',71,4);
INSERT INTO Punti VALUES('LL',71,1);
INSERT INTO Punti VALUES('Castro',71,4);
INSERT INTO Punti VALUES('Frank89',71,2);
INSERT INTO Punti VALUES('Ric',71,3);
INSERT INTO Punti VALUES('Budi',71,2);
INSERT INTO Punti VALUES('alepizz',71,4);
INSERT INTO Punti VALUES('Benve',71,2);
INSERT INTO Punti VALUES('Candy',71,0);

--Kilo/Quebec
insert into Partecipa values(72,'Kilo');
insert into Partecipa values(72,'Quebec');
INSERT INTO Iscrizione VALUES('SimoGiro',72,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Malor',72,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lungo',72,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Inventa',72,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('LL',72,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Castro',72,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('MarcGiuli',72,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Marghe',72,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sasha',72,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Foca',72,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Denni',72,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Kry',72,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('FraPa',72,'confermato','giocatore');

INSERT INTO Punti VALUES('SimoGiro',72,3);
INSERT INTO Punti VALUES('Malor',72,2);
INSERT INTO Punti VALUES('Lungo',72,3);
INSERT INTO Punti VALUES('Inventa',72,2);
INSERT INTO Punti VALUES('LL',72,0);
INSERT INTO Punti VALUES('Castro',72,4);
INSERT INTO Punti VALUES('MarcGiuli',72,4);
INSERT INTO Punti VALUES('Marghe',72,2);
INSERT INTO Punti VALUES('Sasha',72,1);
INSERT INTO Punti VALUES('Foca',72,1);
INSERT INTO Punti VALUES('Denni',72,0);
INSERT INTO Punti VALUES('FraPa',72,3);

--Kilo/Zulu
insert into Partecipa values(73,'Kilo');
insert into Partecipa values(73,'Zulu');
INSERT INTO Iscrizione VALUES('SimoGiro',73,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Malor',73,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Lungo',73,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Inventa',73,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('LL',73,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Castro',73,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Boe96',73,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Duddu',73,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('GrePa',73,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Fedina',73,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bruggia',73,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('CaroCa',73,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Gandalf',73,'confermato','giocatore');

INSERT INTO Punti VALUES('SimoGiro',73,4);
INSERT INTO Punti VALUES('Malor',73,3);
INSERT INTO Punti VALUES('Lungo',73,2);
INSERT INTO Punti VALUES('Inventa',73,2);
INSERT INTO Punti VALUES('LL',73,2);
INSERT INTO Punti VALUES('Castro',73,4);
INSERT INTO Punti VALUES('Boe96',73,2);
INSERT INTO Punti VALUES('Duddu',73,3);
INSERT INTO Punti VALUES('GrePa',73,3);
INSERT INTO Punti VALUES('Fedina',73,2);
INSERT INTO Punti VALUES('Bruggia',73,1);
INSERT INTO Punti VALUES('Gandalf',73,0);

--November/Oscar
insert into Partecipa values(74,'November');
insert into Partecipa values(74,'Oscar');
INSERT INTO Iscrizione VALUES('elcarrubs',74,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gianb',74,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pica',74,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cippo',74,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cuppi',74,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Serre',74,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Frank89',74,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ric',74,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Budi',74,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('alepizz',74,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Benve',74,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Derra',74,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Candy',74,'confermato','giocatore');
INSERT INTO Punti VALUES('elcarrubs',74,4);
INSERT INTO Punti VALUES('Gianb',74,2);
INSERT INTO Punti VALUES('Pica',74,2);
INSERT INTO Punti VALUES('Cippo',74,3);
INSERT INTO Punti VALUES('Cuppi',74,1);
INSERT INTO Punti VALUES('Serre',74,1);
INSERT INTO Punti VALUES('Frank89',74,2);
INSERT INTO Punti VALUES('Ric',74,0);
INSERT INTO Punti VALUES('Budi',74,3);
INSERT INTO Punti VALUES('alepizz',74,2);
INSERT INTO Punti VALUES('Benve',74,2);
INSERT INTO Punti VALUES('Candy',74,4);

--November/Quebec
insert into Partecipa values(75,'November');
insert into Partecipa values(75,'Quebec');
INSERT INTO Iscrizione VALUES('elcarrubs',75,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gianb',75,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pica',75,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cippo',75,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cuppi',75,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Serre',75,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('MarcGiuli',75,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Marghe',75,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sasha',75,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Foca',75,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Denni',75,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Kry',75,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('FraPa',75,'confermato','giocatore');

INSERT INTO Punti VALUES('elcarrubs',75,3);
INSERT INTO Punti VALUES('Gianb',75,2);
INSERT INTO Punti VALUES('Pica',75,3);
INSERT INTO Punti VALUES('Cippo',75,4);
INSERT INTO Punti VALUES('Cuppi',75,2);
INSERT INTO Punti VALUES('Serre',75,3);
INSERT INTO Punti VALUES('MarcGiuli',75,4);
INSERT INTO Punti VALUES('Marghe',75,3);
INSERT INTO Punti VALUES('Sasha',75,3);
INSERT INTO Punti VALUES('Foca',75,2);
INSERT INTO Punti VALUES('Denni',75,2);
INSERT INTO Punti VALUES('FraPa',75,3);

--November/Zulu
insert into Partecipa values(76,'November');
insert into Partecipa values(76,'Zulu');
INSERT INTO Iscrizione VALUES('elcarrubs',76,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gianb',76,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pica',76,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cippo',76,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cuppi',76,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Serre',76,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gandalf',76,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Boe96',76,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Duddu',76,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('GrePa',76,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Fedina',76,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('CaroCa',76,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Bruggia',76,'confermato','giocatore');

INSERT INTO Punti VALUES('elcarrubs',76,2);
INSERT INTO Punti VALUES('Gianb',76,3);
INSERT INTO Punti VALUES('Pica',76,4);
INSERT INTO Punti VALUES('Cippo',76,4);
INSERT INTO Punti VALUES('Cuppi',76,2);
INSERT INTO Punti VALUES('Serre',76,0);
INSERT INTO Punti VALUES('Gandalf',76,2);
INSERT INTO Punti VALUES('Boe96',76,3);
INSERT INTO Punti VALUES('Duddu',76,4);
INSERT INTO Punti VALUES('GrePa',76,2);
INSERT INTO Punti VALUES('Fedina',76,3);
INSERT INTO Punti VALUES('Bruggia',76,2);

--Oscar/Quebec
insert into Partecipa values(77,'Oscar');
insert into Partecipa values(77,'Quebec');
INSERT INTO Iscrizione VALUES('Frank89',77,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ric',77,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Budi',77,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('alepizz',77,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Benve',77,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Candy',77,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('MarcGiuli',77,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Marghe',77,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sasha',77,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Foca',77,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Denni',77,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Kry',77,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('FraPa',77,'confermato','giocatore');

INSERT INTO Punti VALUES('Frank89',77,2);
INSERT INTO Punti VALUES('Ric',77,3);
INSERT INTO Punti VALUES('Budi',77,3);
INSERT INTO Punti VALUES('alepizz',77,2);
INSERT INTO Punti VALUES('Benve',77,3);
INSERT INTO Punti VALUES('Candy',77,4);
INSERT INTO Punti VALUES('MarcGiuli',77,4);
INSERT INTO Punti VALUES('Marghe',77,3);
INSERT INTO Punti VALUES('Sasha',77,2);
INSERT INTO Punti VALUES('Foca',77,0);
INSERT INTO Punti VALUES('Denni',77,1);
INSERT INTO Punti VALUES('FraPa',77,3);

--Oscar/Zulu
insert into Partecipa values(78,'Oscar');
insert into Partecipa values(78,'Zulu');
INSERT INTO Iscrizione VALUES('Frank89',78,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Ric',78,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Budi',78,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('alepizz',78,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Benve',78,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Candy',78,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Boe96',78,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Duddu',78,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('GrePa',78,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Fedina',78,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bruggia',78,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('CaroCa',78,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Gandalf',78,'confermato','giocatore');

INSERT INTO Punti VALUES('Frank89',78,4);
INSERT INTO Punti VALUES('Ric',78,3);
INSERT INTO Punti VALUES('Budi',78,3);
INSERT INTO Punti VALUES('alepizz',78,3);
INSERT INTO Punti VALUES('Benve',78,0);
INSERT INTO Punti VALUES('Candy',78,1);
INSERT INTO Punti VALUES('Boe96',78,2);
INSERT INTO Punti VALUES('Duddu',78,4);
INSERT INTO Punti VALUES('GrePa',78,4);
INSERT INTO Punti VALUES('Fedina',78,3);
INSERT INTO Punti VALUES('Bruggia',78,3);
INSERT INTO Punti VALUES('Gandalf',78,3);

--Quebec/Zulu
insert into Partecipa values(87,'Quebec');
insert into Partecipa values(87,'Zulu');
INSERT INTO Iscrizione VALUES('MarcGiuli',87,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Marghe',87,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sasha',87,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Foca',87,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Denni',87,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('FraPa',87,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Boe96',87,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Duddu',87,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('GrePa',87,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Fedina',87,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bruggia',87,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('CaroCa',87,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Gandalf',87,'confermato','giocatore');

INSERT INTO Punti VALUES('MarcGiuli',87,3);
INSERT INTO Punti VALUES('Marghe',87,2);
INSERT INTO Punti VALUES('Sasha',87,2);
INSERT INTO Punti VALUES('Foca',87,3);
INSERT INTO Punti VALUES('Denni',87,4);
INSERT INTO Punti VALUES('FraPa',87,2);
INSERT INTO Punti VALUES('Boe96',87,4);
INSERT INTO Punti VALUES('Duddu',87,3);
INSERT INTO Punti VALUES('GrePa',87,2);
INSERT INTO Punti VALUES('Fedina',87,4);
INSERT INTO Punti VALUES('Bruggia',87,5);
INSERT INTO Punti VALUES('Gandalf',87,2);

--Tennis singolo
INSERT INTO Iscrizione VALUES('Bimba98',79,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Carl',79,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Micki',79,'confermato','giocatore');

INSERT INTO Punti VALUES('Bimba98',79,1);
INSERT INTO Punti VALUES('Micki',79,0);
INSERT INTO Iscrizione VALUES('Carl',80,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bimba98',80,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Teo',80,'confermato','giocatore');

INSERT INTO Punti VALUES('Carl',80,2);
INSERT INTO Punti VALUES('Teo',80,1);
INSERT INTO Iscrizione VALUES('Erika',81,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Teo',81,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Cece',81,'confermato','giocatore');

INSERT INTO Punti VALUES('Erika',81,1);
INSERT INTO Punti VALUES('Cece',81,0);
INSERT INTO Iscrizione VALUES('Colli',82,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Erika',82,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Pimpi',82,'confermato','giocatore');

INSERT INTO Punti VALUES('Pimpi',82,1);
INSERT INTO Punti VALUES('Colli',82,0);
INSERT INTO Iscrizione VALUES('Bimba98',83,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cece',83,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Carl',83,'confermato','giocatore');

INSERT INTO Punti VALUES('Carl',83,1);
INSERT INTO Punti VALUES('Bimba98',83,0);
INSERT INTO Iscrizione VALUES('Erika',84,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Carl',84,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Pimpi',84,'confermato','giocatore');

INSERT INTO Punti VALUES('Erika',84,1);
INSERT INTO Punti VALUES('Pimpi',84,0);
INSERT INTO Iscrizione VALUES('Carl',85,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bimba98',85,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Erika',85,'confermato','giocatore');

INSERT INTO Punti VALUES('Carl',85,1);
INSERT INTO Punti VALUES('Erika',85,0);
--Disputa terzo posto Pimpi/Bimba98
INSERT INTO Iscrizione VALUES('Pimpi',94,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Carl',94,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Bimba98',94,'confermato','giocatore');

INSERT INTO Punti VALUES('Pimpi',94,2);
INSERT INTO Punti VALUES('Bimba98',94,1);


--Tennis singolo grande misticanza
INSERT INTO Iscrizione VALUES('dapu97',95,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',95,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('ilManzo',95,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',95,1);
INSERT INTO Punti VALUES('ilManzo',95,0);

INSERT INTO Iscrizione VALUES('Onne',96,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',96,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('simocampi',96,'confermato','giocatore');

INSERT INTO Punti VALUES('Onne',96,1);
INSERT INTO Punti VALUES('simocampi',96,1);

INSERT INTO Iscrizione VALUES('dapu97',97,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',97,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('simocampi',97,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',97,1);
INSERT INTO Punti VALUES('simocampi',97,0);

INSERT INTO Iscrizione VALUES('ilManzo',98,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',98,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Onne',98,'confermato','giocatore');

INSERT INTO Punti VALUES('ilManzo',98,1);
INSERT INTO Punti VALUES('Onne',98,0);

INSERT INTO Iscrizione VALUES('dapu97',99,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',99,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Onne',99,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',99,1);
INSERT INTO Punti VALUES('Onne',99,0);

INSERT INTO Iscrizione VALUES('ilManzo',100,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',100,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Porci',100,'confermato','giocatore');

INSERT INTO Punti VALUES('ilManzo',100,1);
INSERT INTO Punti VALUES('Porci',100,0);

INSERT INTO Iscrizione VALUES('dapu97',101,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Onne',101,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Porci',101,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',101,1);
INSERT INTO Punti VALUES('Porci',101,0);

INSERT INTO Iscrizione VALUES('ilManzo',102,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',102,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Gughi',102,'confermato','giocatore');

INSERT INTO Punti VALUES('ilManzo',102,1);
INSERT INTO Punti VALUES('Gughi',102,0);

INSERT INTO Iscrizione VALUES('dapu97',103,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',103,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Gughi',103,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',103,1);
INSERT INTO Punti VALUES('Gughi',103,0);

INSERT INTO Iscrizione VALUES('ilManzo',104,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Porci',104,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Sacco',104,'confermato','giocatore');

INSERT INTO Punti VALUES('ilManzo',104,1);
INSERT INTO Punti VALUES('Sacco',104,0);

INSERT INTO Iscrizione VALUES('dapu97',105,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Porci',105,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Sacco',105,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',105,1);
INSERT INTO Punti VALUES('Sacco',105,0);

INSERT INTO Iscrizione VALUES('ilManzo',106,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('simocampi',106,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Annina',106,'confermato','giocatore');

INSERT INTO Punti VALUES('ilManzo',106,1);
INSERT INTO Punti VALUES('Annina',106,0);

INSERT INTO Iscrizione VALUES('dapu97',107,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Moncuu',107,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Annina',107,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',107,1);
INSERT INTO Punti VALUES('Annina',107,0);

INSERT INTO Iscrizione VALUES('ilManzo',108,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',108,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('simocampi',108,'confermato','giocatore');

INSERT INTO Punti VALUES('ilManzo',108,1);
INSERT INTO Punti VALUES('simocampi',108,0);

INSERT INTO Iscrizione VALUES('simocampi',109,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',109,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Porci',109,'confermato','giocatore');

INSERT INTO Punti VALUES('simocampi',109,1);
INSERT INTO Punti VALUES('Porci',109,1);

INSERT INTO Iscrizione VALUES('Onne',110,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',110,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Gughi',110,'confermato','giocatore');

INSERT INTO Punti VALUES('Onne',110,1);
INSERT INTO Punti VALUES('Gughi',110,0);

INSERT INTO Iscrizione VALUES('simocampi',111,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',111,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Gughi',111,'confermato','giocatore');

INSERT INTO Punti VALUES('simocampi',111,1);
INSERT INTO Punti VALUES('Gughi',111,2);

INSERT INTO Iscrizione VALUES('Onne',112,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ilManzo',112,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Porci',112,'confermato','giocatore');

INSERT INTO Punti VALUES('Onne',112,1);
INSERT INTO Punti VALUES('Porci',112,0);

INSERT INTO Iscrizione VALUES('simocampi',113,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Porci',113,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Sacco',113,'confermato','giocatore');

INSERT INTO Punti VALUES('simocampi',113,2);
INSERT INTO Punti VALUES('Sacco',113,1);

INSERT INTO Iscrizione VALUES('Onne',114,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ilManzo',114,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Annina',114,'confermato','giocatore');

INSERT INTO Punti VALUES('Onne',114,1);
INSERT INTO Punti VALUES('Annina',114,2);

INSERT INTO Iscrizione VALUES('simocampi',115,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('dapu97',115,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Annina',115,'confermato','giocatore');

INSERT INTO Punti VALUES('simocampi',115,1);
INSERT INTO Punti VALUES('Annina',115,1);

INSERT INTO Iscrizione VALUES('Onne',116,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ilManzo',116,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Sacco',116,'confermato','giocatore');

INSERT INTO Punti VALUES('Onne',116,1);
INSERT INTO Punti VALUES('Sacco',116,2);

INSERT INTO Iscrizione VALUES('Porci',117,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Onne',117,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Gughi',117,'confermato','giocatore');

INSERT INTO Punti VALUES('Porci',117,1);
INSERT INTO Punti VALUES('Gughi',117,0);

INSERT INTO Iscrizione VALUES('Sacco',118,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('ilManzo',118,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Annina',118,'confermato','giocatore');

INSERT INTO Punti VALUES('Sacco',118,1);
INSERT INTO Punti VALUES('Annina',118,0);

INSERT INTO Iscrizione VALUES('Porci',119,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('dapu97',119,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Sacco',119,'confermato','giocatore');

INSERT INTO Punti VALUES('Porci',119,1);
INSERT INTO Punti VALUES('Sacco',119,0);

INSERT INTO Iscrizione VALUES('Gughi',120,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('simocampi',120,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Annina',120,'confermato','giocatore');

INSERT INTO Punti VALUES('Gughi',120,1);
INSERT INTO Punti VALUES('Annina',120,0);

INSERT INTO Iscrizione VALUES('Porci',121,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Onne',121,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Annina',121,'confermato','giocatore');

INSERT INTO Punti VALUES('Porci',121,0);
INSERT INTO Punti VALUES('Annina',121,0);

INSERT INTO Iscrizione VALUES('Gughi',122,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('simocampi',122,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Sacco',122,'confermato','giocatore');

INSERT INTO Punti VALUES('Gughi',122,1);
INSERT INTO Punti VALUES('Sacco',122,2);
--secondo girone
INSERT INTO Iscrizione VALUES('Bimba98',123,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Colli',123,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Moncuu',123,'confermato','giocatore');

INSERT INTO Punti VALUES('Bimba98',123,1);
INSERT INTO Punti VALUES('Moncuu',123,0);

INSERT INTO Iscrizione VALUES('Carl',124,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pimpi',124,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Teo',124,'confermato','giocatore');

INSERT INTO Punti VALUES('Carl',124,0);
INSERT INTO Punti VALUES('Teo',124,0);

INSERT INTO Iscrizione VALUES('Bimba98',125,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pimpi',125,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Carl',125,'confermato','giocatore');

INSERT INTO Punti VALUES('Bimba98',125,1);
INSERT INTO Punti VALUES('Carl',125,0);

INSERT INTO Iscrizione VALUES('Moncuu',126,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Erika',126,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Teo',126,'confermato','giocatore');

INSERT INTO Punti VALUES('Moncuu',126,1);
INSERT INTO Punti VALUES('Teo',126,0);

INSERT INTO Iscrizione VALUES('Bimba98',127,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cece',127,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Teo',127,'confermato','giocatore');

INSERT INTO Punti VALUES('Bimba98',127,0);
INSERT INTO Punti VALUES('Teo',127,2);

INSERT INTO Iscrizione VALUES('Moncuu',128,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Erika',128,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Carl',128,'confermato','giocatore');

INSERT INTO Punti VALUES('Moncuu',128,1);
INSERT INTO Punti VALUES('Carl',128,2);

INSERT INTO Iscrizione VALUES('Bimba98',129,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Teo',129,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Erika',129,'confermato','giocatore');

INSERT INTO Punti VALUES('Bimba98',129,1);
INSERT INTO Punti VALUES('Erika',129,0);

INSERT INTO Iscrizione VALUES('Moncuu',130,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Annina',130,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Cece',130,'confermato','giocatore');

INSERT INTO Punti VALUES('Moncuu',130,1);
INSERT INTO Punti VALUES('Cece',130,1);

INSERT INTO Iscrizione VALUES('Bimba98',131,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Carl',131,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Cece',131,'confermato','giocatore');

INSERT INTO Punti VALUES('Bimba98',131,3);
INSERT INTO Punti VALUES('Cece',131,1);

INSERT INTO Iscrizione VALUES('Moncuu',132,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Colli',132,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Erika',132,'confermato','giocatore');

INSERT INTO Punti VALUES('Moncuu',132,1);
INSERT INTO Punti VALUES('Erika',132,1);

INSERT INTO Iscrizione VALUES('Bimba98',133,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Erika',133,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Colli',133,'confermato','giocatore');

INSERT INTO Punti VALUES('Bimba98',133,1);
INSERT INTO Punti VALUES('Colli',133,2);

INSERT INTO Iscrizione VALUES('Moncuu',134,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cece',134,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Pimpi',134,'confermato','giocatore');

INSERT INTO Punti VALUES('Moncuu',134,1);
INSERT INTO Punti VALUES('Pimpi',134,0);

INSERT INTO Iscrizione VALUES('Bimba98',135,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cece',135,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Pimpi',135,'confermato','giocatore');

INSERT INTO Punti VALUES('Bimba98',135,2);
INSERT INTO Punti VALUES('Pimpi',135,2);

INSERT INTO Iscrizione VALUES('Moncuu',136,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Erika',136,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Colli',136,'confermato','giocatore');

INSERT INTO Punti VALUES('Moncuu',136,1);
INSERT INTO Punti VALUES('Colli',136,1);

INSERT INTO Iscrizione VALUES('Carl',137,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Colli',137,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Cece',137,'confermato','giocatore');

INSERT INTO Punti VALUES('Carl',137,2);
INSERT INTO Punti VALUES('Cece',137,1);

INSERT INTO Iscrizione VALUES('Teo',138,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pimpi',138,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Erika',138,'confermato','giocatore');

INSERT INTO Punti VALUES('Teo',138,2);
INSERT INTO Punti VALUES('Erika',138,1);

INSERT INTO Iscrizione VALUES('Carl',139,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pimpi',139,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Erika',139,'confermato','giocatore');

INSERT INTO Punti VALUES('Carl',139,1);
INSERT INTO Punti VALUES('Erika',139,0);

INSERT INTO Iscrizione VALUES('Teo',140,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Moncuu',140,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Cece',140,'confermato','giocatore');

INSERT INTO Punti VALUES('Teo',140,1);
INSERT INTO Punti VALUES('Cece',140,1);

INSERT INTO Iscrizione VALUES('Carl',141,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bimba98',141,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Colli',141,'confermato','giocatore');

INSERT INTO Punti VALUES('Carl',141,1);
INSERT INTO Punti VALUES('Colli',141,0);

INSERT INTO Iscrizione VALUES('Teo',142,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cece',142,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Pimpi',142,'confermato','giocatore');

INSERT INTO Punti VALUES('Teo',142,1);
INSERT INTO Punti VALUES('Pimpi',142,0);

INSERT INTO Iscrizione VALUES('Carl',143,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Moncuu',143,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Pimpi',143,'confermato','giocatore');

INSERT INTO Punti VALUES('Carl',143,1);
INSERT INTO Punti VALUES('Pimpi',143,0);

INSERT INTO Iscrizione VALUES('Teo',144,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Erika',144,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Colli',144,'confermato','giocatore');

INSERT INTO Punti VALUES('Teo',144,2);
INSERT INTO Punti VALUES('Colli',144,1);

INSERT INTO Iscrizione VALUES('Erika',145,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Moncuu',145,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Cece',145,'confermato','giocatore');

INSERT INTO Punti VALUES('Erika',145,1);
INSERT INTO Punti VALUES('Cece',145,0);

INSERT INTO Iscrizione VALUES('Pimpi',146,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bimba98',146,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Colli',146,'confermato','giocatore');

INSERT INTO Punti VALUES('Pimpi',146,1);
INSERT INTO Punti VALUES('Colli',146,1);

INSERT INTO Iscrizione VALUES('Erika',147,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Moncuu',147,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Colli',147,'confermato','giocatore');

INSERT INTO Punti VALUES('Erika',147,1);
INSERT INTO Punti VALUES('Colli',147,0);

INSERT INTO Iscrizione VALUES('Cece',148,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bimba98',148,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Pimpi',148,'confermato','giocatore');

INSERT INTO Punti VALUES('Cece',148,2);
INSERT INTO Punti VALUES('Pimpi',148,1);

INSERT INTO Iscrizione VALUES('Erika',149,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Moncuu',149,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Pimpi',149,'confermato','giocatore');

INSERT INTO Punti VALUES('Erika',149,1);
INSERT INTO Punti VALUES('Pimpi',149,3);

INSERT INTO Iscrizione VALUES('Cece',150,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bimba98',150,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Colli',150,'confermato','giocatore');

INSERT INTO Punti VALUES('Cece',150,1);
INSERT INTO Punti VALUES('Colli',150,1);

--ottavi primo girone
INSERT INTO Iscrizione VALUES('dapu97',151,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Sacco',151,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('simocampi',151,'confermato','giocatore');

INSERT INTO Punti VALUES('dapu97',151,0);
INSERT INTO Punti VALUES('simocampi',151,1);

INSERT INTO Iscrizione VALUES('ilManzo',152,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gughi',152,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Annina',152,'confermato','giocatore');

INSERT INTO Punti VALUES('ilManzo',152,1);
INSERT INTO Punti VALUES('Annina',152,0);

INSERT INTO Iscrizione VALUES('Sacco',153,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('simocampi',153,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Gughi',153,'confermato','giocatore');

INSERT INTO Punti VALUES('Sacco',153,2);
INSERT INTO Punti VALUES('Gughi',153,3);

INSERT INTO Iscrizione VALUES('Porci',154,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('dapu97',154,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Onne',154,'confermato','giocatore');

INSERT INTO Punti VALUES('Porci',154,0);
INSERT INTO Punti VALUES('Onne',154,2);
--ottavi secondo girone
INSERT INTO Iscrizione VALUES('Carl',155,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cece',155,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Pimpi',155,'confermato','giocatore');

INSERT INTO Punti VALUES('Carl',155,2);
INSERT INTO Punti VALUES('Pimpi',155,0);

INSERT INTO Iscrizione VALUES('Teo',156,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bimba98',156,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Colli',156,'confermato','giocatore');

INSERT INTO Punti VALUES('Teo',156,2);
INSERT INTO Punti VALUES('Colli',156,1);

INSERT INTO Iscrizione VALUES('Bimba98',157,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Carl',157,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Cece',157,'confermato','giocatore');

INSERT INTO Punti VALUES('Bimba98',157,0);
INSERT INTO Punti VALUES('Cece',157,1);

INSERT INTO Iscrizione VALUES('Moncuu',158,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Teo',158,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Erika',158,'confermato','giocatore');

INSERT INTO Punti VALUES('Moncuu',158,1);
INSERT INTO Punti VALUES('Erika',158,2);
--quarti primo girone
INSERT INTO Iscrizione VALUES('simocampi',159,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Moncuu',159,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('ilManzo',159,'confermato','giocatore');

INSERT INTO Punti VALUES('simocampi',159,2);
INSERT INTO Punti VALUES('ilManzo',159,3);

INSERT INTO Iscrizione VALUES('Gughi',160,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Erika',160,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Onne',160,'confermato','giocatore');

INSERT INTO Punti VALUES('Gughi',160,0);
INSERT INTO Punti VALUES('Onne',160,1);
--Quarti secondo girone
INSERT INTO Iscrizione VALUES('Carl',161,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Pimpi',161,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Teo',161,'confermato','giocatore');

INSERT INTO Punti VALUES('Carl',161,2);
INSERT INTO Punti VALUES('Teo',161,1);

INSERT INTO Iscrizione VALUES('Cece',162,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Colli',162,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Erika',162,'confermato','giocatore');

INSERT INTO Punti VALUES('Cece',162,1);
INSERT INTO Punti VALUES('Erika',162,2);
--terzo quarto posto primo girone
INSERT INTO Iscrizione VALUES('simocampi',163,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Colli',163,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Gughi',163,'confermato','giocatore');

INSERT INTO Punti VALUES('simocampi',163,2);
INSERT INTO Punti VALUES('Gughi',163,1);
--terzo quarto posto secondo girone
INSERT INTO Iscrizione VALUES('Teo',164,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Bimba98',164,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Cece',164,'confermato','giocatore');

INSERT INTO Punti VALUES('Teo',164,1);
INSERT INTO Punti VALUES('Cece',164,0);
--semifinale primo girone
INSERT INTO Iscrizione VALUES('ilManzo',165,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Gughi',165,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Onne',165,'confermato','giocatore');

INSERT INTO Punti VALUES('ilManzo',165,3);
INSERT INTO Punti VALUES('Onne',165,2);
--semifinale secondo girone
INSERT INTO Iscrizione VALUES('Carl',166,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Cece',166,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Erika',166,'confermato','giocatore');

INSERT INTO Punti VALUES('Carl',166,2);
INSERT INTO Punti VALUES('Erika',166,0);
--terzo quarto posto torneo
INSERT INTO Iscrizione VALUES('Onne',167,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Moncuu',167,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Erika',167,'confermato','giocatore');

INSERT INTO Punti VALUES('Onne',167,1);
INSERT INTO Punti VALUES('Erika',167,2);
--finalissima
INSERT INTO Iscrizione VALUES('ilManzo',168,'confermato','giocatore');
INSERT INTO Iscrizione VALUES('Porci',168,'confermato','arbitro');
INSERT INTO Iscrizione VALUES('Carl',168,'confermato','giocatore');

INSERT INTO Punti VALUES('ilManzo',168,1);
INSERT INTO Punti VALUES('Carl',168,2);


INSERT INTO Post VALUES('Matematica','Pallavolo','Devoooo95','2018-10-15 12:50','Bella Partita',NULL);
INSERT INTO Post VALUES('Informatica','Tennis','ilManzo','2018-10-17 11:50','Bel match',NULL);
INSERT INTO Post VALUES('Economia','Calcio a 5','SimoGiro','2018-10-14 12:50','Arbitro venduto',NULL);
INSERT INTO Post VALUES('Scienze dell Architettura','Pallavolo','Foc','2018-10-15 10:50','Ottime battute',NULL);
INSERT INTO Post VALUES('Ingegneria Biomedica','Calcio a 5','ErikPerti','2018-10-14 14:50','Hanno mangiato un rigore',NULL);
INSERT INTO Post VALUES('Scienze Biologiche','Tennis','Casaccstefi','2018-10-17 21:50','Partita noiosetta',NULL);
INSERT INTO Post VALUES('Fisica','Pallavolo','IlRoss','2018-10-15 16:50','La prossima volta giocate meglio',NULL);
INSERT INTO Post VALUES('Scienze Ambientali','Tennis','Gelll','2018-10-17 18:50','Match piatto',NULL);
INSERT INTO Post VALUES('Giurisprudenza','Tennis','Frank89','2018-10-17 14:50','Bravi etrambi',NULL);
INSERT INTO Post VALUES('Psicologia','Pallavolo','Verdi90','2018-10-15 16:50','Troppo breve',NULL);
INSERT INTO Post VALUES('Ingegneria Informatica','Pallavolo','Marli_one','2018-10-15 10:50','Ottimi muri',NULL);
INSERT INTO Post VALUES('Ingegneria Nav','Pallavolo','SannaMarghe','2018-10-15 13:50','Buone schiacciate',NULL);
INSERT INTO Post VALUES('Scienze Politiche Internazionali','Calcio a 5','MarcGiuli','2018-10-14 15:50','Poche azioni degne di nota',NULL);
INSERT INTO Post VALUES('Fisica','Pallavolo','Fraaaa','2018-10-15 20:50','Partita rilassante',NULL);
INSERT INTO Post VALUES('Informatica','Calcio a 5','simocampi','2018-10-14 15:50','La prossima volta non scommetto pi?',NULL);
INSERT INTO Post VALUES('Psicologia','Tennis','Bibi98','2018-10-17 11:50','Bravi tutti',NULL);
INSERT INTO Post VALUES('Psicologia','Tennis','Verdi90','2018-10-17 14:50','Fantastiche battute',NULL);
INSERT INTO Post VALUES('Ingegneria Nav','Pallavolo','Branc','2018-10-15 18:30','Muovete quelle gambe!',NULL);
INSERT INTO Post VALUES('Fisica','Calcio a 5','SimoGaviz','2018-10-14 14:50','Bella partita',NULL);
INSERT INTO Post VALUES('Informatica','Pallavolo','dapu97','2018-10-16 12:00','Partita noiosa',NULL);
INSERT INTO Post VALUES('Matematica','Calcio a 5','Devoooo95','2018-10-14 12:50','Bella partita',NULL);
INSERT INTO Post VALUES('Matematica','Tennis','Devoooo95','2018-10-17 14:50','emozionante finaleo alla finalee',NULL);
INSERT INTO Post VALUES('Economia','Pallavolo','Schiappa96','2018-10-15 16:50','Bella partita',NULL);
INSERT INTO Post VALUES('Ingegneria Informatica','Calcio a 5','Bofabi','2018-10-14 12:50','Bravo il portiere',NULL);
INSERT INTO Post VALUES('Giurisprudenza','Calcio a 5','Moncuu','2018-10-14 11:50','Numero 2 uomo partita',NULL);
INSERT INTO Post VALUES('Scienze Ambientali','Pallavolo','FaVince85','2018-10-15 16:50','Forza!',NULL);





INSERT INTO Valuta VALUES('Ste',1,'Elotti','2018-10-14 9:55',NULL,10);
INSERT INTO Valuta VALUES('Carl',2,'Albi','2018-10-14 10:55',NULL,9);
INSERT INTO Valuta VALUES('Bimba98',3,'Enzo','2018-10-14 11:55',NULL,4);
INSERT INTO Valuta VALUES('LaDe',4,'Eleee98','2018-10-14 12:55',NULL,5);
INSERT INTO Valuta VALUES('Fountainbleau',5,'Albi','2018-10-14 14:55',NULL,7);
INSERT INTO Valuta VALUES('Castel',86,'Eleee98','2018-10-14 16:55',NULL,3);
INSERT INTO Valuta VALUES('Damont',6,'Elotti','2018-10-14 15:55',NULL,6);

INSERT INTO Valuta VALUES('Fraaaa',7,'Lillo','2018-10-15 10:55',NULL,6);
INSERT INTO Valuta VALUES('Gre',8,'Riccio','2018-10-15 10:55',NULL,5);
INSERT INTO Valuta VALUES('Amed',9,'Ines','2018-10-15 12:55',NULL,8);

INSERT INTO Valuta VALUES('Lori',11,'Gal','2018-10-15 14:55',NULL,2);
INSERT INTO Valuta VALUES('Sav',12,'Ines','2018-10-15 14:55',NULL,3);
INSERT INTO Valuta VALUES('Budi',13,'Cop','2018-10-15 16:55',NULL,6);
INSERT INTO Valuta VALUES('Storac',14,'Kry','2018-10-15 16:55',NULL,7);
INSERT INTO Valuta VALUES('Scu',15,'Cla98','2018-10-15 18:55',NULL,7);
INSERT INTO Valuta VALUES('FantiAlb',16,'Pier','2018-10-15 18:55',NULL,8);
INSERT INTO Valuta VALUES('Strafo',17,'Raspa','2018-10-15 20:55',NULL,9);
INSERT INTO Valuta VALUES('Budi',18,'Kry','2018-10-15 20:55',NULL,10);
INSERT INTO Valuta VALUES('alepizz',19,'Raspa','2018-10-16 10:55',NULL,6);
INSERT INTO Valuta VALUES('Penny',20,'Gal','2018-10-16 10:55',NULL,3);


INSERT INTO Valuta VALUES('ilManzo',22,'Sacco','2018-10-17 11:55',NULL,8);
INSERT INTO Valuta VALUES('Onne',23,'Porci','2018-10-17 11:55',NULL,8);
INSERT INTO Valuta VALUES('Porci',24,'Gughi','2018-10-17 14:55',NULL,2);
INSERT INTO Valuta VALUES('Annina',25,'Onne','2018-10-17 14:55',NULL,7);
INSERT INTO Valuta VALUES('simocampi',26,'Onne','2018-10-17 17:55',NULL,8);
INSERT INTO Valuta VALUES('Sacco',27,'dapu97','2018-10-17 17:55',NULL,5);
INSERT INTO Valuta VALUES('Gughi',28,'Sacco','2018-10-17 21:55',NULL,7);
INSERT INTO Valuta VALUES('Maria',29,'Lillo','2018-10-18 9:55',NULL,10);
INSERT INTO Valuta VALUES('Verro',30,'Riccio','2018-10-18 9:55',NULL,3);
INSERT INTO Valuta VALUES('Lucy',31,'Ines','2018-10-18 10:55',NULL,5);
INSERT INTO Valuta VALUES('Cata',33,'Gal','2018-10-18 11:55',NULL,8);
INSERT INTO Valuta VALUES('Gu',34,'Ines','2018-10-18 11:55',NULL,8);
INSERT INTO Valuta VALUES('Candy',35,'Cop','2018-10-18 12:55',NULL,6);
INSERT INTO Valuta VALUES('Sasha',36,'Kry','2018-10-18 12:55',NULL,4);
INSERT INTO Valuta VALUES('Mem',37,'Cla98','2018-10-18 13:55',NULL,9);
INSERT INTO Valuta VALUES('ChiaMo',38,'Pier','2018-10-18 13:55',NULL,9);
INSERT INTO Valuta VALUES('dapu97',39,'Raspa','2018-10-18 14:55',NULL,10);
INSERT INTO Valuta VALUES('Benve',40,'Kry','2018-10-18 14:55',NULL,6);
INSERT INTO Valuta VALUES('Scu',41,'Raspa','2018-10-18 16:55',NULL,8);
INSERT INTO Valuta VALUES('Sha',42,'Gal','2018-10-18 16:55',NULL,10);
INSERT INTO Valuta VALUES('Ric',43,'Berna','2018-10-18 18:55',NULL,2);

INSERT INTO Valuta VALUES('Svano',44,'Strafo','2018-10-19 11:55',NULL,5);
INSERT INTO Valuta VALUES('Albi',45,'SofiSofi','2018-10-19 11:55',NULL,3);
INSERT INTO Valuta VALUES('Cece',46,'Cangio','2018-10-19 14:55',NULL,8);
INSERT INTO Valuta VALUES('Enzo',47,'Raspa','2018-10-19 14:55',NULL,4);
INSERT INTO Valuta VALUES('ChiaMo',48,'Eleee98','2018-10-19 17:55',NULL,4);
INSERT INTO Valuta VALUES('Gianb',50,'Budi','2018-10-19 20:55',NULL,6);
INSERT INTO Valuta VALUES('Musso',51,'Kry','2018-10-19 20:55',NULL,9);
INSERT INTO Valuta VALUES('Damont',52,'SofiSofi','2018-10-20 11:55',NULL,5);
INSERT INTO Valuta VALUES('Dan',53,'Raspa','2018-10-20 11:55',NULL,3);
INSERT INTO Valuta VALUES('Ari',54,'Eleee98','2018-10-20 14:55',NULL,10);
INSERT INTO Valuta VALUES('Ric',55,'Kry','2018-10-20 14:55',NULL,6);
INSERT INTO Valuta VALUES('Luca',56,'Cangio','2018-10-20 17:55',NULL,8);
INSERT INTO Valuta VALUES('Ari',57,'Budi','2018-10-20 17:55',NULL,7);
INSERT INTO Valuta VALUES('Dan',58,'Cangio','2018-10-20 20:55',NULL,6);

INSERT INTO Valuta VALUES('Micki',79,'Carl','2018-10-29 11:55',NULL,6);
INSERT INTO Valuta VALUES('Carl',80,'Bimba98','2018-10-29 11:55',NULL,8);
INSERT INTO Valuta VALUES('Erika',81,'Teo','2018-10-29 14:55',NULL,4);
INSERT INTO Valuta VALUES('Colli',82,'Erika','2018-10-29 14:55',NULL,2);
INSERT INTO Valuta VALUES('Bimba98',83,'Cece','2018-10-29 17:55',NULL,10);
INSERT INTO Valuta VALUES('Pimpi',84,'Carl','2018-10-29 17:55',NULL,6);
INSERT INTO Valuta VALUES('Erika',85,'Bimba98','2018-10-29 21:55',NULL,8);


INSERT INTO Esito VALUES(1,'2018-10-14 9:50','00:50:00');
INSERT INTO Esito VALUES(2,'2018-10-14 10:50','00:50:00');
INSERT INTO Esito VALUES(3,'2018-10-14 11:50','00:50:00');
INSERT INTO Esito VALUES(4,'2018-10-14 12:50','00:50:00');
INSERT INTO Esito VALUES(5,'2018-10-14 14:50','00:50:00');
INSERT INTO Esito VALUES(6,'2018-10-14 17:00','00:50:00');
INSERT INTO Esito VALUES(86,'2018-10-14 16:50','00:50:00');

INSERT INTO Esito VALUES(7,'2018-10-15 10:50','01:50:00');
INSERT INTO Esito VALUES(8,'2018-10-15 10:50','01:50:00');
INSERT INTO Esito VALUES(9,'2018-10-15 11:50','01:50:00');
INSERT INTO Esito VALUES(10,'2018-10-15 12:50','01:50:00');
INSERT INTO Esito VALUES(11,'2018-10-15 14:50','01:50:00');
INSERT INTO Esito VALUES(12,'2018-10-15 16:50','01:50:00');
INSERT INTO Esito VALUES(13,'2018-10-15 16:50','01:50:00');
INSERT INTO Esito VALUES(14,'2018-10-15 16:50','01:50:00');
INSERT INTO Esito VALUES(15,'2018-10-15 18:50','01:50:00');
INSERT INTO Esito VALUES(16,'2018-10-15 18:50','01:50:00');
INSERT INTO Esito VALUES(17,'2018-10-15 20:50','01:50:00');
INSERT INTO Esito VALUES(18,'2018-10-15 20:50','01:50:00');
INSERT INTO Esito VALUES(19,'2018-10-16 10:50','01:50:00');
INSERT INTO Esito VALUES(20,'2018-10-16 10:50','01:50:00');
INSERT INTO Esito VALUES(21,'2018-10-16 13:50','01:50:00');

INSERT INTO Esito VALUES(22,'2018-10-17 11:50','02:50:00');
INSERT INTO Esito VALUES(23,'2018-10-17 11:50','02:50:00');
INSERT INTO Esito VALUES(24,'2018-10-17 14:50','02:50:00');
INSERT INTO Esito VALUES(25,'2018-10-17 14:50','02:50:00');
INSERT INTO Esito VALUES(26,'2018-10-17 17:50','02:50:00');
INSERT INTO Esito VALUES(27,'2018-10-17 17:50','02:50:00');
INSERT INTO Esito VALUES(28,'2018-10-17 21:50','02:50:00');

INSERT INTO Esito VALUES(29,'2018-10-18 9:50','00:50:00');
INSERT INTO Esito VALUES(30,'2018-10-18 9:50','00:50:00');
INSERT INTO Esito VALUES(31,'2018-10-18 10:50','00:50:00');
INSERT INTO Esito VALUES(32,'2018-10-18 10:50','00:50:00');
INSERT INTO Esito VALUES(33,'2018-10-18 11:50','00:50:00');
INSERT INTO Esito VALUES(34,'2018-10-18 11:50','00:50:00');
INSERT INTO Esito VALUES(35,'2018-10-18 12:50','00:50:00');
INSERT INTO Esito VALUES(36,'2018-10-18 12:50','00:50:00');
INSERT INTO Esito VALUES(37,'2018-10-18 13:50','00:50:00');
INSERT INTO Esito VALUES(38,'2018-10-18 13:50','00:50:00');
INSERT INTO Esito VALUES(39,'2018-10-18 14:50','00:50:00');
INSERT INTO Esito VALUES(40,'2018-10-18 14:50','00:50:00');
INSERT INTO Esito VALUES(41,'2018-10-18 16:50','00:50:00');
INSERT INTO Esito VALUES(42,'2018-10-18 16:50','00:50:00');
INSERT INTO Esito VALUES(43,'2018-10-18 18:50','00:50:00');

INSERT INTO Esito VALUES(44,'2018-10-19 11:50','02:50:00');
INSERT INTO Esito VALUES(45,'2018-10-19 11:50','02:50:00');
INSERT INTO Esito VALUES(46,'2018-10-19 14:50','02:50:00');
INSERT INTO Esito VALUES(47,'2018-10-19 14:50','02:50:00');
INSERT INTO Esito VALUES(48,'2018-10-19 17:50','02:50:00');
INSERT INTO Esito VALUES(49,'2018-10-19 17:50','02:50:00');
INSERT INTO Esito VALUES(50,'2018-10-19 20:50','02:50:00');
INSERT INTO Esito VALUES(51,'2018-10-19 20:50','02:50:00');
INSERT INTO Esito VALUES(52,'2018-10-20 11:50','02:50:00');
INSERT INTO Esito VALUES(53,'2018-10-20 11:50','02:50:00');
INSERT INTO Esito VALUES(54,'2018-10-20 14:50','02:50:00');
INSERT INTO Esito VALUES(55,'2018-10-20 14:50','02:50:00');
INSERT INTO Esito VALUES(56,'2018-10-20 17:50','02:50:00');
INSERT INTO Esito VALUES(57,'2018-10-20 17:50','02:50:00');
INSERT INTO Esito VALUES(58,'2018-10-20 20:50','02:50:00');

INSERT INTO Esito VALUES(59,'2018-10-25 10:50','01:50:00');
INSERT INTO Esito VALUES(60,'2018-10-26 11:00','01:50:00');
INSERT INTO Esito VALUES(61,'2018-10-26 13:00','01:50:00');
INSERT INTO Esito VALUES(62,'2018-10-26 15:00','01:50:00');
INSERT INTO Esito VALUES(63,'2018-10-26 17:00','01:50:00');
INSERT INTO Esito VALUES(64,'2018-10-26 19:00','01:50:00');
INSERT INTO Esito VALUES(65,'2018-10-26 19:00','01:50:00');
INSERT INTO Esito VALUES(66,'2018-10-26 21:00','01:50:00');
INSERT INTO Esito VALUES(67,'2018-10-26 23:00','01:50:00');
INSERT INTO Esito VALUES(68,'2018-10-27 01:00','01:50:00');
INSERT INTO Esito VALUES(69,'2018-10-27 10:50','01:50:00');
INSERT INTO Esito VALUES(70,'2018-10-27 10:50','01:50:00');
INSERT INTO Esito VALUES(71,'2018-10-27 12:50','01:50:00');
INSERT INTO Esito VALUES(72,'2018-10-27 14:00','01:50:00');
INSERT INTO Esito VALUES(73,'2018-10-27 16:00','01:50:00');
INSERT INTO Esito VALUES(74,'2018-10-27 18:00','01:50:00');
INSERT INTO Esito VALUES(75,'2018-10-28 16:50','01:50:00');
INSERT INTO Esito VALUES(76,'2018-10-28 16:50','01:50:00');
INSERT INTO Esito VALUES(77,'2018-10-28 18:50','01:50:00');
INSERT INTO Esito VALUES(78,'2018-10-28 18:50','01:50:00');
INSERT INTO Esito VALUES(87,'2018-10-28 21:50','01:50:00');

INSERT INTO Esito VALUES(79,'2018-10-29 11:50','02:50:00');
INSERT INTO Esito VALUES(80,'2018-10-29 14:00','02:50:00');
INSERT INTO Esito VALUES(81,'2018-10-29 16:00','02:50:00');
INSERT INTO Esito VALUES(82,'2018-10-29 18:00','02:50:00');
INSERT INTO Esito VALUES(83,'2018-10-29 20:00','02:50:00');
INSERT INTO Esito VALUES(84,'2018-10-29 22:00','02:50:00');
INSERT INTO Esito VALUES(85,'2018-10-30 00:00','02:50:00');

--Spareggi
INSERT INTO Esito VALUES(90,'2018-10-14 17:50','00:50:00');
INSERT INTO Esito VALUES(91,'2018-10-16 15:50','01:50:00');
INSERT INTO Esito VALUES(92,'2018-10-18 21:50','02:50:00');
INSERT INTO Esito VALUES(93,'2018-10-21 20:50','02:50:00');
INSERT INTO Esito VALUES(94,'2018-10-30 19:50','02:50:00');

INSERT INTO Esito VALUES(95,'2018-11-1 11:50','02:50:00');
INSERT INTO Esito VALUES(96,'2018-11-1 11:50','02:50:00');
INSERT INTO Esito VALUES(97,'2018-11-1 14:50','02:50:00');
INSERT INTO Esito VALUES(98,'2018-11-1 14:50','02:50:00');
INSERT INTO Esito VALUES(99,'2018-11-1 17:50','02:50:00');
INSERT INTO Esito VALUES(100,'2018-11-1 17:50','02:50:00');
INSERT INTO Esito VALUES(101,'2018-11-1 20:50','02:50:00');
INSERT INTO Esito VALUES(102,'2018-11-1 20:50','02:50:00');
INSERT INTO Esito VALUES(103,'2018-11-2 11:50','02:50:00');
INSERT INTO Esito VALUES(104,'2018-11-2 11:50','02:50:00');
INSERT INTO Esito VALUES(105,'2018-11-2 14:50','02:50:00');
INSERT INTO Esito VALUES(106,'2018-11-2 14:50','02:50:00');
INSERT INTO Esito VALUES(107,'2018-11-2 17:50','02:50:00');
INSERT INTO Esito VALUES(108,'2018-11-2 17:50','02:50:00');
INSERT INTO Esito VALUES(109,'2018-11-2 20:50','02:50:00');
INSERT INTO Esito VALUES(110,'2018-11-2 20:50','02:50:00');
INSERT INTO Esito VALUES(111,'2018-11-3 11:50','02:50:00');
INSERT INTO Esito VALUES(112,'2018-11-3 11:50','02:50:00');
INSERT INTO Esito VALUES(113,'2018-11-3 14:50','02:50:00');
INSERT INTO Esito VALUES(114,'2018-11-3 14:50','02:50:00');
INSERT INTO Esito VALUES(115,'2018-11-3 17:50','02:50:00');
INSERT INTO Esito VALUES(116,'2018-11-3 17:50','02:50:00');
INSERT INTO Esito VALUES(117,'2018-11-3 20:50','02:50:00');
INSERT INTO Esito VALUES(118,'2018-11-3 20:50','02:50:00');
INSERT INTO Esito VALUES(119,'2018-11-4 11:50','02:50:00');
INSERT INTO Esito VALUES(120,'2018-11-4 11:50','02:50:00');
INSERT INTO Esito VALUES(121,'2018-11-4 14:50','02:50:00');
INSERT INTO Esito VALUES(122,'2018-11-4 14:50','02:50:00');
INSERT INTO Esito VALUES(123,'2018-11-4 17:50','02:50:00');
INSERT INTO Esito VALUES(124,'2018-11-4 17:50','02:50:00');
INSERT INTO Esito VALUES(125,'2018-11-4 20:50','02:50:00');
INSERT INTO Esito VALUES(126,'2018-11-4 20:50','02:50:00');
INSERT INTO Esito VALUES(127,'2018-11-5 11:50','02:50:00');
INSERT INTO Esito VALUES(128,'2018-11-5 11:50','02:50:00');
INSERT INTO Esito VALUES(129,'2018-11-5 14:50','02:50:00');
INSERT INTO Esito VALUES(130,'2018-11-5 14:50','02:50:00');
INSERT INTO Esito VALUES(131,'2018-11-5 17:50','02:50:00');
INSERT INTO Esito VALUES(132,'2018-11-5 17:50','02:50:00');
INSERT INTO Esito VALUES(133,'2018-11-5 20:50','02:50:00');
INSERT INTO Esito VALUES(134,'2018-11-5 20:50','02:50:00');
INSERT INTO Esito VALUES(135,'2018-11-6 11:50','02:50:00');
INSERT INTO Esito VALUES(136,'2018-11-6 11:50','02:50:00');
INSERT INTO Esito VALUES(137,'2018-11-6 14:50','02:50:00');
INSERT INTO Esito VALUES(138,'2018-11-6 14:50','02:50:00');
INSERT INTO Esito VALUES(139,'2018-11-6 17:50','02:50:00');
INSERT INTO Esito VALUES(140,'2018-11-6 17:50','02:50:00');
INSERT INTO Esito VALUES(141,'2018-11-6 20:50','02:50:00');
INSERT INTO Esito VALUES(142,'2018-11-6 20:50','02:50:00');
INSERT INTO Esito VALUES(143,'2018-11-7 11:50','02:50:00');
INSERT INTO Esito VALUES(144,'2018-11-7 11:50','02:50:00');
INSERT INTO Esito VALUES(145,'2018-11-7 14:50','02:50:00');
INSERT INTO Esito VALUES(146,'2018-11-7 14:50','02:50:00');
INSERT INTO Esito VALUES(147,'2018-11-7 17:50','02:50:00');
INSERT INTO Esito VALUES(148,'2018-11-7 17:50','02:50:00');
INSERT INTO Esito VALUES(149,'2018-11-7 20:50','02:50:00');
INSERT INTO Esito VALUES(150,'2018-11-7 20:50','02:50:00');
INSERT INTO Esito VALUES(151,'2018-11-8 11:50','02:50:00');
INSERT INTO Esito VALUES(152,'2018-11-8 11:50','02:50:00');
INSERT INTO Esito VALUES(153,'2018-11-8 14:50','02:50:00');
INSERT INTO Esito VALUES(154,'2018-11-8 14:50','02:50:00');
INSERT INTO Esito VALUES(155,'2018-11-8 17:50','02:50:00');
INSERT INTO Esito VALUES(156,'2018-11-8 17:50','02:50:00');
INSERT INTO Esito VALUES(157,'2018-11-8 20:50','02:50:00');
INSERT INTO Esito VALUES(158,'2018-11-8 20:50','02:50:00');
INSERT INTO Esito VALUES(159,'2018-11-9 11:50','02:50:00');
INSERT INTO Esito VALUES(160,'2018-11-9 11:50','02:50:00');
INSERT INTO Esito VALUES(161,'2018-11-9 14:50','02:50:00');
INSERT INTO Esito VALUES(162,'2018-11-9 14:50','02:50:00');
INSERT INTO Esito VALUES(163,'2018-11-9 17:50','02:50:00');
INSERT INTO Esito VALUES(164,'2018-11-9 17:50','02:50:00');
INSERT INTO Esito VALUES(165,'2018-11-9 20:50','02:50:00');
INSERT INTO Esito VALUES(166,'2018-11-9 20:50','02:50:00');
INSERT INTO Esito VALUES(167,'2018-11-10 11:50','02:50:00');
INSERT INTO Esito VALUES(168,'2018-11-10 11:50','02:50:00');