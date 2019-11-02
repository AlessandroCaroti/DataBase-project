set search_path to "UniGenovaSocialSport";


INSERT INTO CorsoDiStudi VALUES ('Matematica');
INSERT INTO CorsoDiStudi VALUES ('Fisica');
INSERT INTO CorsoDiStudi VALUES ('Ingegneria Informatica');
INSERT INTO CorsoDiStudi VALUES ('Scienze Ambientali');
INSERT INTO CorsoDiStudi VALUES ('Informatica');
INSERT INTO CorsoDiStudi VALUES ('Ingegneria Biomedica');
INSERT INTO CorsoDiStudi VALUES ('Economia');
INSERT INTO CorsoDiStudi VALUES ('Ingegneria Nav');
INSERT INTO CorsoDiStudi VALUES ('Scienze dell’ Architettura');

INSERT INTO Struttura VALUES ('Casarza Arena','Via San Giovanni','acdcasarzaligure@virgilio.it',66,1.993366,'0185389802');
INSERT INTO Struttura VALUES ('Impianto Don Bosco','Via S.G. Bosco 14r',' segreteria@donboscocalcio.it',43,2.09406,'03549710105');
INSERT INTO Struttura VALUES ('Bagni Italia','Corso Italia','info@bagnitaliagenova.it',47,1.990932,'0103620685');
INSERT INTO Struttura VALUES ('Valletta Cambiaso Asd','Via Federico Ricci 1','asd@vallettacambiaso.it',56.98,1.876994,'0103620730');
INSERT INTO Struttura VALUES ('A.S.D Pink Volley Genova','Via Timavo 63','info@pinkvolleygenova.it',34.983,2.003112 ,'3755977971');
INSERT INTO Struttura VALUES ('Complesso Sportivo Valle Puggia','Via Timavo 64','info@pinkvolleygenova.it',34.698,2.003666 ,'3755977971');

INSERT INTO Premi VALUES (0,'100 euro');
INSERT INTO Premi VALUES (1,'1500 euro');
INSERT INTO Premi VALUES (2,'1000 euro');
INSERT INTO Premi VALUES (3,'650 euro');
INSERT INTO Premi VALUES (4,'5 notti a Londra in hotel a 4 stelle');
INSERT INTO Premi VALUES (5,'3 giorni ad Aosta in una Beauty & SPA');
INSERT INTO Premi VALUES (6,'Cena in un ristorante esclusivo di Genova');
INSERT INTO Premi VALUES (7,'Ingresso omaggio concerto Vasco Rossi Genova');
INSERT INTO Premi VALUES (8,'Tuta della squadra del cuore');
INSERT INTO Premi VALUES (9,'Gadget vari');

INSERT INTO Restrizioni VALUES (1,'I partecipanti devono essere regolarmente iscritti all università di Genova');
INSERT INTO Restrizioni VALUES (2,'Possono iscriversi al torneo solo gli utenti che hanno giocato ad almeno un evento della stessa categoria');

INSERT INTO Sport VALUES ('Pallavolo','','https://it.wikipedia.org/wiki/Pallavolo#/media/File:Mondiali_di_pallavolo_2014_(15437127220).jpg',12);
INSERT INTO Sport VALUES ('Tennis','Tennis singolo: Tennis singolo: Viene considerato punto quando esce la pallina, oppure quando fa 2 rimbalzi nel campo avversario(obbligatorio un rimbalzo).Il campo può essere in terra battuta, erba o sintetico. Le Fasi di gioco son suddivise in set, suddivisi a loro volta in game.Per vincere un game, bisogna superare l avversario di almeno due punti. I punti hanno la particolarità di non seguire la normale successione numerica: 15 - 30 - 40 - vittoria.Per vincere un set, bisogna vincere 6 game. Se si arriva a 6 pari si fa il Tie Break, dove si alternato alla battuta i giocatori. Chi ha uno scarto di due punti a partire dall settimo punto vince il tie break.', 'https://it.wikipedia.org/wiki/Tennis#/media/File:Centre_Court.jpg',2,FALSE);
INSERT INTO Sport VALUES ('Calcio a 5','Squadre composte da 5 giocatori (compreso il portiere), le partite si giocano a in un campo lungo dai 25 ai 42 metri e largo dai 15 ai 25 metri. Se viene commesso fallo nell’area di rigore, verrà dato calcio di rigore per la squadra che ha subito il fallo, altrimenti se fuori calcio di punizione.Per proteste o fallo antisportivo può venire assegnato un cartellino giallo (2 gialli= 1 rosso).Se il pallone supera la riga della porta, viene dato punto alla squadra del portiere opposto. Per la durata della gara son previsti due periodi da 20 minuti ciascuno.','https://it.wikipedia.org/wiki/Calcio_a_5#/media/File:Calcio_punizione_C5.jpg',10);
INSERT INTO Sport VALUES ('Tennis Doppio','Tennis doppio: Come il tennis singolo ma a squadre composte da due giocatori','https://www.tennisworlditalia.com/world/media/tecnica_media/doppio-300x235.jpg',4);

INSERT INTO Utente VALUES ('babushka1','S4129402','L8qbAD3jl3jioxG6CatHBw','Aurora','Abu',2000,'Alessandria','+393421996023','Informatica',TRUE);
INSERT INTO Utente VALUES ('baby face','S1324351','BB4e6X+b2xLioxG6CatHBw','Giulia','Accadia',1993,'Asti','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('babykins','S9784362','j9p+HwtWWT/ioxG6CatHBw','Emma','Acunzo',1995,'Biella','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('bitsy','S7834842','5djv7ZCI2ws','Giorgia','Adorno',1996, 'Cuneo','+393421996023','Economia',TRUE);
INSERT INTO Utente VALUES ('cowboy','S2193563','7LqYzKVeq8I','Alice', 'Aguila',1989,'Genova','+393421996023','Ingegneria Informatica', TRUE);
INSERT INTO Utente VALUES ('minnesinger','S431060','zkXlvHcZYOg','Giulio','Renzoni',1993,'Savona','+393421996023','Fisica',TRUE);
INSERT INTO Utente VALUES ('aalborg','S5821436','yxzNxPIsFno','Angelica','Barone',1996,'Genova','+393421996023','Informatica',TRUE);

INSERT INTO Evento VALUES ( 9999,'APERTO','2020-12-18 9:00', '2020-12-18 9:50','Pallavolo','A.S.D Pink Volley Genova',NULL,NULL,'aalborg');

INSERT INTO Sponsor VALUES ('sponsor000');
INSERT INTO Sponsor VALUES ('sponsor001');
INSERT INTO Sponsor VALUES ('sponsor002');
INSERT INTO Sponsor VALUES ('sponsor003');
INSERT INTO Sponsor VALUES ('sponsor004');
INSERT INTO Sponsor VALUES ('sponsor005');
INSERT INTO Sponsor VALUES ('sponsor006');
INSERT INTO Sponsor VALUES ('sponsor007');
INSERT INTO Sponsor VALUES ('sponsor008');
INSERT INTO Sponsor VALUES ('sponsor009');
INSERT INTO Sponsor VALUES ('sponsor010');
INSERT INTO Sponsor VALUES ('sponsor011');

INSERT INTO Utente VALUES ('Utente000','s999000','psw000','nome000','cgn000',1995,'Genova','+393421996023','Ingegneria Nav',TRUE);
INSERT INTO Utente VALUES ('Utente001','s999001','psw001','nome001','cgn001',1987,'Genova','+393421996023','Scienze Ambientali',TRUE);
INSERT INTO Utente VALUES ('Utente002','s999002','psw002','nome002','cgn002',1996,'Genova','+393421996023','Economia',TRUE);
INSERT INTO Utente VALUES ('Utente003','s999003','psw003','nome003','cgn003',1993,'Genova','+393421996023','Ingegneria Nav',TRUE);
INSERT INTO Utente VALUES ('Utente004','s999004','psw004','nome004','cgn004',1993,'Genova','+393421996023','Scienze dell’ Architettura',TRUE);
INSERT INTO Utente VALUES ('Utente005','s999005','psw005','nome005','cgn005',1998,'Genova','+393421996023','Economia',TRUE);
INSERT INTO Utente VALUES ('Utente006','s999006','psw006','nome006','cgn006',1990,'Genova','+393421996023','Ingegneria Informatica',TRUE);
INSERT INTO Utente VALUES ('Utente007','s999007','psw007','nome007','cgn007',1998,'Genova','+393421996023','Informatica',TRUE);
INSERT INTO Utente VALUES ('Utente008','s999008','psw008','nome008','cgn008',1996,'Genova','+393421996023','Fisica',TRUE);
INSERT INTO Utente VALUES ('Utente009','s999009','psw009','nome009','cgn009',1993,'Genova','+393421996023','Scienze Ambientali',TRUE);
INSERT INTO Utente VALUES ('Utente010','s999010','psw010','nome010','cgn010',1987,'Genova','+393421996023','Economia',TRUE);
INSERT INTO Utente VALUES ('Utente011','s999011','psw011','nome011','cgn011',1995,'Genova','+393421996023','Scienze Ambientali',TRUE);
INSERT INTO Utente VALUES ('Utente012','s999012','psw012','nome012','cgn012',1999,'Genova','+393421996023','Ingegneria Nav',TRUE);
INSERT INTO Utente VALUES ('Utente013','s999013','psw013','nome013','cgn013',1996,'Genova','+393421996023','Scienze dell’ Architettura',TRUE);
INSERT INTO Utente VALUES ('Utente014','s999014','psw014','nome014','cgn014',1998,'Genova','+393421996023','Scienze Ambientali',TRUE);
INSERT INTO Utente VALUES ('Utente015','s999015','psw015','nome015','cgn015',1985,'Genova','+393421996023','Matematica',TRUE);
INSERT INTO Utente VALUES ('Utente016','s999016','psw016','nome016','cgn016',1998,'Genova','+393421996023','Ingegneria Nav',TRUE);
INSERT INTO Utente VALUES ('Utente017','s999017','psw017','nome017','cgn017',1993,'Genova','+393421996023','Ingegneria Biomedica',TRUE);
INSERT INTO Utente VALUES ('Utente018','s999018','psw018','nome018','cgn018',1990,'Genova','+393421996023','Informatica',TRUE);
INSERT INTO Utente VALUES ('Utente019','s999019','psw019','nome019','cgn019',1999,'Genova','+393421996023','Informatica',TRUE);
INSERT INTO Utente VALUES ('Utente020','s999020','psw020','nome020','cgn020',1986,'Genova','+393421996023','Matematica',TRUE);
INSERT INTO Utente VALUES ('Utente021','s999021','psw021','nome021','cgn021',1993,'Genova','+393421996023','Informatica',TRUE);
INSERT INTO Utente VALUES ('Utente022','s999022','psw022','nome022','cgn022',1986,'Genova','+393421996023','Matematica',TRUE);
INSERT INTO Utente VALUES ('Utente023','s999023','psw023','nome023','cgn023',1999,'Genova','+393421996023','Ingegneria Biomedica',TRUE);
INSERT INTO Utente VALUES ('Utente024','s999024','psw024','nome024','cgn024',1997,'Genova','+393421996023','Matematica',TRUE);
INSERT INTO Utente VALUES ('Utente025','s999025','psw025','nome025','cgn025',1990,'Genova','+393421996023','Fisica',TRUE);
INSERT INTO Utente VALUES ('Utente026','s999026','psw026','nome026','cgn026',1996,'Genova','+393421996023','Informatica',TRUE);
INSERT INTO Utente VALUES ('Utente027','s999027','psw027','nome027','cgn027',1985,'Genova','+393421996023','Ingegneria Informatica',TRUE);
INSERT INTO Utente VALUES ('Utente028','s999028','psw028','nome028','cgn028',1988,'Genova','+393421996023','Fisica',TRUE);
INSERT INTO Utente VALUES ('Utente029','s999029','psw029','nome029','cgn029',1991,'Genova','+393421996023','Fisica',TRUE);
INSERT INTO Utente VALUES ('Utente030','s999030','psw030','nome030','cgn030',1987,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente031','s999031','psw031','nome031','cgn031',1994,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente032','s999032','psw032','nome032','cgn032',1999,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente033','s999033','psw033','nome033','cgn033',1997,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente034','s999034','psw034','nome034','cgn034',1986,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente035','s999035','psw035','nome035','cgn035',1996,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente036','s999036','psw036','nome036','cgn036',1985,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente037','s999037','psw037','nome037','cgn037',1992,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente038','s999038','psw038','nome038','cgn038',1991,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente039','s999039','psw039','nome039','cgn039',1991,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente040','s999040','psw040','nome040','cgn040',1994,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente041','s999041','psw041','nome041','cgn041',1998,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente042','s999042','psw042','nome042','cgn042',1986,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente043','s999043','psw043','nome043','cgn043',1985,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente044','s999044','psw044','nome044','cgn044',1994,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente045','s999045','psw045','nome045','cgn045',1988,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente046','s999046','psw046','nome046','cgn046',1987,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente047','s999047','psw047','nome047','cgn047',1989,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente048','s999048','psw048','nome048','cgn048',1988,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente049','s999049','psw049','nome049','cgn049',1990,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente050','s999050','psw050','nome050','cgn050',1986,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente051','s999051','psw051','nome051','cgn051',1996,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente052','s999052','psw052','nome052','cgn052',1987,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente053','s999053','psw053','nome053','cgn053',1993,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente054','s999054','psw054','nome054','cgn054',1999,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente055','s999055','psw055','nome055','cgn055',1993,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente056','s999056','psw056','nome056','cgn056',1997,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente057','s999057','psw057','nome057','cgn057',1989,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente058','s999058','psw058','nome058','cgn058',1986,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente059','s999059','psw059','nome059','cgn059',1990,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente060','s999060','psw060','nome060','cgn060',1992,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente061','s999061','psw061','nome061','cgn061',1986,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente062','s999062','psw062','nome062','cgn062',1996,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente063','s999063','psw063','nome063','cgn063',1999,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente064','s999064','psw064','nome064','cgn064',1993,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente065','s999065','psw065','nome065','cgn065',1989,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente066','s999066','psw066','nome066','cgn066',1988,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente067','s999067','psw067','nome067','cgn067',1997,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente068','s999068','psw068','nome068','cgn068',1987,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente069','s999069','psw069','nome069','cgn069',1988,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente070','s999070','psw070','nome070','cgn070',1999,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente071','s999071','psw071','nome071','cgn071',1992,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente072','s999072','psw072','nome072','cgn072',1985,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente073','s999073','psw073','nome073','cgn073',1987,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente074','s999074','psw074','nome074','cgn074',1990,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente075','s999075','psw075','nome075','cgn075',1992,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente076','s999076','psw076','nome076','cgn076',1985,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente077','s999077','psw077','nome077','cgn077',1988,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente078','s999078','psw078','nome078','cgn078',1989,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente079','s999079','psw079','nome079','cgn079',1995,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente080','s999080','psw080','nome080','cgn080',1994,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente081','s999081','psw081','nome081','cgn081',1998,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente082','s999082','psw082','nome082','cgn082',1995,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente083','s999083','psw083','nome083','cgn083',1993,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente084','s999084','psw084','nome084','cgn084',1985,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente085','s999085','psw085','nome085','cgn085',1991,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente086','s999086','psw086','nome086','cgn086',1996,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente087','s999087','psw087','nome087','cgn087',1985,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente088','s999088','psw088','nome088','cgn088',1996,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente089','s999089','psw089','nome089','cgn089',1999,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente090','s999090','psw090','nome090','cgn090',1986,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente091','s999091','psw091','nome091','cgn091',1997,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente092','s999092','psw092','nome092','cgn092',1999,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente093','s999093','psw093','nome093','cgn093',1987,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente094','s999094','psw094','nome094','cgn094',1995,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente095','s999095','psw095','nome095','cgn095',1997,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente096','s999096','psw096','nome096','cgn096',1992,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente097','s999097','psw097','nome097','cgn097',1996,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente098','s999098','psw098','nome098','cgn098',1992,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente099','s999099','psw099','nome099','cgn099',1996,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente100','s999100','psw100','nome100','cgn100',1997,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente101','s999101','psw101','nome101','cgn101',1995,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente102','s999102','psw102','nome102','cgn102',1985,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente103','s999103','psw103','nome103','cgn103',1985,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente104','s999104','psw104','nome104','cgn104',1990,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente105','s999105','psw105','nome105','cgn105',1985,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente106','s999106','psw106','nome106','cgn106',1991,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente107','s999107','psw107','nome107','cgn107',1994,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente108','s999108','psw108','nome108','cgn108',1992,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente109','s999109','psw109','nome109','cgn109',1992,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente110','s999110','psw110','nome110','cgn110',1999,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente111','s999111','psw111','nome111','cgn111',1995,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente112','s999112','psw112','nome112','cgn112',1987,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente113','s999113','psw113','nome113','cgn113',1998,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente114','s999114','psw114','nome114','cgn114',1996,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente115','s999115','psw115','nome115','cgn115',1994,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente116','s999116','psw116','nome116','cgn116',1990,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente117','s999117','psw117','nome117','cgn117',1989,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente118','s999118','psw118','nome118','cgn118',1991,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente119','s999119','psw119','nome119','cgn119',1985,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente120','s999120','psw120','nome120','cgn120',1988,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente121','s999121','psw121','nome121','cgn121',1995,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente122','s999122','psw122','nome122','cgn122',1987,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente123','s999123','psw123','nome123','cgn123',1985,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente124','s999124','psw124','nome124','cgn124',1998,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente125','s999125','psw125','nome125','cgn125',1985,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente126','s999126','psw126','nome126','cgn126',1985,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente127','s999127','psw127','nome127','cgn127',1998,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente128','s999128','psw128','nome128','cgn128',1993,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente129','s999129','psw129','nome129','cgn129',1998,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente130','s999130','psw130','nome130','cgn130',1985,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente131','s999131','psw131','nome131','cgn131',1988,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente132','s999132','psw132','nome132','cgn132',1998,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente133','s999133','psw133','nome133','cgn133',1986,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente134','s999134','psw134','nome134','cgn134',1989,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente135','s999135','psw135','nome135','cgn135',1994,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente136','s999136','psw136','nome136','cgn136',1996,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente137','s999137','psw137','nome137','cgn137',1987,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente138','s999138','psw138','nome138','cgn138',1991,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente139','s999139','psw139','nome139','cgn139',1992,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente140','s999140','psw140','nome140','cgn140',1992,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente141','s999141','psw141','nome141','cgn141',1985,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente142','s999142','psw142','nome142','cgn142',1990,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente143','s999143','psw143','nome143','cgn143',1997,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente144','s999144','psw144','nome144','cgn144',1999,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente145','s999145','psw145','nome145','cgn145',1988,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente146','s999146','psw146','nome146','cgn146',1994,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente147','s999147','psw147','nome147','cgn147',1989,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente148','s999148','psw148','nome148','cgn148',1987,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente149','s999149','psw149','nome149','cgn149',1987,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente150','s999150','psw150','nome150','cgn150',1985,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente151','s999151','psw151','nome151','cgn151',1996,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente152','s999152','psw152','nome152','cgn152',1988,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente153','s999153','psw153','nome153','cgn153',1991,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente154','s999154','psw154','nome154','cgn154',1992,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente155','s999155','psw155','nome155','cgn155',1986,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente156','s999156','psw156','nome156','cgn156',1987,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente157','s999157','psw157','nome157','cgn157',1991,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente158','s999158','psw158','nome158','cgn158',1990,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente159','s999159','psw159','nome159','cgn159',1995,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente160','s999160','psw160','nome160','cgn160',1995,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente161','s999161','psw161','nome161','cgn161',1989,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente162','s999162','psw162','nome162','cgn162',1996,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente163','s999163','psw163','nome163','cgn163',1998,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente164','s999164','psw164','nome164','cgn164',1991,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente165','s999165','psw165','nome165','cgn165',1996,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente166','s999166','psw166','nome166','cgn166',1992,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente167','s999167','psw167','nome167','cgn167',1995,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente168','s999168','psw168','nome168','cgn168',1990,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente169','s999169','psw169','nome169','cgn169',1992,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente170','s999170','psw170','nome170','cgn170',1989,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente171','s999171','psw171','nome171','cgn171',1992,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente172','s999172','psw172','nome172','cgn172',1999,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente173','s999173','psw173','nome173','cgn173',1998,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente174','s999174','psw174','nome174','cgn174',1986,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente175','s999175','psw175','nome175','cgn175',1992,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente176','s999176','psw176','nome176','cgn176',1986,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente177','s999177','psw177','nome177','cgn177',1985,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente178','s999178','psw178','nome178','cgn178',1985,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente179','s999179','psw179','nome179','cgn179',1997,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente180','s999180','psw180','nome180','cgn180',1989,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente181','s999181','psw181','nome181','cgn181',1993,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente182','s999182','psw182','nome182','cgn182',1992,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente183','s999183','psw183','nome183','cgn183',1999,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente184','s999184','psw184','nome184','cgn184',1996,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente185','s999185','psw185','nome185','cgn185',1989,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente186','s999186','psw186','nome186','cgn186',1995,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente187','s999187','psw187','nome187','cgn187',1989,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente188','s999188','psw188','nome188','cgn188',1997,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente189','s999189','psw189','nome189','cgn189',1987,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente190','s999190','psw190','nome190','cgn190',1996,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente191','s999191','psw191','nome191','cgn191',1993,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente192','s999192','psw192','nome192','cgn192',1999,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente193','s999193','psw193','nome193','cgn193',1989,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente194','s999194','psw194','nome194','cgn194',1987,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente195','s999195','psw195','nome195','cgn195',1988,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente196','s999196','psw196','nome196','cgn196',1987,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente197','s999197','psw197','nome197','cgn197',1989,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente198','s999198','psw198','nome198','cgn198',1991,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente199','s999199','psw199','nome199','cgn199',1985,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente200','s999200','psw200','nome200','cgn200',1993,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente201','s999201','psw201','nome201','cgn201',1987,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente202','s999202','psw202','nome202','cgn202',1987,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente203','s999203','psw203','nome203','cgn203',1995,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente204','s999204','psw204','nome204','cgn204',1992,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente205','s999205','psw205','nome205','cgn205',1988,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente206','s999206','psw206','nome206','cgn206',1998,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente207','s999207','psw207','nome207','cgn207',1987,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente208','s999208','psw208','nome208','cgn208',1993,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente209','s999209','psw209','nome209','cgn209',1997,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente210','s999210','psw210','nome210','cgn210',1994,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente211','s999211','psw211','nome211','cgn211',1994,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente212','s999212','psw212','nome212','cgn212',1990,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente213','s999213','psw213','nome213','cgn213',1995,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente214','s999214','psw214','nome214','cgn214',1999,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente215','s999215','psw215','nome215','cgn215',1985,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente216','s999216','psw216','nome216','cgn216',1986,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente217','s999217','psw217','nome217','cgn217',1994,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente218','s999218','psw218','nome218','cgn218',1994,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente219','s999219','psw219','nome219','cgn219',1994,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente220','s999220','psw220','nome220','cgn220',1998,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente221','s999221','psw221','nome221','cgn221',1985,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente222','s999222','psw222','nome222','cgn222',1991,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente223','s999223','psw223','nome223','cgn223',1995,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente224','s999224','psw224','nome224','cgn224',1992,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente225','s999225','psw225','nome225','cgn225',1991,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente226','s999226','psw226','nome226','cgn226',1987,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente227','s999227','psw227','nome227','cgn227',1998,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente228','s999228','psw228','nome228','cgn228',1993,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente229','s999229','psw229','nome229','cgn229',1998,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente230','s999230','psw230','nome230','cgn230',1996,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente231','s999231','psw231','nome231','cgn231',1992,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente232','s999232','psw232','nome232','cgn232',1988,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente233','s999233','psw233','nome233','cgn233',1993,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente234','s999234','psw234','nome234','cgn234',1994,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente235','s999235','psw235','nome235','cgn235',1996,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente236','s999236','psw236','nome236','cgn236',1998,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente237','s999237','psw237','nome237','cgn237',1993,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente238','s999238','psw238','nome238','cgn238',1985,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente239','s999239','psw239','nome239','cgn239',1995,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente240','s999240','psw240','nome240','cgn240',1987,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente241','s999241','psw241','nome241','cgn241',1985,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente242','s999242','psw242','nome242','cgn242',1996,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente243','s999243','psw243','nome243','cgn243',1987,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente244','s999244','psw244','nome244','cgn244',1993,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente245','s999245','psw245','nome245','cgn245',1999,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente246','s999246','psw246','nome246','cgn246',1985,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente247','s999247','psw247','nome247','cgn247',1987,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente248','s999248','psw248','nome248','cgn248',1991,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente249','s999249','psw249','nome249','cgn249',1986,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente250','s999250','psw250','nome250','cgn250',1999,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente251','s999251','psw251','nome251','cgn251',1989,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente252','s999252','psw252','nome252','cgn252',1985,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente253','s999253','psw253','nome253','cgn253',1997,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente254','s999254','psw254','nome254','cgn254',1987,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente255','s999255','psw255','nome255','cgn255',1991,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente256','s999256','psw256','nome256','cgn256',1989,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente257','s999257','psw257','nome257','cgn257',1995,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente258','s999258','psw258','nome258','cgn258',1987,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente259','s999259','psw259','nome259','cgn259',1995,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente260','s999260','psw260','nome260','cgn260',1999,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente261','s999261','psw261','nome261','cgn261',1997,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente262','s999262','psw262','nome262','cgn262',1989,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente263','s999263','psw263','nome263','cgn263',1997,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente264','s999264','psw264','nome264','cgn264',1985,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente265','s999265','psw265','nome265','cgn265',1994,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente266','s999266','psw266','nome266','cgn266',1990,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente267','s999267','psw267','nome267','cgn267',1996,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente268','s999268','psw268','nome268','cgn268',1985,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente269','s999269','psw269','nome269','cgn269',1989,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente270','s999270','psw270','nome270','cgn270',1995,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente271','s999271','psw271','nome271','cgn271',1993,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente272','s999272','psw272','nome272','cgn272',1996,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente273','s999273','psw273','nome273','cgn273',1995,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente274','s999274','psw274','nome274','cgn274',1990,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente275','s999275','psw275','nome275','cgn275',1988,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente276','s999276','psw276','nome276','cgn276',1996,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente277','s999277','psw277','nome277','cgn277',1991,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente278','s999278','psw278','nome278','cgn278',1994,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente279','s999279','psw279','nome279','cgn279',1992,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente280','s999280','psw280','nome280','cgn280',1993,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente281','s999281','psw281','nome281','cgn281',1988,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente282','s999282','psw282','nome282','cgn282',1992,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente283','s999283','psw283','nome283','cgn283',1994,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente284','s999284','psw284','nome284','cgn284',1994,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente285','s999285','psw285','nome285','cgn285',1987,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente286','s999286','psw286','nome286','cgn286',1986,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente287','s999287','psw287','nome287','cgn287',1993,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente288','s999288','psw288','nome288','cgn288',1999,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente289','s999289','psw289','nome289','cgn289',1989,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente290','s999290','psw290','nome290','cgn290',1991,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente291','s999291','psw291','nome291','cgn291',1991,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente292','s999292','psw292','nome292','cgn292',1999,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente293','s999293','psw293','nome293','cgn293',1988,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente294','s999294','psw294','nome294','cgn294',1992,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente295','s999295','psw295','nome295','cgn295',1987,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente296','s999296','psw296','nome296','cgn296',1993,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente297','s999297','psw297','nome297','cgn297',1991,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente298','s999298','psw298','nome298','cgn298',1995,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente299','s999299','psw299','nome299','cgn299',1992,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente300','s999300','psw300','nome300','cgn300',1994,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente301','s999301','psw301','nome301','cgn301',1987,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente302','s999302','psw302','nome302','cgn302',1999,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente303','s999303','psw303','nome303','cgn303',1991,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente304','s999304','psw304','nome304','cgn304',1990,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente305','s999305','psw305','nome305','cgn305',1996,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente306','s999306','psw306','nome306','cgn306',1999,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente307','s999307','psw307','nome307','cgn307',1995,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente308','s999308','psw308','nome308','cgn308',1989,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente309','s999309','psw309','nome309','cgn309',1992,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente310','s999310','psw310','nome310','cgn310',1986,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente311','s999311','psw311','nome311','cgn311',1994,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente312','s999312','psw312','nome312','cgn312',1994,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente313','s999313','psw313','nome313','cgn313',1988,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente314','s999314','psw314','nome314','cgn314',1993,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente315','s999315','psw315','nome315','cgn315',1998,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente316','s999316','psw316','nome316','cgn316',1996,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente317','s999317','psw317','nome317','cgn317',1989,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente318','s999318','psw318','nome318','cgn318',1990,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente319','s999319','psw319','nome319','cgn319',1999,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente320','s999320','psw320','nome320','cgn320',1985,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente321','s999321','psw321','nome321','cgn321',1999,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente322','s999322','psw322','nome322','cgn322',1990,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente323','s999323','psw323','nome323','cgn323',1986,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente324','s999324','psw324','nome324','cgn324',1995,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente325','s999325','psw325','nome325','cgn325',1999,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente326','s999326','psw326','nome326','cgn326',1985,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente327','s999327','psw327','nome327','cgn327',1988,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente328','s999328','psw328','nome328','cgn328',1989,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente329','s999329','psw329','nome329','cgn329',1994,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente330','s999330','psw330','nome330','cgn330',1997,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente331','s999331','psw331','nome331','cgn331',1993,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente332','s999332','psw332','nome332','cgn332',1993,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente333','s999333','psw333','nome333','cgn333',1996,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente334','s999334','psw334','nome334','cgn334',1991,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente335','s999335','psw335','nome335','cgn335',1999,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente336','s999336','psw336','nome336','cgn336',1989,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente337','s999337','psw337','nome337','cgn337',1994,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente338','s999338','psw338','nome338','cgn338',1992,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente339','s999339','psw339','nome339','cgn339',1985,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente340','s999340','psw340','nome340','cgn340',1996,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente341','s999341','psw341','nome341','cgn341',1985,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente342','s999342','psw342','nome342','cgn342',1995,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente343','s999343','psw343','nome343','cgn343',1985,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente344','s999344','psw344','nome344','cgn344',1987,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente345','s999345','psw345','nome345','cgn345',1985,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente346','s999346','psw346','nome346','cgn346',1992,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente347','s999347','psw347','nome347','cgn347',1991,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente348','s999348','psw348','nome348','cgn348',1993,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente349','s999349','psw349','nome349','cgn349',1989,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente350','s999350','psw350','nome350','cgn350',1989,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente351','s999351','psw351','nome351','cgn351',1996,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente352','s999352','psw352','nome352','cgn352',1986,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente353','s999353','psw353','nome353','cgn353',1986,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente354','s999354','psw354','nome354','cgn354',1989,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente355','s999355','psw355','nome355','cgn355',1994,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente356','s999356','psw356','nome356','cgn356',1987,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente357','s999357','psw357','nome357','cgn357',1994,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente358','s999358','psw358','nome358','cgn358',1985,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente359','s999359','psw359','nome359','cgn359',1987,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente360','s999360','psw360','nome360','cgn360',1991,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente361','s999361','psw361','nome361','cgn361',1991,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente362','s999362','psw362','nome362','cgn362',1999,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente363','s999363','psw363','nome363','cgn363',1987,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente364','s999364','psw364','nome364','cgn364',1993,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente365','s999365','psw365','nome365','cgn365',1988,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente366','s999366','psw366','nome366','cgn366',1986,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente367','s999367','psw367','nome367','cgn367',1987,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente368','s999368','psw368','nome368','cgn368',1995,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente369','s999369','psw369','nome369','cgn369',1998,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente370','s999370','psw370','nome370','cgn370',1987,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente371','s999371','psw371','nome371','cgn371',1993,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente372','s999372','psw372','nome372','cgn372',1998,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente373','s999373','psw373','nome373','cgn373',1993,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente374','s999374','psw374','nome374','cgn374',1989,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente375','s999375','psw375','nome375','cgn375',1986,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente376','s999376','psw376','nome376','cgn376',1998,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente377','s999377','psw377','nome377','cgn377',1994,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente378','s999378','psw378','nome378','cgn378',1998,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente379','s999379','psw379','nome379','cgn379',1985,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente380','s999380','psw380','nome380','cgn380',1995,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente381','s999381','psw381','nome381','cgn381',1995,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente382','s999382','psw382','nome382','cgn382',1989,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente383','s999383','psw383','nome383','cgn383',1988,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente384','s999384','psw384','nome384','cgn384',1987,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente385','s999385','psw385','nome385','cgn385',1992,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente386','s999386','psw386','nome386','cgn386',1994,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente387','s999387','psw387','nome387','cgn387',1985,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente388','s999388','psw388','nome388','cgn388',1995,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente389','s999389','psw389','nome389','cgn389',1995,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente390','s999390','psw390','nome390','cgn390',1986,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente391','s999391','psw391','nome391','cgn391',1991,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente392','s999392','psw392','nome392','cgn392',1988,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente393','s999393','psw393','nome393','cgn393',1988,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente394','s999394','psw394','nome394','cgn394',1994,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente395','s999395','psw395','nome395','cgn395',1985,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente396','s999396','psw396','nome396','cgn396',1993,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente397','s999397','psw397','nome397','cgn397',1985,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente398','s999398','psw398','nome398','cgn398',1998,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente399','s999399','psw399','nome399','cgn399',1994,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente400','s999400','psw400','nome400','cgn400',1998,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente401','s999401','psw401','nome401','cgn401',1993,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente402','s999402','psw402','nome402','cgn402',1990,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente403','s999403','psw403','nome403','cgn403',1987,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente404','s999404','psw404','nome404','cgn404',1988,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente405','s999405','psw405','nome405','cgn405',1985,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente406','s999406','psw406','nome406','cgn406',1994,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente407','s999407','psw407','nome407','cgn407',1989,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente408','s999408','psw408','nome408','cgn408',1989,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente409','s999409','psw409','nome409','cgn409',1996,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente410','s999410','psw410','nome410','cgn410',1994,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente411','s999411','psw411','nome411','cgn411',1989,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente412','s999412','psw412','nome412','cgn412',1990,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente413','s999413','psw413','nome413','cgn413',1993,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente414','s999414','psw414','nome414','cgn414',1985,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente415','s999415','psw415','nome415','cgn415',1985,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente416','s999416','psw416','nome416','cgn416',1986,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente417','s999417','psw417','nome417','cgn417',1997,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente418','s999418','psw418','nome418','cgn418',1998,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente419','s999419','psw419','nome419','cgn419',1985,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente420','s999420','psw420','nome420','cgn420',1989,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente421','s999421','psw421','nome421','cgn421',1994,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente422','s999422','psw422','nome422','cgn422',1996,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente423','s999423','psw423','nome423','cgn423',1990,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente424','s999424','psw424','nome424','cgn424',1986,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente425','s999425','psw425','nome425','cgn425',1988,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente426','s999426','psw426','nome426','cgn426',1989,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente427','s999427','psw427','nome427','cgn427',1996,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente428','s999428','psw428','nome428','cgn428',1986,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente429','s999429','psw429','nome429','cgn429',1989,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente430','s999430','psw430','nome430','cgn430',1994,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente431','s999431','psw431','nome431','cgn431',1988,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente432','s999432','psw432','nome432','cgn432',1998,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente433','s999433','psw433','nome433','cgn433',1993,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente434','s999434','psw434','nome434','cgn434',1995,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente435','s999435','psw435','nome435','cgn435',1993,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente436','s999436','psw436','nome436','cgn436',1986,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente437','s999437','psw437','nome437','cgn437',1991,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente438','s999438','psw438','nome438','cgn438',1990,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente439','s999439','psw439','nome439','cgn439',1985,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente440','s999440','psw440','nome440','cgn440',1994,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente441','s999441','psw441','nome441','cgn441',1993,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente442','s999442','psw442','nome442','cgn442',1997,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente443','s999443','psw443','nome443','cgn443',1992,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente444','s999444','psw444','nome444','cgn444',1988,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente445','s999445','psw445','nome445','cgn445',1997,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente446','s999446','psw446','nome446','cgn446',1988,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente447','s999447','psw447','nome447','cgn447',1999,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente448','s999448','psw448','nome448','cgn448',1990,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente449','s999449','psw449','nome449','cgn449',1988,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente450','s999450','psw450','nome450','cgn450',1987,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente451','s999451','psw451','nome451','cgn451',1986,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente452','s999452','psw452','nome452','cgn452',1990,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente453','s999453','psw453','nome453','cgn453',1993,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente454','s999454','psw454','nome454','cgn454',1987,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente455','s999455','psw455','nome455','cgn455',1989,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente456','s999456','psw456','nome456','cgn456',1992,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente457','s999457','psw457','nome457','cgn457',1990,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente458','s999458','psw458','nome458','cgn458',1991,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente459','s999459','psw459','nome459','cgn459',1988,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente460','s999460','psw460','nome460','cgn460',1997,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente461','s999461','psw461','nome461','cgn461',1992,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente462','s999462','psw462','nome462','cgn462',1995,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente463','s999463','psw463','nome463','cgn463',1987,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente464','s999464','psw464','nome464','cgn464',1985,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente465','s999465','psw465','nome465','cgn465',1994,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente466','s999466','psw466','nome466','cgn466',1990,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente467','s999467','psw467','nome467','cgn467',1993,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente468','s999468','psw468','nome468','cgn468',1995,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente469','s999469','psw469','nome469','cgn469',1998,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente470','s999470','psw470','nome470','cgn470',1987,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente471','s999471','psw471','nome471','cgn471',1997,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente472','s999472','psw472','nome472','cgn472',1999,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente473','s999473','psw473','nome473','cgn473',1998,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente474','s999474','psw474','nome474','cgn474',1999,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente475','s999475','psw475','nome475','cgn475',1993,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente476','s999476','psw476','nome476','cgn476',1995,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente477','s999477','psw477','nome477','cgn477',1994,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente478','s999478','psw478','nome478','cgn478',1991,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente479','s999479','psw479','nome479','cgn479',1986,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente480','s999480','psw480','nome480','cgn480',1989,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente481','s999481','psw481','nome481','cgn481',1986,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente482','s999482','psw482','nome482','cgn482',1988,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente483','s999483','psw483','nome483','cgn483',1998,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente484','s999484','psw484','nome484','cgn484',1987,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente485','s999485','psw485','nome485','cgn485',1991,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente486','s999486','psw486','nome486','cgn486',1992,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente487','s999487','psw487','nome487','cgn487',1987,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente488','s999488','psw488','nome488','cgn488',1999,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente489','s999489','psw489','nome489','cgn489',1986,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente490','s999490','psw490','nome490','cgn490',1986,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente491','s999491','psw491','nome491','cgn491',1996,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente492','s999492','psw492','nome492','cgn492',1990,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente493','s999493','psw493','nome493','cgn493',1997,'Genova','+393421996023','Matematica');
INSERT INTO Utente VALUES ('Utente494','s999494','psw494','nome494','cgn494',1987,'Genova','+393421996023','Ingegneria Informatica');
INSERT INTO Utente VALUES ('Utente495','s999495','psw495','nome495','cgn495',1985,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente496','s999496','psw496','nome496','cgn496',1995,'Genova','+393421996023','Ingegneria Biomedica');
INSERT INTO Utente VALUES ('Utente497','s999497','psw497','nome497','cgn497',1985,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente498','s999498','psw498','nome498','cgn498',1985,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente499','s999499','psw499','nome499','cgn499',1999,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente500','s999500','psw500','nome500','cgn500',1990,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente501','s999501','psw501','nome501','cgn501',1996,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente502','s999502','psw502','nome502','cgn502',1995,'Genova','+393421996023','Ingegneria Nav');
INSERT INTO Utente VALUES ('Utente503','s999503','psw503','nome503','cgn503',1987,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente504','s999504','psw504','nome504','cgn504',1988,'Genova','+393421996023','Scienze Ambientali');
INSERT INTO Utente VALUES ('Utente505','s999505','psw505','nome505','cgn505',1994,'Genova','+393421996023','Fisica');
INSERT INTO Utente VALUES ('Utente506','s999506','psw506','nome506','cgn506',1986,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente507','s999507','psw507','nome507','cgn507',1993,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente508','s999508','psw508','nome508','cgn508',1990,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente509','s999509','psw509','nome509','cgn509',1995,'Genova','+393421996023','Scienze dell’ Architettura');
INSERT INTO Utente VALUES ('Utente510','s999510','psw510','nome510','cgn510',1991,'Genova','+393421996023','Economia');
INSERT INTO Utente VALUES ('Utente511','s999511','psw511','nome511','cgn511',1998,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente512','s999512','psw512','nome512','cgn512',1986,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente513','s999513','psw513','nome513','cgn513',1998,'Genova','+393421996023','Informatica');
INSERT INTO Utente VALUES ('Utente514','s999514','psw514','nome514','cgn514',1997,'Genova','+393421996023','Scienze Ambientali');

INSERT INTO Sport VALUES ('sport000','regolamento000','',2,FALSE);
INSERT INTO Sport VALUES ('sport001','regolamento001','',8);
INSERT INTO Sport VALUES ('sport002','regolamento002','',6);
INSERT INTO Sport VALUES ('sport003','regolamento003','',6);


INSERT INTO Squadra VALUES ('squadra000','RECLUTAMENTO','colore000',3,3,'descrizione000','','Utente028');
INSERT INTO Squadra VALUES ('squadra001','RECLUTAMENTO','colore001',3,3,'descrizione001','','Utente000');
INSERT INTO Squadra VALUES ('squadra002','RECLUTAMENTO','colore002',3,3,'descrizione002','','Utente002');
INSERT INTO Squadra VALUES ('squadra003','RECLUTAMENTO','colore003',3,3,'descrizione003','','Utente024');
INSERT INTO Squadra VALUES ('squadra004','RECLUTAMENTO','colore004',3,3,'descrizione004','','Utente008');
INSERT INTO Squadra VALUES ('squadra005','RECLUTAMENTO','colore005',3,3,'descrizione005','','Utente014');
INSERT INTO Squadra VALUES ('squadra006','RECLUTAMENTO','colore006',3,3,'descrizione006','','Utente001');
INSERT INTO Squadra VALUES ('squadra007','RECLUTAMENTO','colore007',3,3,'descrizione007','','Utente012');
INSERT INTO Squadra VALUES ('squadra008','RECLUTAMENTO','colore008',3,3,'descrizione008','','Utente006');
INSERT INTO Squadra VALUES ('squadra009','RECLUTAMENTO','colore009',3,3,'descrizione009','','Utente016');
INSERT INTO Squadra VALUES ('squadra010','RECLUTAMENTO','colore010',3,3,'descrizione010','','Utente021');
INSERT INTO Squadra VALUES ('squadra011','RECLUTAMENTO','colore011',3,3,'descrizione011','','Utente003');
INSERT INTO Squadra VALUES ('squadra012','RECLUTAMENTO','colore012',3,3,'descrizione012','','Utente023');
INSERT INTO Squadra VALUES ('squadra013','RECLUTAMENTO','colore013',3,3,'descrizione013','','Utente012');
INSERT INTO Squadra VALUES ('squadra014','RECLUTAMENTO','colore014',3,3,'descrizione014','','Utente025');
INSERT INTO Squadra VALUES ('squadra015','RECLUTAMENTO','colore015',3,3,'descrizione015','','Utente025');
INSERT INTO Squadra VALUES ('squadra016','RECLUTAMENTO','colore016',3,3,'descrizione016','','Utente002');
INSERT INTO Squadra VALUES ('squadra017','RECLUTAMENTO','colore017',3,3,'descrizione017','','Utente012');
INSERT INTO Squadra VALUES ('squadra018','RECLUTAMENTO','colore018',4,4,'descrizione018','','Utente001');
INSERT INTO Squadra VALUES ('squadra019','RECLUTAMENTO','colore019',4,4,'descrizione019','','Utente028');
INSERT INTO Squadra VALUES ('squadra020','RECLUTAMENTO','colore020',4,4,'descrizione020','','Utente008');
INSERT INTO Squadra VALUES ('squadra021','RECLUTAMENTO','colore021',4,4,'descrizione021','','Utente019');
INSERT INTO Squadra VALUES ('squadra022','RECLUTAMENTO','colore022',4,4,'descrizione022','','Utente011');
INSERT INTO Squadra VALUES ('squadra023','RECLUTAMENTO','colore023',4,4,'descrizione023','','Utente004');
INSERT INTO Squadra VALUES ('squadra024','RECLUTAMENTO','colore024',3,3,'descrizione024','','Utente022');
INSERT INTO Squadra VALUES ('squadra025','RECLUTAMENTO','colore025',3,3,'descrizione025','','Utente026');
INSERT INTO Squadra VALUES ('squadra026','RECLUTAMENTO','colore026',3,3,'descrizione026','','Utente015');
INSERT INTO Squadra VALUES ('squadra027','RECLUTAMENTO','colore027',3,3,'descrizione027','','Utente017');
INSERT INTO Squadra VALUES ('squadra028','RECLUTAMENTO','colore028',3,3,'descrizione028','','Utente005');
INSERT INTO Squadra VALUES ('squadra029','RECLUTAMENTO','colore029',3,3,'descrizione029','','Utente009');
INSERT INTO Squadra VALUES ('squadra030','RECLUTAMENTO','colore030',3,3,'descrizione030','','Utente006');
INSERT INTO Squadra VALUES ('squadra031','RECLUTAMENTO','colore031',3,3,'descrizione031','','Utente007');
INSERT INTO Squadra VALUES ('squadra032','RECLUTAMENTO','colore032',4,4,'descrizione032','','Utente002');
INSERT INTO Squadra VALUES ('squadra033','RECLUTAMENTO','colore033',4,4,'descrizione033','','Utente014');
INSERT INTO Squadra VALUES ('squadra034','RECLUTAMENTO','colore034',4,4,'descrizione034','','Utente008');
INSERT INTO Squadra VALUES ('squadra035','RECLUTAMENTO','colore035',4,4,'descrizione035','','Utente020');
INSERT INTO Squadra VALUES ('squadra036','RECLUTAMENTO','colore036',4,4,'descrizione036','','Utente008');
INSERT INTO Squadra VALUES ('squadra037','RECLUTAMENTO','colore037',4,4,'descrizione037','','Utente026');
INSERT INTO Squadra VALUES ('squadra038','RECLUTAMENTO','colore038',4,4,'descrizione038','','Utente009');
INSERT INTO Squadra VALUES ('squadra039','RECLUTAMENTO','colore039',4,4,'descrizione039','','Utente009');
INSERT INTO Squadra VALUES ('squadra040','RECLUTAMENTO','colore040',3,3,'descrizione040','','Utente016');
INSERT INTO Squadra VALUES ('squadra041','RECLUTAMENTO','colore041',3,3,'descrizione041','','Utente017');
INSERT INTO Squadra VALUES ('squadra042','RECLUTAMENTO','colore042',3,3,'descrizione042','','Utente027');
INSERT INTO Squadra VALUES ('squadra043','RECLUTAMENTO','colore043',3,3,'descrizione043','','Utente005');
INSERT INTO Squadra VALUES ('squadra044','RECLUTAMENTO','colore044',3,3,'descrizione044','','Utente001');
INSERT INTO Squadra VALUES ('squadra045','RECLUTAMENTO','colore045',3,3,'descrizione045','','Utente026');
INSERT INTO Squadra VALUES ('squadra046','RECLUTAMENTO','colore046',3,3,'descrizione046','','Utente028');
INSERT INTO Squadra VALUES ('squadra047','RECLUTAMENTO','colore047',3,3,'descrizione047','','Utente023');
INSERT INTO Squadra VALUES ('squadra048','RECLUTAMENTO','colore048',4,4,'descrizione048','','Utente020');
INSERT INTO Squadra VALUES ('squadra049','RECLUTAMENTO','colore049',4,4,'descrizione049','','Utente011');
INSERT INTO Squadra VALUES ('squadra050','RECLUTAMENTO','colore050',4,4,'descrizione050','','Utente016');
INSERT INTO Squadra VALUES ('squadra051','RECLUTAMENTO','colore051',4,4,'descrizione051','','Utente028');
INSERT INTO Squadra VALUES ('squadra052','RECLUTAMENTO','colore052',4,4,'descrizione052','','Utente012');
INSERT INTO Squadra VALUES ('squadra053','RECLUTAMENTO','colore053',4,4,'descrizione053','','Utente020');
INSERT INTO Squadra VALUES ('squadra054','RECLUTAMENTO','colore054',4,4,'descrizione054','','Utente022');
INSERT INTO Squadra VALUES ('squadra055','RECLUTAMENTO','colore055',4,4,'descrizione055','','Utente027');
INSERT INTO Squadra VALUES ('squadra056','RECLUTAMENTO','colore056',3,3,'descrizione056','','Utente000');
INSERT INTO Squadra VALUES ('squadra057','RECLUTAMENTO','colore057',3,3,'descrizione057','','Utente007');
INSERT INTO Squadra VALUES ('squadra058','RECLUTAMENTO','colore058',3,3,'descrizione058','','Utente004');
INSERT INTO Squadra VALUES ('squadra059','RECLUTAMENTO','colore059',3,3,'descrizione059','','Utente009');
INSERT INTO Squadra VALUES ('squadra060','RECLUTAMENTO','colore060',3,3,'descrizione060','','Utente019');
INSERT INTO Squadra VALUES ('squadra061','RECLUTAMENTO','colore061',3,3,'descrizione061','','Utente012');
INSERT INTO Squadra VALUES ('squadra062','RECLUTAMENTO','colore062',3,3,'descrizione062','','Utente022');
INSERT INTO Squadra VALUES ('squadra063','RECLUTAMENTO','colore063',3,3,'descrizione063','','Utente007');
INSERT INTO Squadra VALUES ('squadra064','RECLUTAMENTO','colore064',4,4,'descrizione064','','Utente019');
INSERT INTO Squadra VALUES ('squadra065','RECLUTAMENTO','colore065',4,4,'descrizione065','','Utente001');
INSERT INTO Squadra VALUES ('squadra066','RECLUTAMENTO','colore066',4,4,'descrizione066','','Utente023');
INSERT INTO Squadra VALUES ('squadra067','RECLUTAMENTO','colore067',4,4,'descrizione067','','Utente016');
INSERT INTO Squadra VALUES ('squadra068','RECLUTAMENTO','colore068',4,4,'descrizione068','','Utente008');
INSERT INTO Squadra VALUES ('squadra069','RECLUTAMENTO','colore069',4,4,'descrizione069','','Utente012');
INSERT INTO Squadra VALUES ('squadra070','RECLUTAMENTO','colore070',4,4,'descrizione070','','Utente018');
INSERT INTO Squadra VALUES ('squadra071','RECLUTAMENTO','colore071',4,4,'descrizione071','','Utente018');
INSERT INTO Squadra VALUES ('squadra072','RECLUTAMENTO','colore072',3,3,'descrizione072','','Utente010');
INSERT INTO Squadra VALUES ('squadra073','RECLUTAMENTO','colore073',3,3,'descrizione073','','Utente027');
INSERT INTO Squadra VALUES ('squadra074','RECLUTAMENTO','colore074',3,3,'descrizione074','','Utente024');
INSERT INTO Squadra VALUES ('squadra075','RECLUTAMENTO','colore075',3,3,'descrizione075','','Utente022');
INSERT INTO Squadra VALUES ('squadra076','RECLUTAMENTO','colore076',3,3,'descrizione076','','Utente005');
INSERT INTO Squadra VALUES ('squadra077','RECLUTAMENTO','colore077',3,3,'descrizione077','','Utente028');
INSERT INTO Squadra VALUES ('squadra078','RECLUTAMENTO','colore078',3,3,'descrizione078','','Utente022');
INSERT INTO Squadra VALUES ('squadra079','RECLUTAMENTO','colore079',3,3,'descrizione079','','Utente012');
INSERT INTO Squadra VALUES ('squadra080','RECLUTAMENTO','colore080',3,3,'descrizione080','','Utente015');
INSERT INTO Squadra VALUES ('squadra081','RECLUTAMENTO','colore081',3,3,'descrizione081','','Utente026');
INSERT INTO Squadra VALUES ('squadra082','RECLUTAMENTO','colore082',3,3,'descrizione082','','Utente004');
INSERT INTO Squadra VALUES ('squadra083','RECLUTAMENTO','colore083',3,3,'descrizione083','','Utente014');
INSERT INTO Squadra VALUES ('squadra084','RECLUTAMENTO','colore084',3,3,'descrizione084','','Utente018');
INSERT INTO Squadra VALUES ('squadra085','RECLUTAMENTO','colore085',3,3,'descrizione085','','Utente017');
INSERT INTO Squadra VALUES ('squadra086','RECLUTAMENTO','colore086',3,3,'descrizione086','','Utente017');
INSERT INTO Squadra VALUES ('squadra087','RECLUTAMENTO','colore087',3,3,'descrizione087','','Utente028');
INSERT INTO Squadra VALUES ('squadra088','RECLUTAMENTO','colore088',3,3,'descrizione088','','Utente018');
INSERT INTO Squadra VALUES ('squadra089','RECLUTAMENTO','colore089',3,3,'descrizione089','','Utente016');
INSERT INTO Squadra VALUES ('squadra090','RECLUTAMENTO','colore090',3,3,'descrizione090','','Utente020');
INSERT INTO Squadra VALUES ('squadra091','RECLUTAMENTO','colore091',3,3,'descrizione091','','Utente015');
--Squadre non definitive
INSERT INTO Squadra VALUES ('squadra092','RECLUTAMENTO','colore092',3,3,'descrizione092','','Utente005');
INSERT INTO Squadra VALUES ('squadra093','RECLUTAMENTO','colore093',3,3,'descrizione093','','Utente028');
INSERT INTO Squadra VALUES ('squadra094','RECLUTAMENTO','colore094',3,3,'descrizione094','','Utente007');
INSERT INTO Squadra VALUES ('squadra095','RECLUTAMENTO','colore095',3,3,'descrizione095','','Utente003');
INSERT INTO Squadra VALUES ('squadra096','RECLUTAMENTO','colore096',4,4,'descrizione096','','Utente027');
INSERT INTO Squadra VALUES ('squadra097','RECLUTAMENTO','colore097',3,3,'descrizione097','','Utente015');
INSERT INTO Squadra VALUES ('squadra098','RECLUTAMENTO','colore098',3,3,'descrizione098','','Utente002');
INSERT INTO Squadra VALUES ('squadra099','RECLUTAMENTO','colore099',4,4,'descrizione099','','Utente005');
INSERT INTO Squadra VALUES ('squadra100','RECLUTAMENTO','colore100',3,3,'descrizione100','','Utente000');
INSERT INTO Squadra VALUES ('squadra101','RECLUTAMENTO','colore101',3,3,'descrizione101','','Utente012');


--Candidatura a squadra000
INSERT INTO Candida VALUES ('Utente030','squadra000','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente031','squadra000','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente032','squadra000','ACCETTATO','GIOCATORE');
--Candidatura a squadra001
INSERT INTO Candida VALUES ('Utente033','squadra001','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente034','squadra001','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente035','squadra001','ACCETTATO','GIOCATORE');
--Candidatura a squadra002
INSERT INTO Candida VALUES ('Utente036','squadra002','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente037','squadra002','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente038','squadra002','ACCETTATO','GIOCATORE');
--Candidatura a squadra003
INSERT INTO Candida VALUES ('Utente039','squadra003','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente040','squadra003','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente041','squadra003','ACCETTATO','GIOCATORE');
--Candidatura a squadra004
INSERT INTO Candida VALUES ('Utente042','squadra004','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente043','squadra004','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente044','squadra004','ACCETTATO','GIOCATORE');
--Candidatura a squadra005
INSERT INTO Candida VALUES ('Utente045','squadra005','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente046','squadra005','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente047','squadra005','ACCETTATO','GIOCATORE');
--Candidatura a squadra006
INSERT INTO Candida VALUES ('Utente048','squadra006','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente049','squadra006','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente050','squadra006','ACCETTATO','GIOCATORE');
--Candidatura a squadra007
INSERT INTO Candida VALUES ('Utente051','squadra007','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente052','squadra007','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente053','squadra007','ACCETTATO','GIOCATORE');
--Candidatura a squadra008
INSERT INTO Candida VALUES ('Utente054','squadra008','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente055','squadra008','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente056','squadra008','ACCETTATO','GIOCATORE');
--Candidatura a squadra009
INSERT INTO Candida VALUES ('Utente057','squadra009','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente058','squadra009','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente059','squadra009','ACCETTATO','GIOCATORE');
--Candidatura a squadra010
INSERT INTO Candida VALUES ('Utente060','squadra010','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente061','squadra010','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente062','squadra010','ACCETTATO','GIOCATORE');
--Candidatura a squadra011
INSERT INTO Candida VALUES ('Utente063','squadra011','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente064','squadra011','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente065','squadra011','ACCETTATO','GIOCATORE');
--Candidatura a squadra012
INSERT INTO Candida VALUES ('Utente066','squadra012','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente067','squadra012','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente068','squadra012','ACCETTATO','GIOCATORE');
--Candidatura a squadra013
INSERT INTO Candida VALUES ('Utente069','squadra013','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente070','squadra013','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente071','squadra013','ACCETTATO','GIOCATORE');
--Candidatura a squadra014
INSERT INTO Candida VALUES ('Utente072','squadra014','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente073','squadra014','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente074','squadra014','ACCETTATO','GIOCATORE');
--Candidatura a squadra015
INSERT INTO Candida VALUES ('Utente075','squadra015','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente076','squadra015','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente077','squadra015','ACCETTATO','GIOCATORE');
--Candidatura a squadra016
INSERT INTO Candida VALUES ('Utente078','squadra016','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente079','squadra016','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente080','squadra016','ACCETTATO','GIOCATORE');
--Candidatura a squadra017
INSERT INTO Candida VALUES ('Utente081','squadra017','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente082','squadra017','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente083','squadra017','ACCETTATO','GIOCATORE');
--Candidatura a squadra018
INSERT INTO Candida VALUES ('Utente084','squadra018','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente085','squadra018','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente086','squadra018','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente087','squadra018','ACCETTATO','GIOCATORE');
--Candidatura a squadra019
INSERT INTO Candida VALUES ('Utente088','squadra019','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente089','squadra019','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente090','squadra019','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente091','squadra019','ACCETTATO','GIOCATORE');
--Candidatura a squadra020
INSERT INTO Candida VALUES ('Utente092','squadra020','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente093','squadra020','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente094','squadra020','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente095','squadra020','ACCETTATO','GIOCATORE');
--Candidatura a squadra021
INSERT INTO Candida VALUES ('Utente096','squadra021','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente097','squadra021','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente098','squadra021','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente099','squadra021','ACCETTATO','GIOCATORE');
--Candidatura a squadra022
INSERT INTO Candida VALUES ('Utente100','squadra022','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente101','squadra022','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente102','squadra022','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente103','squadra022','ACCETTATO','GIOCATORE');
--Candidatura a squadra023
INSERT INTO Candida VALUES ('Utente104','squadra023','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente105','squadra023','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente106','squadra023','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente107','squadra023','ACCETTATO','GIOCATORE');
--Candidatura a squadra024
INSERT INTO Candida VALUES ('Utente108','squadra024','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente109','squadra024','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente110','squadra024','ACCETTATO','GIOCATORE');
--Candidatura a squadra025
INSERT INTO Candida VALUES ('Utente111','squadra025','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente112','squadra025','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente113','squadra025','ACCETTATO','GIOCATORE');
--Candidatura a squadra026
INSERT INTO Candida VALUES ('Utente114','squadra026','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente115','squadra026','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente116','squadra026','ACCETTATO','GIOCATORE');
--Candidatura a squadra027
INSERT INTO Candida VALUES ('Utente117','squadra027','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente118','squadra027','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente119','squadra027','ACCETTATO','GIOCATORE');
--Candidatura a squadra028
INSERT INTO Candida VALUES ('Utente120','squadra028','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente121','squadra028','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente122','squadra028','ACCETTATO','GIOCATORE');
--Candidatura a squadra029
INSERT INTO Candida VALUES ('Utente123','squadra029','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente124','squadra029','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente125','squadra029','ACCETTATO','GIOCATORE');
--Candidatura a squadra030
INSERT INTO Candida VALUES ('Utente126','squadra030','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente127','squadra030','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente128','squadra030','ACCETTATO','GIOCATORE');
--Candidatura a squadra031
INSERT INTO Candida VALUES ('Utente129','squadra031','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente130','squadra031','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente131','squadra031','ACCETTATO','GIOCATORE');
--Candidatura a squadra032
INSERT INTO Candida VALUES ('Utente132','squadra032','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente133','squadra032','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente134','squadra032','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente135','squadra032','ACCETTATO','GIOCATORE');
--Candidatura a squadra033
INSERT INTO Candida VALUES ('Utente136','squadra033','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente137','squadra033','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente138','squadra033','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente139','squadra033','ACCETTATO','GIOCATORE');
--Candidatura a squadra034
INSERT INTO Candida VALUES ('Utente140','squadra034','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente141','squadra034','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente142','squadra034','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente143','squadra034','ACCETTATO','GIOCATORE');
--Candidatura a squadra035
INSERT INTO Candida VALUES ('Utente144','squadra035','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente145','squadra035','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente146','squadra035','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente147','squadra035','ACCETTATO','GIOCATORE');
--Candidatura a squadra036
INSERT INTO Candida VALUES ('Utente148','squadra036','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente149','squadra036','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente150','squadra036','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente151','squadra036','ACCETTATO','GIOCATORE');
--Candidatura a squadra037
INSERT INTO Candida VALUES ('Utente152','squadra037','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente153','squadra037','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente154','squadra037','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente155','squadra037','ACCETTATO','GIOCATORE');
--Candidatura a squadra038
INSERT INTO Candida VALUES ('Utente156','squadra038','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente157','squadra038','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente158','squadra038','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente159','squadra038','ACCETTATO','GIOCATORE');
--Candidatura a squadra039
INSERT INTO Candida VALUES ('Utente160','squadra039','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente161','squadra039','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente162','squadra039','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente163','squadra039','ACCETTATO','GIOCATORE');
--Candidatura a squadra040
INSERT INTO Candida VALUES ('Utente164','squadra040','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente165','squadra040','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente166','squadra040','ACCETTATO','GIOCATORE');
--Candidatura a squadra041
INSERT INTO Candida VALUES ('Utente167','squadra041','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente168','squadra041','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente169','squadra041','ACCETTATO','GIOCATORE');
--Candidatura a squadra042
INSERT INTO Candida VALUES ('Utente170','squadra042','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente171','squadra042','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente172','squadra042','ACCETTATO','GIOCATORE');
--Candidatura a squadra043
INSERT INTO Candida VALUES ('Utente173','squadra043','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente174','squadra043','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente175','squadra043','ACCETTATO','GIOCATORE');
--Candidatura a squadra044
INSERT INTO Candida VALUES ('Utente176','squadra044','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente177','squadra044','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente178','squadra044','ACCETTATO','GIOCATORE');
--Candidatura a squadra045
INSERT INTO Candida VALUES ('Utente179','squadra045','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente180','squadra045','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente181','squadra045','ACCETTATO','GIOCATORE');
--Candidatura a squadra046
INSERT INTO Candida VALUES ('Utente182','squadra046','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente183','squadra046','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente184','squadra046','ACCETTATO','GIOCATORE');
--Candidatura a squadra047
INSERT INTO Candida VALUES ('Utente185','squadra047','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente186','squadra047','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente187','squadra047','ACCETTATO','GIOCATORE');
--Candidatura a squadra048
INSERT INTO Candida VALUES ('Utente188','squadra048','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente189','squadra048','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente190','squadra048','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente191','squadra048','ACCETTATO','GIOCATORE');
--Candidatura a squadra049
INSERT INTO Candida VALUES ('Utente192','squadra049','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente193','squadra049','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente194','squadra049','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente195','squadra049','ACCETTATO','GIOCATORE');
--Candidatura a squadra050
INSERT INTO Candida VALUES ('Utente196','squadra050','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente197','squadra050','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente198','squadra050','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente199','squadra050','ACCETTATO','GIOCATORE');
--Candidatura a squadra051
INSERT INTO Candida VALUES ('Utente200','squadra051','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente201','squadra051','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente202','squadra051','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente203','squadra051','ACCETTATO','GIOCATORE');
--Candidatura a squadra052
INSERT INTO Candida VALUES ('Utente204','squadra052','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente205','squadra052','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente206','squadra052','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente207','squadra052','ACCETTATO','GIOCATORE');
--Candidatura a squadra053
INSERT INTO Candida VALUES ('Utente208','squadra053','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente209','squadra053','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente210','squadra053','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente211','squadra053','ACCETTATO','GIOCATORE');
--Candidatura a squadra054
INSERT INTO Candida VALUES ('Utente212','squadra054','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente213','squadra054','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente214','squadra054','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente215','squadra054','ACCETTATO','GIOCATORE');
--Candidatura a squadra055
INSERT INTO Candida VALUES ('Utente216','squadra055','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente217','squadra055','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente218','squadra055','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente219','squadra055','ACCETTATO','GIOCATORE');
--Candidatura a squadra056
INSERT INTO Candida VALUES ('Utente220','squadra056','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente221','squadra056','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente222','squadra056','ACCETTATO','GIOCATORE');
--Candidatura a squadra057
INSERT INTO Candida VALUES ('Utente223','squadra057','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente224','squadra057','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente225','squadra057','ACCETTATO','GIOCATORE');
--Candidatura a squadra058
INSERT INTO Candida VALUES ('Utente226','squadra058','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente227','squadra058','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente228','squadra058','ACCETTATO','GIOCATORE');
--Candidatura a squadra059
INSERT INTO Candida VALUES ('Utente229','squadra059','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente230','squadra059','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente231','squadra059','ACCETTATO','GIOCATORE');
--Candidatura a squadra060
INSERT INTO Candida VALUES ('Utente232','squadra060','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente233','squadra060','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente234','squadra060','ACCETTATO','GIOCATORE');
--Candidatura a squadra061
INSERT INTO Candida VALUES ('Utente235','squadra061','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente236','squadra061','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente237','squadra061','ACCETTATO','GIOCATORE');
--Candidatura a squadra062
INSERT INTO Candida VALUES ('Utente238','squadra062','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente239','squadra062','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente240','squadra062','ACCETTATO','GIOCATORE');
--Candidatura a squadra063
INSERT INTO Candida VALUES ('Utente241','squadra063','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente242','squadra063','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente243','squadra063','ACCETTATO','GIOCATORE');
--Candidatura a squadra064
INSERT INTO Candida VALUES ('Utente244','squadra064','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente245','squadra064','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente246','squadra064','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente247','squadra064','ACCETTATO','GIOCATORE');
--Candidatura a squadra065
INSERT INTO Candida VALUES ('Utente248','squadra065','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente249','squadra065','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente250','squadra065','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente251','squadra065','ACCETTATO','GIOCATORE');
--Candidatura a squadra066
INSERT INTO Candida VALUES ('Utente252','squadra066','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente253','squadra066','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente254','squadra066','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente255','squadra066','ACCETTATO','GIOCATORE');
--Candidatura a squadra067
INSERT INTO Candida VALUES ('Utente256','squadra067','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente257','squadra067','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente258','squadra067','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente259','squadra067','ACCETTATO','GIOCATORE');
--Candidatura a squadra068
INSERT INTO Candida VALUES ('Utente260','squadra068','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente261','squadra068','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente262','squadra068','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente263','squadra068','ACCETTATO','GIOCATORE');
--Candidatura a squadra069
INSERT INTO Candida VALUES ('Utente264','squadra069','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente265','squadra069','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente266','squadra069','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente267','squadra069','ACCETTATO','GIOCATORE');
--Candidatura a squadra070
INSERT INTO Candida VALUES ('Utente268','squadra070','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente269','squadra070','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente270','squadra070','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente271','squadra070','ACCETTATO','GIOCATORE');
--Candidatura a squadra071
INSERT INTO Candida VALUES ('Utente272','squadra071','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente273','squadra071','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente274','squadra071','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente275','squadra071','ACCETTATO','GIOCATORE');
--Candidatura a squadra072
INSERT INTO Candida VALUES ('Utente276','squadra072','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente277','squadra072','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente278','squadra072','ACCETTATO','GIOCATORE');
--Candidatura a squadra073
INSERT INTO Candida VALUES ('Utente279','squadra073','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente280','squadra073','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente281','squadra073','ACCETTATO','GIOCATORE');
--Candidatura a squadra074
INSERT INTO Candida VALUES ('Utente282','squadra074','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente283','squadra074','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente284','squadra074','ACCETTATO','GIOCATORE');
--Candidatura a squadra075
INSERT INTO Candida VALUES ('Utente285','squadra075','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente286','squadra075','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente287','squadra075','ACCETTATO','GIOCATORE');
--Candidatura a squadra076
INSERT INTO Candida VALUES ('Utente288','squadra076','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente289','squadra076','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente290','squadra076','ACCETTATO','GIOCATORE');
--Candidatura a squadra077
INSERT INTO Candida VALUES ('Utente291','squadra077','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente292','squadra077','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente293','squadra077','ACCETTATO','GIOCATORE');
--Candidatura a squadra078
INSERT INTO Candida VALUES ('Utente294','squadra078','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente295','squadra078','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente296','squadra078','ACCETTATO','GIOCATORE');
--Candidatura a squadra079
INSERT INTO Candida VALUES ('Utente297','squadra079','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente298','squadra079','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente299','squadra079','ACCETTATO','GIOCATORE');
--Candidatura a squadra080
INSERT INTO Candida VALUES ('Utente300','squadra080','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente301','squadra080','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente302','squadra080','ACCETTATO','GIOCATORE');
--Candidatura a squadra081
INSERT INTO Candida VALUES ('Utente303','squadra081','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente304','squadra081','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente305','squadra081','ACCETTATO','GIOCATORE');
--Candidatura a squadra082
INSERT INTO Candida VALUES ('Utente306','squadra082','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente307','squadra082','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente308','squadra082','ACCETTATO','GIOCATORE');
--Candidatura a squadra083
INSERT INTO Candida VALUES ('Utente309','squadra083','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente310','squadra083','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente311','squadra083','ACCETTATO','GIOCATORE');
--Candidatura a squadra084
INSERT INTO Candida VALUES ('Utente312','squadra084','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente313','squadra084','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente314','squadra084','ACCETTATO','GIOCATORE');
--Candidatura a squadra085
INSERT INTO Candida VALUES ('Utente315','squadra085','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente316','squadra085','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente317','squadra085','ACCETTATO','GIOCATORE');
--Candidatura a squadra086
INSERT INTO Candida VALUES ('Utente318','squadra086','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente319','squadra086','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente320','squadra086','ACCETTATO','GIOCATORE');
--Candidatura a squadra087
INSERT INTO Candida VALUES ('Utente321','squadra087','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente322','squadra087','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente323','squadra087','ACCETTATO','GIOCATORE');
--Candidatura a squadra088
INSERT INTO Candida VALUES ('Utente324','squadra088','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente325','squadra088','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente326','squadra088','ACCETTATO','GIOCATORE');
--Candidatura a squadra089
INSERT INTO Candida VALUES ('Utente327','squadra089','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente328','squadra089','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente329','squadra089','ACCETTATO','GIOCATORE');
--Candidatura a squadra090
INSERT INTO Candida VALUES ('Utente330','squadra090','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente331','squadra090','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente332','squadra090','ACCETTATO','GIOCATORE');
--Candidatura a squadra091
INSERT INTO Candida VALUES ('Utente333','squadra091','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente334','squadra091','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente335','squadra091','ACCETTATO','GIOCATORE');
--Candidatura a squadra092
INSERT INTO Candida VALUES ('Utente400','squadra092','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente401','squadra092','ACCETTATO','GIOCATORE');
--Candidatura a squadra093
INSERT INTO Candida VALUES ('Utente402','squadra093','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente403','squadra093','ACCETTATO','GIOCATORE');
--Candidatura a squadra094
INSERT INTO Candida VALUES ('Utente404','squadra094','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente405','squadra094','ACCETTATO','GIOCATORE');
--Candidatura a squadra095
INSERT INTO Candida VALUES ('Utente406','squadra095','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente407','squadra095','ACCETTATO','GIOCATORE');
--Candidatura a squadra096
INSERT INTO Candida VALUES ('Utente408','squadra096','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente409','squadra096','ACCETTATO','GIOCATORE');
--Candidatura a squadra097
--Candidatura a squadra098
--Candidatura a squadra099
--Candidatura a squadra100
INSERT INTO Candida VALUES ('Utente410','squadra100','ACCETTATO','GIOCATORE');
INSERT INTO Candida VALUES ('Utente411','squadra100','ACCETTATO','GIOCATORE');
--Candidatura a squadra101
INSERT INTO Candida VALUES ('Utente412','squadra101','ACCETTATO','GIOCATORE');


INSERT INTO Torneo VALUES (0,'GIRONE_ALL_ITALIANA','descrizione000','SQUADRA','sport003','Utente027');
INSERT INTO Torneo VALUES (1,'GIRONE_ALL_ITALIANA','descrizione001','SQUADRA','sport003','Utente004');
INSERT INTO Torneo VALUES (2,'GIRONE_ALL_ITALIANA','descrizione002','SQUADRA','sport001','Utente007');
INSERT INTO Torneo VALUES (3,'ELIMINAZIONE_DIRETTA','descrizione003','SQUADRA','sport003','Utente026');
INSERT INTO Torneo VALUES (4,'ELIMINAZIONE_DIRETTA','descrizione004','SQUADRA','sport001','Utente027');
INSERT INTO Torneo VALUES (5,'ELIMINAZIONE_DIRETTA','descrizione005','SQUADRA','sport003','Utente009');
INSERT INTO Torneo VALUES (6,'ELIMINAZIONE_DIRETTA','descrizione006','SQUADRA','sport001','Utente002');
INSERT INTO Torneo VALUES (7,'ELIMINAZIONE_DIRETTA','descrizione007','SQUADRA','sport003','Utente029');
INSERT INTO Torneo VALUES (8,'ELIMINAZIONE_DIRETTA','descrizione008','SQUADRA','sport001','Utente004');
INSERT INTO Torneo VALUES (9,'GIRONE_ALL_ITALIANA','descrizione009','SQUADRA','sport003','Utente018');
INSERT INTO Torneo VALUES (10,'ELIMINAZIONE_DIRETTA','descrizione010','SINGOLO','sport000','Utente011');
INSERT INTO Torneo VALUES (11,'GIRONE_ALL_ITALIANA','descrizione011','SINGOLO','sport000','Utente029');
INSERT INTO Torneo VALUES (12,'ELIMINAZIONE_DIRETTA','descrizione012','SINGOLO','sport000','Utente001');
INSERT INTO Torneo VALUES (13,'ELIMINAZIONE_DIRETTA','descrizione013','SINGOLO','sport000','Utente006');
INSERT INTO Torneo VALUES (14,'ELIMINAZIONE_DIRETTA','descrizione014','SINGOLO','sport000','Utente018');
INSERT INTO Torneo VALUES (15,'GIRONE_ALL_ITALIANA','descrizione015','SINGOLO','sport000','Utente006');
INSERT INTO Torneo VALUES (16,'ELIMINAZIONE_DIRETTA','descrizione016','SINGOLO','sport000','Utente029');


INSERT INTO Partecipa VALUES ('Utente336',10);
INSERT INTO Partecipa VALUES ('Utente337',10);
INSERT INTO Partecipa VALUES ('Utente338',10);
INSERT INTO Partecipa VALUES ('Utente339',10);
INSERT INTO Partecipa VALUES ('Utente340',10);
INSERT INTO Partecipa VALUES ('Utente341',10);
INSERT INTO Partecipa VALUES ('Utente342',10);
INSERT INTO Partecipa VALUES ('Utente343',10);
INSERT INTO Partecipa VALUES ('Utente344',11);
INSERT INTO Partecipa VALUES ('Utente345',11);
INSERT INTO Partecipa VALUES ('Utente346',11);
INSERT INTO Partecipa VALUES ('Utente347',11);
INSERT INTO Partecipa VALUES ('Utente348',11);
INSERT INTO Partecipa VALUES ('Utente349',11);
INSERT INTO Partecipa VALUES ('Utente350',11);
INSERT INTO Partecipa VALUES ('Utente351',11);
INSERT INTO Partecipa VALUES ('Utente352',11);
INSERT INTO Partecipa VALUES ('Utente353',11);
INSERT INTO Partecipa VALUES ('Utente354',11);
INSERT INTO Partecipa VALUES ('Utente355',11);
INSERT INTO Partecipa VALUES ('Utente356',12);
INSERT INTO Partecipa VALUES ('Utente357',12);
INSERT INTO Partecipa VALUES ('Utente358',12);
INSERT INTO Partecipa VALUES ('Utente359',12);
INSERT INTO Partecipa VALUES ('Utente360',12);
INSERT INTO Partecipa VALUES ('Utente361',12);
INSERT INTO Partecipa VALUES ('Utente362',12);
INSERT INTO Partecipa VALUES ('Utente363',12);
INSERT INTO Partecipa VALUES ('Utente364',13);
INSERT INTO Partecipa VALUES ('Utente365',13);
INSERT INTO Partecipa VALUES ('Utente366',13);
INSERT INTO Partecipa VALUES ('Utente367',13);
INSERT INTO Partecipa VALUES ('Utente368',13);
INSERT INTO Partecipa VALUES ('Utente369',13);
INSERT INTO Partecipa VALUES ('Utente370',13);
INSERT INTO Partecipa VALUES ('Utente371',13);
INSERT INTO Partecipa VALUES ('Utente372',14);
INSERT INTO Partecipa VALUES ('Utente373',14);
INSERT INTO Partecipa VALUES ('Utente374',14);
INSERT INTO Partecipa VALUES ('Utente375',14);
INSERT INTO Partecipa VALUES ('Utente376',14);
INSERT INTO Partecipa VALUES ('Utente377',14);
INSERT INTO Partecipa VALUES ('Utente378',14);
INSERT INTO Partecipa VALUES ('Utente379',14);
INSERT INTO Partecipa VALUES ('Utente380',15);
INSERT INTO Partecipa VALUES ('Utente381',15);
INSERT INTO Partecipa VALUES ('Utente382',15);
INSERT INTO Partecipa VALUES ('Utente383',15);
INSERT INTO Partecipa VALUES ('Utente384',15);
INSERT INTO Partecipa VALUES ('Utente385',15);
INSERT INTO Partecipa VALUES ('Utente386',15);
INSERT INTO Partecipa VALUES ('Utente387',15);
INSERT INTO Partecipa VALUES ('Utente388',15);
INSERT INTO Partecipa VALUES ('Utente389',15);
INSERT INTO Partecipa VALUES ('Utente390',15);
INSERT INTO Partecipa VALUES ('Utente391',15);
INSERT INTO Partecipa VALUES ('Utente392',16);
INSERT INTO Partecipa VALUES ('Utente393',16);
INSERT INTO Partecipa VALUES ('Utente394',16);
INSERT INTO Partecipa VALUES ('Utente395',16);
INSERT INTO Partecipa VALUES ('Utente396',16);
INSERT INTO Partecipa VALUES ('Utente397',16);
INSERT INTO Partecipa VALUES ('Utente398',16);
INSERT INTO Partecipa VALUES ('Utente399',16);


INSERT INTO Composto VALUES ('squadra000',0);
INSERT INTO Composto VALUES ('squadra001',0);
INSERT INTO Composto VALUES ('squadra002',0);
INSERT INTO Composto VALUES ('squadra003',0);
INSERT INTO Composto VALUES ('squadra004',0);
INSERT INTO Composto VALUES ('squadra005',0);
INSERT INTO Composto VALUES ('squadra006',1);
INSERT INTO Composto VALUES ('squadra007',1);
INSERT INTO Composto VALUES ('squadra008',1);
INSERT INTO Composto VALUES ('squadra009',1);
INSERT INTO Composto VALUES ('squadra010',1);
INSERT INTO Composto VALUES ('squadra011',1);
INSERT INTO Composto VALUES ('squadra012',1);
INSERT INTO Composto VALUES ('squadra013',1);
INSERT INTO Composto VALUES ('squadra014',1);
INSERT INTO Composto VALUES ('squadra015',1);
INSERT INTO Composto VALUES ('squadra016',1);
INSERT INTO Composto VALUES ('squadra017',1);
INSERT INTO Composto VALUES ('squadra018',2);
INSERT INTO Composto VALUES ('squadra019',2);
INSERT INTO Composto VALUES ('squadra020',2);
INSERT INTO Composto VALUES ('squadra021',2);
INSERT INTO Composto VALUES ('squadra022',2);
INSERT INTO Composto VALUES ('squadra023',2);
INSERT INTO Composto VALUES ('squadra024',3);
INSERT INTO Composto VALUES ('squadra025',3);
INSERT INTO Composto VALUES ('squadra026',3);
INSERT INTO Composto VALUES ('squadra027',3);
INSERT INTO Composto VALUES ('squadra028',3);
INSERT INTO Composto VALUES ('squadra029',3);
INSERT INTO Composto VALUES ('squadra030',3);
INSERT INTO Composto VALUES ('squadra031',3);
INSERT INTO Composto VALUES ('squadra032',4);
INSERT INTO Composto VALUES ('squadra033',4);
INSERT INTO Composto VALUES ('squadra034',4);
INSERT INTO Composto VALUES ('squadra035',4);
INSERT INTO Composto VALUES ('squadra036',4);
INSERT INTO Composto VALUES ('squadra037',4);
INSERT INTO Composto VALUES ('squadra038',4);
INSERT INTO Composto VALUES ('squadra039',4);
INSERT INTO Composto VALUES ('squadra040',5);
INSERT INTO Composto VALUES ('squadra041',5);
INSERT INTO Composto VALUES ('squadra042',5);
INSERT INTO Composto VALUES ('squadra043',5);
INSERT INTO Composto VALUES ('squadra044',5);
INSERT INTO Composto VALUES ('squadra045',5);
INSERT INTO Composto VALUES ('squadra046',5);
INSERT INTO Composto VALUES ('squadra047',5);
INSERT INTO Composto VALUES ('squadra048',6);
INSERT INTO Composto VALUES ('squadra049',6);
INSERT INTO Composto VALUES ('squadra050',6);
INSERT INTO Composto VALUES ('squadra051',6);
INSERT INTO Composto VALUES ('squadra052',6);
INSERT INTO Composto VALUES ('squadra053',6);
INSERT INTO Composto VALUES ('squadra054',6);
INSERT INTO Composto VALUES ('squadra055',6);
INSERT INTO Composto VALUES ('squadra056',7);
INSERT INTO Composto VALUES ('squadra057',7);
INSERT INTO Composto VALUES ('squadra058',7);
INSERT INTO Composto VALUES ('squadra059',7);
INSERT INTO Composto VALUES ('squadra060',7);
INSERT INTO Composto VALUES ('squadra061',7);
INSERT INTO Composto VALUES ('squadra062',7);
INSERT INTO Composto VALUES ('squadra063',7);
INSERT INTO Composto VALUES ('squadra064',8);
INSERT INTO Composto VALUES ('squadra065',8);
INSERT INTO Composto VALUES ('squadra066',8);
INSERT INTO Composto VALUES ('squadra067',8);
INSERT INTO Composto VALUES ('squadra068',8);
INSERT INTO Composto VALUES ('squadra069',8);
INSERT INTO Composto VALUES ('squadra070',8);
INSERT INTO Composto VALUES ('squadra071',8);
INSERT INTO Composto VALUES ('squadra072',9);
INSERT INTO Composto VALUES ('squadra073',9);
INSERT INTO Composto VALUES ('squadra074',9);
INSERT INTO Composto VALUES ('squadra075',9);
INSERT INTO Composto VALUES ('squadra076',9);
INSERT INTO Composto VALUES ('squadra077',9);
INSERT INTO Composto VALUES ('squadra078',9);
INSERT INTO Composto VALUES ('squadra079',9);
INSERT INTO Composto VALUES ('squadra080',9);
INSERT INTO Composto VALUES ('squadra081',9);
INSERT INTO Composto VALUES ('squadra082',9);
INSERT INTO Composto VALUES ('squadra083',9);
INSERT INTO Composto VALUES ('squadra084',9);
INSERT INTO Composto VALUES ('squadra085',9);
INSERT INTO Composto VALUES ('squadra086',9);
INSERT INTO Composto VALUES ('squadra087',9);
INSERT INTO Composto VALUES ('squadra088',9);
INSERT INTO Composto VALUES ('squadra089',9);
INSERT INTO Composto VALUES ('squadra090',9);
INSERT INTO Composto VALUES ('squadra091',9);


--Eventi del torneo000
INSERT INTO Evento VALUES (0,'APERTO','2021-11-2 16:00','2021-11-2 17:30','sport003','A.S.D Pink Volley Genova',0,'GIRONE','Utente027');
INSERT INTO Evento VALUES (1,'APERTO','2022-11-3 12:00','2022-11-3 13:30','sport003','A.S.D Pink Volley Genova',0,'GIRONE','Utente027');
INSERT INTO Evento VALUES (2,'APERTO','2023-12-6 18:00','2023-12-6 19:30','sport003','Bagni Italia',0,'GIRONE','Utente027');
--Eventi del torneo001
INSERT INTO Evento VALUES (3,'APERTO','2024-6-2 16:00','2024-6-2 17:30','sport003','Bagni Italia',1,'GIRONE','Utente004');
INSERT INTO Evento VALUES (4,'APERTO','2022-2-3 15:00','2022-2-3 16:30','sport003','A.S.D Pink Volley Genova',1,'GIRONE','Utente004');
INSERT INTO Evento VALUES (5,'APERTO','2023-11-4 8:00','2023-11-4 9:30','sport003','Bagni Italia',1,'GIRONE','Utente004');
INSERT INTO Evento VALUES (6,'APERTO','2023-2-7 17:00','2023-2-7 18:30','sport003','A.S.D Pink Volley Genova',1,'GIRONE','Utente004');
INSERT INTO Evento VALUES (7,'APERTO','2023-10-8 16:00','2023-10-8 17:30','sport003','Casarza Arena',1,'GIRONE','Utente004');
INSERT INTO Evento VALUES (8,'APERTO','2024-11-12 11:00','2024-11-12 12:30','sport003','Complesso Sportivo Valle Puggia',1,'GIRONE','Utente004');
--Eventi del torneo002
INSERT INTO Evento VALUES (9,'APERTO','2021-4-2 10:00','2021-4-2 11:30','sport001','Bagni Italia',2,'GIRONE','Utente007');
INSERT INTO Evento VALUES (10,'APERTO','2022-4-3 13:00','2022-4-3 14:30','sport001','A.S.D Pink Volley Genova',2,'GIRONE','Utente007');
INSERT INTO Evento VALUES (11,'APERTO','2024-5-6 11:00','2024-5-6 12:30','sport001','Casarza Arena',2,'GIRONE','Utente007');
--Eventi del torneo003
INSERT INTO Evento VALUES (12,'APERTO','2025-12-1 15:00','2025-12-1 16:30','sport003','Bagni Italia',3,'QUARTI','Utente026');
INSERT INTO Evento VALUES (13,'APERTO','2024-11-2 12:00','2024-11-2 13:30','sport003','Bagni Italia',3,'QUARTI','Utente026');
INSERT INTO Evento VALUES (14,'APERTO','2023-11-3 7:00','2023-11-3 8:30','sport003','Casarza Arena',3,'QUARTI','Utente026');
INSERT INTO Evento VALUES (15,'APERTO','2021-9-4 17:00','2021-9-4 18:30','sport003','Complesso Sportivo Valle Puggia',3,'QUARTI','Utente026');
INSERT INTO Evento VALUES (16,'APERTO','2021-2-5 13:00','2021-2-5 14:30','sport003','Bagni Italia',3,'SEMIFINALE','Utente026');
INSERT INTO Evento VALUES (17,'APERTO','2024-12-6 10:00','2024-12-6 11:30','sport003','Impianto Don Bosco',3,'SEMIFINALE','Utente026');
INSERT INTO Evento VALUES (18,'APERTO','2024-5-7 18:00','2024-5-7 19:30','sport003','Complesso Sportivo Valle Puggia',3,'FINALE','Utente026');
--Eventi del torneo004
INSERT INTO Evento VALUES (19,'APERTO','2023-10-1 16:00','2023-10-1 17:30','sport001','Complesso Sportivo Valle Puggia',4,'QUARTI','Utente027');
INSERT INTO Evento VALUES (20,'APERTO','2021-4-2 11:00','2021-4-2 12:30','sport001','A.S.D Pink Volley Genova',4,'QUARTI','Utente027');
INSERT INTO Evento VALUES (21,'APERTO','2023-6-3 12:00','2023-6-3 13:30','sport001','Complesso Sportivo Valle Puggia',4,'QUARTI','Utente027');
INSERT INTO Evento VALUES (22,'APERTO','2025-1-4 17:00','2025-1-4 18:30','sport001','Impianto Don Bosco',4,'QUARTI','Utente027');
INSERT INTO Evento VALUES (23,'APERTO','2025-10-5 8:00','2025-10-5 9:30','sport001','A.S.D Pink Volley Genova',4,'SEMIFINALE','Utente027');
INSERT INTO Evento VALUES (24,'APERTO','2023-4-6 8:00','2023-4-6 9:30','sport001','Impianto Don Bosco',4,'SEMIFINALE','Utente027');
INSERT INTO Evento VALUES (25,'APERTO','2024-10-7 17:00','2024-10-7 18:30','sport001','Valletta Cambiaso Asd',4,'FINALE','Utente027');
--Eventi del torneo005
INSERT INTO Evento VALUES (26,'APERTO','2024-6-1 8:00','2024-6-1 9:30','sport003','Complesso Sportivo Valle Puggia',5,'QUARTI','Utente009');
INSERT INTO Evento VALUES (27,'APERTO','2022-12-2 7:00','2022-12-2 8:30','sport003','Impianto Don Bosco',5,'QUARTI','Utente009');
INSERT INTO Evento VALUES (28,'APERTO','2021-11-3 10:00','2021-11-3 11:30','sport003','Bagni Italia',5,'QUARTI','Utente009');
INSERT INTO Evento VALUES (29,'APERTO','2022-3-4 16:00','2022-3-4 17:30','sport003','Complesso Sportivo Valle Puggia',5,'QUARTI','Utente009');
INSERT INTO Evento VALUES (30,'APERTO','2021-10-5 9:00','2021-10-5 10:30','sport003','Casarza Arena',5,'SEMIFINALE','Utente009');
INSERT INTO Evento VALUES (31,'APERTO','2021-7-6 16:00','2021-7-6 17:30','sport003','Impianto Don Bosco',5,'SEMIFINALE','Utente009');
INSERT INTO Evento VALUES (32,'APERTO','2021-12-7 9:00','2021-12-7 10:30','sport003','Complesso Sportivo Valle Puggia',5,'FINALE','Utente009');
--Eventi del torneo006
INSERT INTO Evento VALUES (33,'APERTO','2022-12-1 8:00','2022-12-1 9:30','sport001','Casarza Arena',6,'QUARTI','Utente002');
INSERT INTO Evento VALUES (34,'APERTO','2023-12-2 10:00','2023-12-2 11:30','sport001','Impianto Don Bosco',6,'QUARTI','Utente002');
INSERT INTO Evento VALUES (35,'APERTO','2024-10-3 14:00','2024-10-3 15:30','sport001','Complesso Sportivo Valle Puggia',6,'QUARTI','Utente002');
INSERT INTO Evento VALUES (36,'APERTO','2024-3-4 15:00','2024-3-4 16:30','sport001','Impianto Don Bosco',6,'QUARTI','Utente002');
INSERT INTO Evento VALUES (37,'APERTO','2023-10-5 14:00','2023-10-5 15:30','sport001','Bagni Italia',6,'SEMIFINALE','Utente002');
INSERT INTO Evento VALUES (38,'APERTO','2022-1-6 15:00','2022-1-6 16:30','sport001','Casarza Arena',6,'SEMIFINALE','Utente002');
INSERT INTO Evento VALUES (39,'APERTO','2024-3-7 7:00','2024-3-7 8:30','sport001','Bagni Italia',6,'FINALE','Utente002');
--Eventi del torneo007
INSERT INTO Evento VALUES (40,'APERTO','2022-2-1 11:00','2022-2-1 12:30','sport003','Bagni Italia',7,'QUARTI','Utente029');
INSERT INTO Evento VALUES (41,'APERTO','2021-12-2 14:00','2021-12-2 15:30','sport003','Casarza Arena',7,'QUARTI','Utente029');
INSERT INTO Evento VALUES (42,'APERTO','2024-6-3 13:00','2024-6-3 14:30','sport003','Valletta Cambiaso Asd',7,'QUARTI','Utente029');
INSERT INTO Evento VALUES (43,'APERTO','2025-10-4 18:00','2025-10-4 19:30','sport003','Valletta Cambiaso Asd',7,'QUARTI','Utente029');
INSERT INTO Evento VALUES (44,'APERTO','2024-10-5 11:00','2024-10-5 12:30','sport003','Bagni Italia',7,'SEMIFINALE','Utente029');
INSERT INTO Evento VALUES (45,'APERTO','2023-12-6 14:00','2023-12-6 15:30','sport003','Complesso Sportivo Valle Puggia',7,'SEMIFINALE','Utente029');
INSERT INTO Evento VALUES (46,'APERTO','2024-8-7 15:00','2024-8-7 16:30','sport003','Impianto Don Bosco',7,'FINALE','Utente029');
--Eventi del torneo008
INSERT INTO Evento VALUES (47,'APERTO','2022-10-1 14:00','2022-10-1 15:30','sport001','Casarza Arena',8,'QUARTI','Utente004');
INSERT INTO Evento VALUES (48,'APERTO','2021-1-2 14:00','2021-1-2 15:30','sport001','Complesso Sportivo Valle Puggia',8,'QUARTI','Utente004');
INSERT INTO Evento VALUES (49,'APERTO','2021-4-3 18:00','2021-4-3 19:30','sport001','A.S.D Pink Volley Genova',8,'QUARTI','Utente004');
INSERT INTO Evento VALUES (50,'APERTO','2023-10-4 7:00','2023-10-4 8:30','sport001','Casarza Arena',8,'QUARTI','Utente004');
INSERT INTO Evento VALUES (51,'APERTO','2021-4-5 7:00','2021-4-5 8:30','sport001','Bagni Italia',8,'SEMIFINALE','Utente004');
INSERT INTO Evento VALUES (52,'APERTO','2021-2-6 15:00','2021-2-6 16:30','sport001','Complesso Sportivo Valle Puggia',8,'SEMIFINALE','Utente004');
INSERT INTO Evento VALUES (53,'APERTO','2023-5-7 12:00','2023-5-7 13:30','sport001','Complesso Sportivo Valle Puggia',8,'FINALE','Utente004');
--Eventi del torneo009
INSERT INTO Evento VALUES (54,'APERTO','2025-7-2 14:00','2025-7-2 15:30','sport003','Impianto Don Bosco',9,'GIRONE','Utente018');
INSERT INTO Evento VALUES (55,'APERTO','2023-8-3 10:00','2023-8-3 11:30','sport003','A.S.D Pink Volley Genova',9,'GIRONE','Utente018');
INSERT INTO Evento VALUES (56,'APERTO','2023-7-4 11:00','2023-7-4 12:30','sport003','Casarza Arena',9,'GIRONE','Utente018');
INSERT INTO Evento VALUES (57,'APERTO','2023-3-5 11:00','2023-3-5 12:30','sport003','A.S.D Pink Volley Genova',9,'GIRONE','Utente018');
INSERT INTO Evento VALUES (58,'APERTO','2022-4-8 11:00','2022-4-8 12:30','sport003','Bagni Italia',9,'GIRONE','Utente018');
INSERT INTO Evento VALUES (59,'APERTO','2021-2-9 13:00','2021-2-9 14:30','sport003','A.S.D Pink Volley Genova',9,'GIRONE','Utente018');
INSERT INTO Evento VALUES (60,'APERTO','2023-12-10 9:00','2023-12-10 10:30','sport003','Casarza Arena',9,'GIRONE','Utente018');
INSERT INTO Evento VALUES (61,'APERTO','2022-1-14 8:00','2022-1-14 9:30','sport003','Impianto Don Bosco',9,'GIRONE','Utente018');
INSERT INTO Evento VALUES (62,'APERTO','2024-11-15 13:00','2024-11-15 14:30','sport003','Impianto Don Bosco',9,'GIRONE','Utente018');
INSERT INTO Evento VALUES (63,'APERTO','2021-9-20 16:00','2021-9-20 17:30','sport003','Valletta Cambiaso Asd',9,'GIRONE','Utente018');
--Eventi del torneo010
INSERT INTO Evento VALUES (64,'APERTO','2021-1-1 16:00','2021-1-1 17:30','sport000','Impianto Don Bosco',10,'QUARTI','Utente011');
INSERT INTO Evento VALUES (65,'APERTO','2021-8-2 7:00','2021-8-2 8:30','sport000','Complesso Sportivo Valle Puggia',10,'QUARTI','Utente011');
INSERT INTO Evento VALUES (66,'APERTO','2025-3-3 14:00','2025-3-3 15:30','sport000','Valletta Cambiaso Asd',10,'QUARTI','Utente011');
INSERT INTO Evento VALUES (67,'APERTO','2024-8-4 9:00','2024-8-4 10:30','sport000','A.S.D Pink Volley Genova',10,'QUARTI','Utente011');
INSERT INTO Evento VALUES (68,'APERTO','2024-3-5 13:00','2024-3-5 14:30','sport000','A.S.D Pink Volley Genova',10,'SEMIFINALE','Utente011');
INSERT INTO Evento VALUES (69,'APERTO','2022-4-6 15:00','2022-4-6 16:30','sport000','Impianto Don Bosco',10,'SEMIFINALE','Utente011');
INSERT INTO Evento VALUES (70,'APERTO','2024-1-7 15:00','2024-1-7 16:30','sport000','Impianto Don Bosco',10,'FINALE','Utente011');
--Eventi del torneo011
INSERT INTO Evento VALUES (71,'APERTO','2024-10-2 10:00','2024-10-2 11:30','sport000','Complesso Sportivo Valle Puggia',11,'GIRONE','Utente029');
INSERT INTO Evento VALUES (72,'APERTO','2025-3-3 10:00','2025-3-3 11:30','sport000','Casarza Arena',11,'GIRONE','Utente029');
INSERT INTO Evento VALUES (73,'APERTO','2021-4-4 16:00','2021-4-4 17:30','sport000','Valletta Cambiaso Asd',11,'GIRONE','Utente029');
INSERT INTO Evento VALUES (74,'APERTO','2021-9-7 17:00','2021-9-7 18:30','sport000','Impianto Don Bosco',11,'GIRONE','Utente029');
INSERT INTO Evento VALUES (75,'APERTO','2023-10-8 12:00','2023-10-8 13:30','sport000','Bagni Italia',11,'GIRONE','Utente029');
INSERT INTO Evento VALUES (76,'APERTO','2023-3-12 16:00','2023-3-12 17:30','sport000','Impianto Don Bosco',11,'GIRONE','Utente029');
--Eventi del torneo012
INSERT INTO Evento VALUES (77,'APERTO','2022-3-2 18:00','2022-3-2 18:30','sport000','Complesso Sportivo Valle Puggia',12,'QUARTI','Utente001');
INSERT INTO Evento VALUES (78,'APERTO','2022-3-2 16:00','2022-3-2 17:30','sport000','Impianto Don Bosco',12,'QUARTI','Utente001');
INSERT INTO Evento VALUES (79,'APERTO','2021-6-3 11:00','2021-6-3 12:30','sport000','Casarza Arena',12,'QUARTI','Utente001');
INSERT INTO Evento VALUES (80,'APERTO','2021-2-4 18:00','2021-2-4 19:30','sport000','Casarza Arena',12,'QUARTI','Utente001');
INSERT INTO Evento VALUES (81,'APERTO','2023-10-5 9:00','2023-10-5 10:30','sport000','Bagni Italia',12,'SEMIFINALE','Utente001');
INSERT INTO Evento VALUES (82,'APERTO','2022-10-6 10:00','2022-10-6 11:30','sport000','Complesso Sportivo Valle Puggia',12,'SEMIFINALE','Utente001');
INSERT INTO Evento VALUES (83,'APERTO','2022-11-7 14:00','2022-11-7 15:30','sport000','Complesso Sportivo Valle Puggia',12,'FINALE','Utente001');
--Eventi del torneo013
INSERT INTO Evento VALUES (84,'APERTO','2025-10-1 9:00','2025-10-1 10:30','sport000','Impianto Don Bosco',13,'QUARTI','Utente006');
INSERT INTO Evento VALUES (85,'APERTO','2023-7-2 16:00','2023-7-2 17:30','sport000','Complesso Sportivo Valle Puggia',13,'QUARTI','Utente006');
INSERT INTO Evento VALUES (86,'APERTO','2025-3-3 9:00','2025-3-3 10:30','sport000','Complesso Sportivo Valle Puggia',13,'QUARTI','Utente006');
INSERT INTO Evento VALUES (87,'APERTO','2025-12-4 10:00','2025-12-4 11:30','sport000','Valletta Cambiaso Asd',13,'QUARTI','Utente006');
INSERT INTO Evento VALUES (88,'APERTO','2021-4-5 7:00','2021-4-5 8:30','sport000','Valletta Cambiaso Asd',13,'SEMIFINALE','Utente006');
INSERT INTO Evento VALUES (89,'APERTO','2023-3-6 7:00','2023-3-6 8:30','sport000','Complesso Sportivo Valle Puggia',13,'SEMIFINALE','Utente006');
INSERT INTO Evento VALUES (90,'APERTO','2025-5-7 9:00','2025-5-7 10:30','sport000','A.S.D Pink Volley Genova',13,'FINALE','Utente006');
--Eventi del torneo014
INSERT INTO Evento VALUES (91,'APERTO','2021-6-1 11:00','2021-6-1 12:30','sport000','Complesso Sportivo Valle Puggia',14,'QUARTI','Utente018');
INSERT INTO Evento VALUES (92,'APERTO','2021-8-2 9:00','2021-8-2 10:30','sport000','Bagni Italia',14,'QUARTI','Utente018');
INSERT INTO Evento VALUES (93,'APERTO','2021-3-3 14:00','2021-3-3 15:30','sport000','Valletta Cambiaso Asd',14,'QUARTI','Utente018');
INSERT INTO Evento VALUES (94,'APERTO','2023-12-4 13:00','2023-12-4 14:30','sport000','Casarza Arena',14,'QUARTI','Utente018');
INSERT INTO Evento VALUES (95,'APERTO','2023-9-5 9:00','2023-9-5 10:30','sport000','A.S.D Pink Volley Genova',14,'SEMIFINALE','Utente018');
INSERT INTO Evento VALUES (96,'APERTO','2021-11-6 8:00','2021-11-6 9:30','sport000','Bagni Italia',14,'SEMIFINALE','Utente018');
INSERT INTO Evento VALUES (97,'APERTO','2022-6-7 10:00','2022-6-7 11:30','sport000','Bagni Italia',14,'FINALE','Utente018');
--Eventi del torneo015
INSERT INTO Evento VALUES (98,'APERTO','2025-4-2 12:00','2025-4-2 13:30','sport000','Bagni Italia',15,'GIRONE','Utente006');
INSERT INTO Evento VALUES (99,'APERTO','2024-7-3 11:00','2024-7-3 12:30','sport000','Complesso Sportivo Valle Puggia',15,'GIRONE','Utente006');
INSERT INTO Evento VALUES (100,'APERTO','2021-7-4 10:00','2021-7-4 11:30','sport000','Complesso Sportivo Valle Puggia',15,'GIRONE','Utente006');
INSERT INTO Evento VALUES (101,'APERTO','2024-8-7 18:00','2024-8-7 19:30','sport000','A.S.D Pink Volley Genova',15,'GIRONE','Utente006');
INSERT INTO Evento VALUES (102,'APERTO','2024-8-8 18:00','2024-8-8 19:30','sport000','Casarza Arena',15,'GIRONE','Utente006');
INSERT INTO Evento VALUES (103,'APERTO','2025-1-12 10:00','2025-1-12 11:30','sport000','Casarza Arena',15,'GIRONE','Utente006');
--Eventi del torneo016
INSERT INTO Evento VALUES (104,'APERTO','2024-7-1 16:00','2024-7-1 17:30','sport000','Impianto Don Bosco',16,'QUARTI','Utente029');
INSERT INTO Evento VALUES (105,'APERTO','2024-10-2 15:00','2024-10-2 16:30','sport000','Valletta Cambiaso Asd',16,'QUARTI','Utente029');
INSERT INTO Evento VALUES (106,'APERTO','2024-11-3 7:00','2024-11-3 8:30','sport000','Impianto Don Bosco',16,'QUARTI','Utente029');
INSERT INTO Evento VALUES (107,'APERTO','2024-9-4 14:00','2024-9-4 15:30','sport000','Complesso Sportivo Valle Puggia',16,'QUARTI','Utente029');
INSERT INTO Evento VALUES (108,'APERTO','2025-1-5 18:00','2025-1-5 19:30','sport000','Casarza Arena',16,'SEMIFINALE','Utente029');
INSERT INTO Evento VALUES (109,'APERTO','2021-7-6 17:00','2021-7-6 18:30','sport000','Complesso Sportivo Valle Puggia',16,'SEMIFINALE','Utente029');
INSERT INTO Evento VALUES (110,'APERTO','2024-10-7 18:00','2024-10-7 19:30','sport000','Bagni Italia',16,'FINALE','Utente029');
--Eventi generici
INSERT INTO Evento VALUES (111,'APERTO','2022-4-1 14:00','2022-4-1 15:30','sport002','Casarza Arena',NULL,NULL,'Utente013');
INSERT INTO Evento VALUES (112,'APERTO','2022-6-2 10:00','2022-6-2 11:30','sport003','Impianto Don Bosco',NULL,NULL,'Utente004');
INSERT INTO Evento VALUES (113,'APERTO','2021-8-3 12:00','2021-8-3 13:30','sport003','A.S.D Pink Volley Genova',NULL,NULL,'Utente009');
INSERT INTO Evento VALUES (114,'APERTO','2021-3-4 13:00','2021-3-4 14:30','sport003','Valletta Cambiaso Asd',NULL,NULL,'Utente015');
INSERT INTO Evento VALUES (115,'APERTO','2025-12-5 8:00','2025-12-5 9:30','sport003','A.S.D Pink Volley Genova',NULL,NULL,'Utente021');
INSERT INTO Evento VALUES (116,'APERTO','2023-7-6 8:00','2023-7-6 9:30','sport001','Valletta Cambiaso Asd',NULL,NULL,'Utente018');
INSERT INTO Evento VALUES (117,'APERTO','2022-9-7 8:00','2022-9-7 9:30','sport002','A.S.D Pink Volley Genova',NULL,NULL,'Utente024');
INSERT INTO Evento VALUES (118,'APERTO','2025-9-8 11:00','2025-9-8 12:30','sport002','A.S.D Pink Volley Genova',NULL,NULL,'Utente018');
INSERT INTO Evento VALUES (119,'APERTO','2024-4-9 17:00','2024-4-9 18:30','sport002','Impianto Don Bosco',NULL,NULL,'Utente016');
INSERT INTO Evento VALUES (120,'APERTO','2025-4-10 15:00','2025-4-10 16:30','sport002','Impianto Don Bosco',NULL,NULL,'Utente001');
INSERT INTO Evento VALUES (121,'APERTO','2024-8-1 9:00','2024-8-1 10:30','sport000','Bagni Italia',NULL,NULL,'Utente023');
INSERT INTO Evento VALUES (122,'APERTO','2024-2-2 14:00','2024-2-2 15:30','sport000','Bagni Italia',NULL,NULL,'Utente010');
INSERT INTO Evento VALUES (123,'APERTO','2025-9-3 18:00','2025-9-3 19:30','sport000','A.S.D Pink Volley Genova',NULL,NULL,'Utente025');
INSERT INTO Evento VALUES (124,'APERTO','2022-6-4 17:00','2022-6-4 18:30','sport000','Complesso Sportivo Valle Puggia',NULL,NULL,'Utente003');
INSERT INTO Evento VALUES (125,'APERTO','2023-1-5 14:00','2023-1-5 15:30','sport000','Impianto Don Bosco',NULL,NULL,'Utente019');
INSERT INTO Evento VALUES (126,'APERTO','2023-9-6 8:00','2023-9-6 9:30','sport000','Valletta Cambiaso Asd',NULL,NULL,'Utente022');
INSERT INTO Evento VALUES (127,'APERTO','2024-10-7 16:00','2024-10-7 17:30','sport000','Bagni Italia',NULL,NULL,'Utente026');
INSERT INTO Evento VALUES (128,'APERTO','2023-8-8 13:00','2023-8-8 14:30','sport000','Casarza Arena',NULL,NULL,'Utente027');
INSERT INTO Evento VALUES (129,'APERTO','2023-4-9 12:00','2023-4-9 13:30','sport000','Casarza Arena',NULL,NULL,'Utente000');

INSERT INTO Evento VALUES (130,'APERTO','2025-10-10 16:00','2025-10-10 17:30','sport000','Bagni Italia',NULL,NULL,'Utente002');

INSERT INTO Iscrive VALUES ('Utente349',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente337',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente365',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente343',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente367',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente395',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente385',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente336',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente390',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente375',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente362',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente358',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente348',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente361',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente372',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente360',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente356',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente338',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente384',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente379',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente380',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente394',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente386',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente339',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente340',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente341',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente342',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente344',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente345',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente346',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente347',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente351',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente352',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente353',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente354',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente355',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente357',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente359',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente363',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente364',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente366',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente368',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente369',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente370',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente371',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente373',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente374',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente376',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente377',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente378',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente381',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente383',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente387',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente388',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente389',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente391',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente392',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente393',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente396',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente397',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente398',130,'NON_VALUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente011',130,'RIFIUTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente012',130,'RIFIUTATO','GIOCATORE');
--INSERT INTO Iscrive VALUES ('Utente399',130,'RIFIUTATO','GIOCATORE');


INSERT INTO Iscrive VALUES ('Utente350',130,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente382',130,'ACCETTATO','GIOCATORE');


INSERT INTO Di VALUES (0,'squadra000');
INSERT INTO Di VALUES (0,'squadra001');
INSERT INTO Di VALUES (1,'squadra002');
INSERT INTO Di VALUES (1,'squadra003');
INSERT INTO Di VALUES (2,'squadra004');
INSERT INTO Di VALUES (2,'squadra005');
INSERT INTO Di VALUES (3,'squadra006');
INSERT INTO Di VALUES (3,'squadra007');
INSERT INTO Di VALUES (4,'squadra008');
INSERT INTO Di VALUES (4,'squadra009');
INSERT INTO Di VALUES (5,'squadra010');
INSERT INTO Di VALUES (5,'squadra011');
INSERT INTO Di VALUES (6,'squadra012');
INSERT INTO Di VALUES (6,'squadra013');
INSERT INTO Di VALUES (7,'squadra014');
INSERT INTO Di VALUES (7,'squadra015');
INSERT INTO Di VALUES (8,'squadra016');
INSERT INTO Di VALUES (8,'squadra017');
INSERT INTO Di VALUES (9,'squadra018');
INSERT INTO Di VALUES (9,'squadra019');
INSERT INTO Di VALUES (10,'squadra020');
INSERT INTO Di VALUES (10,'squadra021');
INSERT INTO Di VALUES (11,'squadra022');
INSERT INTO Di VALUES (11,'squadra023');
INSERT INTO Di VALUES (12,'squadra024');
INSERT INTO Di VALUES (12,'squadra025');
INSERT INTO Di VALUES (13,'squadra026');
INSERT INTO Di VALUES (13,'squadra027');
INSERT INTO Di VALUES (14,'squadra028');
INSERT INTO Di VALUES (14,'squadra029');
INSERT INTO Di VALUES (15,'squadra030');
INSERT INTO Di VALUES (15,'squadra031');
INSERT INTO Di VALUES (19,'squadra032');
INSERT INTO Di VALUES (19,'squadra033');
INSERT INTO Di VALUES (20,'squadra034');
INSERT INTO Di VALUES (20,'squadra035');
INSERT INTO Di VALUES (21,'squadra036');
INSERT INTO Di VALUES (21,'squadra037');
INSERT INTO Di VALUES (22,'squadra038');
INSERT INTO Di VALUES (22,'squadra039');
INSERT INTO Di VALUES (26,'squadra040');
INSERT INTO Di VALUES (26,'squadra041');
INSERT INTO Di VALUES (27,'squadra042');
INSERT INTO Di VALUES (27,'squadra043');
INSERT INTO Di VALUES (28,'squadra044');
INSERT INTO Di VALUES (28,'squadra045');
INSERT INTO Di VALUES (29,'squadra046');
INSERT INTO Di VALUES (29,'squadra047');
INSERT INTO Di VALUES (33,'squadra048');
INSERT INTO Di VALUES (33,'squadra049');
INSERT INTO Di VALUES (34,'squadra050');
INSERT INTO Di VALUES (34,'squadra051');
INSERT INTO Di VALUES (35,'squadra052');
INSERT INTO Di VALUES (35,'squadra053');
INSERT INTO Di VALUES (36,'squadra054');
INSERT INTO Di VALUES (36,'squadra055');
INSERT INTO Di VALUES (40,'squadra056');
INSERT INTO Di VALUES (40,'squadra057');
INSERT INTO Di VALUES (41,'squadra058');
INSERT INTO Di VALUES (41,'squadra059');
INSERT INTO Di VALUES (42,'squadra060');
INSERT INTO Di VALUES (42,'squadra061');
INSERT INTO Di VALUES (43,'squadra062');
INSERT INTO Di VALUES (43,'squadra063');
INSERT INTO Di VALUES (47,'squadra064');
INSERT INTO Di VALUES (47,'squadra065');
INSERT INTO Di VALUES (48,'squadra066');
INSERT INTO Di VALUES (48,'squadra067');
INSERT INTO Di VALUES (49,'squadra068');
INSERT INTO Di VALUES (49,'squadra069');
INSERT INTO Di VALUES (50,'squadra070');
INSERT INTO Di VALUES (50,'squadra071');
INSERT INTO Di VALUES (54,'squadra072');
INSERT INTO Di VALUES (54,'squadra073');
INSERT INTO Di VALUES (55,'squadra074');
INSERT INTO Di VALUES (55,'squadra075');
INSERT INTO Di VALUES (56,'squadra076');
INSERT INTO Di VALUES (56,'squadra077');
INSERT INTO Di VALUES (57,'squadra078');
INSERT INTO Di VALUES (57,'squadra079');
INSERT INTO Di VALUES (58,'squadra080');
INSERT INTO Di VALUES (58,'squadra081');
INSERT INTO Di VALUES (59,'squadra082');
INSERT INTO Di VALUES (59,'squadra083');
INSERT INTO Di VALUES (60,'squadra084');
INSERT INTO Di VALUES (60,'squadra085');
INSERT INTO Di VALUES (61,'squadra086');
INSERT INTO Di VALUES (61,'squadra087');
INSERT INTO Di VALUES (62,'squadra088');
INSERT INTO Di VALUES (62,'squadra089');
INSERT INTO Di VALUES (63,'squadra090');
INSERT INTO Di VALUES (63,'squadra091');


--Iscrizione a evennto000
INSERT INTO Iscrive VALUES ('Utente030',0,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente031',0,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente032',0,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente033',0,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente034',0,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente035',0,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente514',0,'ACCETTATO','ARBITRO');
--Iscrizione a evennto001
INSERT INTO Iscrive VALUES ('Utente036',1,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente037',1,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente038',1,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente039',1,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente040',1,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente041',1,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente510',1,'ACCETTATO','ARBITRO');
--Iscrizione a evennto002
INSERT INTO Iscrive VALUES ('Utente042',2,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente043',2,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente044',2,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente045',2,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente046',2,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente047',2,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente506',2,'ACCETTATO','ARBITRO');
--Iscrizione a evennto003
INSERT INTO Iscrive VALUES ('Utente048',3,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente049',3,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente050',3,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente051',3,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente052',3,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente053',3,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente514',3,'ACCETTATO','ARBITRO');
--Iscrizione a evennto004
INSERT INTO Iscrive VALUES ('Utente054',4,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente055',4,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente056',4,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente057',4,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente058',4,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente059',4,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente503',4,'ACCETTATO','ARBITRO');
--Iscrizione a evennto005
INSERT INTO Iscrive VALUES ('Utente060',5,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente061',5,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente062',5,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente063',5,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente064',5,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente065',5,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente505',5,'ACCETTATO','ARBITRO');
--Iscrizione a evennto006
INSERT INTO Iscrive VALUES ('Utente066',6,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente067',6,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente068',6,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente069',6,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente070',6,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente071',6,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente512',6,'ACCETTATO','ARBITRO');
--Iscrizione a evennto007
INSERT INTO Iscrive VALUES ('Utente072',7,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente073',7,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente074',7,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente075',7,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente076',7,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente077',7,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente506',7,'ACCETTATO','ARBITRO');
--Iscrizione a evennto008
INSERT INTO Iscrive VALUES ('Utente078',8,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente079',8,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente080',8,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente081',8,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente082',8,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente083',8,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente514',8,'ACCETTATO','ARBITRO');
--Iscrizione a evennto009
INSERT INTO Iscrive VALUES ('Utente084',9,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente085',9,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente086',9,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente087',9,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente088',9,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente089',9,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente090',9,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente091',9,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente502',9,'ACCETTATO','ARBITRO');
--Iscrizione a evennto010
INSERT INTO Iscrive VALUES ('Utente092',10,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente093',10,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente094',10,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente095',10,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente096',10,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente097',10,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente098',10,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente099',10,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente506',10,'ACCETTATO','ARBITRO');
--Iscrizione a evennto011
INSERT INTO Iscrive VALUES ('Utente100',11,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente101',11,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente102',11,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente103',11,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente104',11,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente105',11,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente106',11,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente107',11,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente513',11,'ACCETTATO','ARBITRO');
--Iscrizione a evennto012
INSERT INTO Iscrive VALUES ('Utente108',12,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente109',12,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente110',12,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente111',12,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente112',12,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente113',12,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente504',12,'ACCETTATO','ARBITRO');
--Iscrizione a evennto013
INSERT INTO Iscrive VALUES ('Utente114',13,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente115',13,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente116',13,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente117',13,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente118',13,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente119',13,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente500',13,'ACCETTATO','ARBITRO');
--Iscrizione a evennto014
INSERT INTO Iscrive VALUES ('Utente120',14,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente121',14,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente122',14,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente123',14,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente124',14,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente125',14,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente507',14,'ACCETTATO','ARBITRO');
--Iscrizione a evennto015
INSERT INTO Iscrive VALUES ('Utente126',15,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente127',15,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente128',15,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente129',15,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente130',15,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente131',15,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente507',15,'ACCETTATO','ARBITRO');
--Iscrizione a evennto019
INSERT INTO Iscrive VALUES ('Utente132',19,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente133',19,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente134',19,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente135',19,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente136',19,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente137',19,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente138',19,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente139',19,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente501',19,'ACCETTATO','ARBITRO');
--Iscrizione a evennto020
INSERT INTO Iscrive VALUES ('Utente140',20,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente141',20,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente142',20,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente143',20,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente144',20,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente145',20,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente146',20,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente147',20,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente503',20,'ACCETTATO','ARBITRO');
--Iscrizione a evennto021
INSERT INTO Iscrive VALUES ('Utente148',21,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente149',21,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente150',21,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente151',21,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente152',21,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente153',21,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente154',21,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente155',21,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente503',21,'ACCETTATO','ARBITRO');
--Iscrizione a evennto022
INSERT INTO Iscrive VALUES ('Utente156',22,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente157',22,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente158',22,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente159',22,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente160',22,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente161',22,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente162',22,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente163',22,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente503',22,'ACCETTATO','ARBITRO');
--Iscrizione a evennto026
INSERT INTO Iscrive VALUES ('Utente164',26,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente165',26,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente166',26,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente167',26,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente168',26,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente169',26,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente500',26,'ACCETTATO','ARBITRO');
--Iscrizione a evennto027
INSERT INTO Iscrive VALUES ('Utente170',27,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente171',27,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente172',27,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente173',27,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente174',27,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente175',27,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente505',27,'ACCETTATO','ARBITRO');
--Iscrizione a evennto028
INSERT INTO Iscrive VALUES ('Utente176',28,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente177',28,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente178',28,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente179',28,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente180',28,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente181',28,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente503',28,'ACCETTATO','ARBITRO');
--Iscrizione a evennto029
INSERT INTO Iscrive VALUES ('Utente182',29,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente183',29,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente184',29,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente185',29,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente186',29,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente187',29,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente507',29,'ACCETTATO','ARBITRO');
--Iscrizione a evennto033
INSERT INTO Iscrive VALUES ('Utente188',33,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente189',33,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente190',33,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente191',33,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente192',33,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente193',33,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente194',33,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente195',33,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente512',33,'ACCETTATO','ARBITRO');
--Iscrizione a evennto034
INSERT INTO Iscrive VALUES ('Utente196',34,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente197',34,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente198',34,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente199',34,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente200',34,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente201',34,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente202',34,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente203',34,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente500',34,'ACCETTATO','ARBITRO');
--Iscrizione a evennto035
INSERT INTO Iscrive VALUES ('Utente204',35,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente205',35,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente206',35,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente207',35,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente208',35,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente209',35,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente210',35,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente211',35,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente514',35,'ACCETTATO','ARBITRO');
--Iscrizione a evennto036
INSERT INTO Iscrive VALUES ('Utente212',36,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente213',36,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente214',36,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente215',36,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente216',36,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente217',36,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente218',36,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente219',36,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente507',36,'ACCETTATO','ARBITRO');
--Iscrizione a evennto040
INSERT INTO Iscrive VALUES ('Utente220',40,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente221',40,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente222',40,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente223',40,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente224',40,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente225',40,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente500',40,'ACCETTATO','ARBITRO');
--Iscrizione a evennto041
INSERT INTO Iscrive VALUES ('Utente226',41,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente227',41,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente228',41,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente229',41,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente230',41,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente231',41,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente502',41,'ACCETTATO','ARBITRO');
--Iscrizione a evennto042
INSERT INTO Iscrive VALUES ('Utente232',42,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente233',42,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente234',42,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente235',42,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente236',42,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente237',42,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente506',42,'ACCETTATO','ARBITRO');
--Iscrizione a evennto043
INSERT INTO Iscrive VALUES ('Utente238',43,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente239',43,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente240',43,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente241',43,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente242',43,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente243',43,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente512',43,'ACCETTATO','ARBITRO');
--Iscrizione a evennto047
INSERT INTO Iscrive VALUES ('Utente244',47,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente245',47,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente246',47,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente247',47,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente248',47,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente249',47,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente250',47,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente251',47,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente503',47,'ACCETTATO','ARBITRO');
--Iscrizione a evennto048
INSERT INTO Iscrive VALUES ('Utente252',48,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente253',48,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente254',48,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente255',48,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente256',48,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente257',48,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente258',48,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente259',48,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente514',48,'ACCETTATO','ARBITRO');
--Iscrizione a evennto049
INSERT INTO Iscrive VALUES ('Utente260',49,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente261',49,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente262',49,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente263',49,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente264',49,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente265',49,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente266',49,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente267',49,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente502',49,'ACCETTATO','ARBITRO');
--Iscrizione a evennto050
INSERT INTO Iscrive VALUES ('Utente268',50,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente269',50,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente270',50,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente271',50,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente272',50,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente273',50,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente274',50,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente275',50,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente514',50,'ACCETTATO','ARBITRO');
--Iscrizione a evennto054
INSERT INTO Iscrive VALUES ('Utente276',54,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente277',54,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente278',54,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente279',54,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente280',54,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente281',54,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente509',54,'ACCETTATO','ARBITRO');
--Iscrizione a evennto055
INSERT INTO Iscrive VALUES ('Utente282',55,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente283',55,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente284',55,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente285',55,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente286',55,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente287',55,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente512',55,'ACCETTATO','ARBITRO');
--Iscrizione a evennto056
INSERT INTO Iscrive VALUES ('Utente288',56,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente289',56,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente290',56,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente291',56,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente292',56,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente293',56,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente506',56,'ACCETTATO','ARBITRO');
--Iscrizione a evennto057
INSERT INTO Iscrive VALUES ('Utente294',57,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente295',57,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente296',57,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente297',57,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente298',57,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente299',57,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente511',57,'ACCETTATO','ARBITRO');
--Iscrizione a evennto058
INSERT INTO Iscrive VALUES ('Utente300',58,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente301',58,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente302',58,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente303',58,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente304',58,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente305',58,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente509',58,'ACCETTATO','ARBITRO');
--Iscrizione a evennto059
INSERT INTO Iscrive VALUES ('Utente306',59,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente307',59,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente308',59,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente309',59,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente310',59,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente311',59,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente513',59,'ACCETTATO','ARBITRO');
--Iscrizione a evennto060
INSERT INTO Iscrive VALUES ('Utente312',60,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente313',60,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente314',60,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente315',60,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente316',60,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente317',60,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente505',60,'ACCETTATO','ARBITRO');
--Iscrizione a evennto061
INSERT INTO Iscrive VALUES ('Utente318',61,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente319',61,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente320',61,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente321',61,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente322',61,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente323',61,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente514',61,'ACCETTATO','ARBITRO');
--Iscrizione a evennto062
INSERT INTO Iscrive VALUES ('Utente324',62,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente325',62,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente326',62,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente327',62,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente328',62,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente329',62,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente503',62,'ACCETTATO','ARBITRO');
--Iscrizione a evennto063
INSERT INTO Iscrive VALUES ('Utente330',63,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente331',63,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente332',63,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente333',63,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente334',63,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente335',63,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente500',63,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente336',64,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente337',64,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente510',64,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente338',65,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente339',65,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente507',65,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente340',66,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente341',66,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente511',66,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente342',67,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente343',67,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente512',67,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente344',71,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente345',71,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente506',71,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente346',72,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente347',72,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente505',72,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente348',73,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente349',73,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente503',73,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente350',74,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente351',74,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente512',74,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente352',75,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente353',75,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente511',75,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente354',76,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente355',76,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente504',76,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente356',77,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente357',77,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente511',77,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente358',78,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente359',78,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente514',78,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente360',79,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente361',79,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente500',79,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente362',80,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente363',80,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente500',80,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente364',84,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente365',84,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente502',84,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente366',85,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente367',85,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente513',85,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente368',86,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente369',86,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente506',86,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente370',87,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente371',87,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente509',87,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente372',91,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente373',91,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente506',91,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente374',92,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente375',92,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente508',92,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente376',93,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente377',93,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente506',93,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente378',94,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente379',94,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente507',94,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente380',98,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente381',98,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente505',98,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente382',99,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente383',99,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente512',99,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente384',100,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente385',100,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente509',100,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente386',101,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente387',101,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente507',101,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente388',102,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente389',102,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente500',102,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente390',103,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente391',103,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente514',103,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente392',104,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente393',104,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente511',104,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente394',105,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente395',105,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente504',105,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente396',106,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente397',106,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente501',106,'ACCETTATO','ARBITRO');
INSERT INTO Iscrive VALUES ('Utente398',107,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente399',107,'ACCETTATO','GIOCATORE');
INSERT INTO Iscrive VALUES ('Utente505',107,'ACCETTATO','ARBITRO');



--punti segnati durante evento000
----squadra 1
INSERT INTO Punti VALUES ('Utente030',0,1);
INSERT INTO Punti VALUES ('Utente031',0,2);
INSERT INTO Punti VALUES ('Utente032',0,3);
----squadra 1
INSERT INTO Punti VALUES ('Utente033',0,0);
INSERT INTO Punti VALUES ('Utente034',0,1);
INSERT INTO Punti VALUES ('Utente035',0,0);

--punti segnati durante evento001
----squadra 1
INSERT INTO Punti VALUES ('Utente036',1,2);
INSERT INTO Punti VALUES ('Utente037',1,0);
INSERT INTO Punti VALUES ('Utente038',1,1);
----squadra 1
INSERT INTO Punti VALUES ('Utente039',1,2);
INSERT INTO Punti VALUES ('Utente040',1,0);
INSERT INTO Punti VALUES ('Utente041',1,0);

--punti segnati durante evento002
----squadra 1
INSERT INTO Punti VALUES ('Utente042',2,1);
INSERT INTO Punti VALUES ('Utente043',2,0);
INSERT INTO Punti VALUES ('Utente044',2,0);
----squadra 1
INSERT INTO Punti VALUES ('Utente045',2,0);
INSERT INTO Punti VALUES ('Utente046',2,2);
INSERT INTO Punti VALUES ('Utente047',2,1);

--punti segnati durante evento003
----squadra 1
INSERT INTO Punti VALUES ('Utente048',3,2);
INSERT INTO Punti VALUES ('Utente049',3,3);
INSERT INTO Punti VALUES ('Utente050',3,0);
----squadra 1
INSERT INTO Punti VALUES ('Utente051',3,0);
INSERT INTO Punti VALUES ('Utente052',3,1);
INSERT INTO Punti VALUES ('Utente053',3,2);

--punti segnati durante evento004
----squadra 1
INSERT INTO Punti VALUES ('Utente054',4,1);
INSERT INTO Punti VALUES ('Utente055',4,2);
INSERT INTO Punti VALUES ('Utente056',4,0);
----squadra 1
INSERT INTO Punti VALUES ('Utente057',4,2);
INSERT INTO Punti VALUES ('Utente058',4,3);
INSERT INTO Punti VALUES ('Utente059',4,1);

--punti segnati durante evento005
----squadra 1
INSERT INTO Punti VALUES ('Utente060',5,1);
INSERT INTO Punti VALUES ('Utente061',5,1);
INSERT INTO Punti VALUES ('Utente062',5,0);
----squadra 1
INSERT INTO Punti VALUES ('Utente063',5,1);
INSERT INTO Punti VALUES ('Utente064',5,2);
INSERT INTO Punti VALUES ('Utente065',5,3);

--punti segnati durante evento006
----squadra 1
INSERT INTO Punti VALUES ('Utente066',6,1);
INSERT INTO Punti VALUES ('Utente067',6,3);
INSERT INTO Punti VALUES ('Utente068',6,3);
----squadra 1
INSERT INTO Punti VALUES ('Utente069',6,2);
INSERT INTO Punti VALUES ('Utente070',6,3);
INSERT INTO Punti VALUES ('Utente071',6,2);

--punti segnati durante evento007
----squadra 1
INSERT INTO Punti VALUES ('Utente072',7,2);
INSERT INTO Punti VALUES ('Utente073',7,2);
INSERT INTO Punti VALUES ('Utente074',7,1);
----squadra 1
INSERT INTO Punti VALUES ('Utente075',7,3);
INSERT INTO Punti VALUES ('Utente076',7,3);
INSERT INTO Punti VALUES ('Utente077',7,3);

--punti segnati durante evento008
----squadra 1
INSERT INTO Punti VALUES ('Utente078',8,1);
INSERT INTO Punti VALUES ('Utente079',8,1);
INSERT INTO Punti VALUES ('Utente080',8,3);
----squadra 1
INSERT INTO Punti VALUES ('Utente081',8,0);
INSERT INTO Punti VALUES ('Utente082',8,2);
INSERT INTO Punti VALUES ('Utente083',8,3);

--punti segnati durante evento009
----squadra 1
INSERT INTO Punti VALUES ('Utente084',9,0);
INSERT INTO Punti VALUES ('Utente085',9,0);
INSERT INTO Punti VALUES ('Utente086',9,0);
INSERT INTO Punti VALUES ('Utente087',9,3);
----squadra 1
INSERT INTO Punti VALUES ('Utente088',9,0);
INSERT INTO Punti VALUES ('Utente089',9,3);
INSERT INTO Punti VALUES ('Utente090',9,3);
INSERT INTO Punti VALUES ('Utente091',9,2);

--punti segnati durante evento010
----squadra 1
INSERT INTO Punti VALUES ('Utente092',10,3);
INSERT INTO Punti VALUES ('Utente093',10,3);
INSERT INTO Punti VALUES ('Utente094',10,1);
INSERT INTO Punti VALUES ('Utente095',10,0);
----squadra 1
INSERT INTO Punti VALUES ('Utente096',10,3);
INSERT INTO Punti VALUES ('Utente097',10,3);
INSERT INTO Punti VALUES ('Utente098',10,2);
INSERT INTO Punti VALUES ('Utente099',10,2);

--punti segnati durante evento011
----squadra 1
INSERT INTO Punti VALUES ('Utente100',11,3);
INSERT INTO Punti VALUES ('Utente101',11,0);
INSERT INTO Punti VALUES ('Utente102',11,2);
INSERT INTO Punti VALUES ('Utente103',11,0);
----squadra 1
INSERT INTO Punti VALUES ('Utente104',11,1);
INSERT INTO Punti VALUES ('Utente105',11,1);
INSERT INTO Punti VALUES ('Utente106',11,0);
INSERT INTO Punti VALUES ('Utente107',11,2);

--punti segnati durante evento012
----squadra 1
INSERT INTO Punti VALUES ('Utente108',12,2);
INSERT INTO Punti VALUES ('Utente109',12,1);
INSERT INTO Punti VALUES ('Utente110',12,0);
----squadra 1
INSERT INTO Punti VALUES ('Utente111',12,0);
INSERT INTO Punti VALUES ('Utente112',12,3);
INSERT INTO Punti VALUES ('Utente113',12,3);

--punti segnati durante evento013
----squadra 1
INSERT INTO Punti VALUES ('Utente114',13,3);
INSERT INTO Punti VALUES ('Utente115',13,2);
INSERT INTO Punti VALUES ('Utente116',13,1);
----squadra 1
INSERT INTO Punti VALUES ('Utente117',13,3);
INSERT INTO Punti VALUES ('Utente118',13,3);
INSERT INTO Punti VALUES ('Utente119',13,2);

--punti segnati durante evento014
----squadra 1
INSERT INTO Punti VALUES ('Utente120',14,1);
INSERT INTO Punti VALUES ('Utente121',14,2);
INSERT INTO Punti VALUES ('Utente122',14,0);
----squadra 1
INSERT INTO Punti VALUES ('Utente123',14,3);
INSERT INTO Punti VALUES ('Utente124',14,1);
INSERT INTO Punti VALUES ('Utente125',14,1);

--punti segnati durante evento015
----squadra 1
INSERT INTO Punti VALUES ('Utente126',15,3);
INSERT INTO Punti VALUES ('Utente127',15,2);
INSERT INTO Punti VALUES ('Utente128',15,3);
----squadra 1
INSERT INTO Punti VALUES ('Utente129',15,1);
INSERT INTO Punti VALUES ('Utente130',15,0);
INSERT INTO Punti VALUES ('Utente131',15,3);

--punti segnati durante evento019
----squadra 1
INSERT INTO Punti VALUES ('Utente132',19,0);
INSERT INTO Punti VALUES ('Utente133',19,3);
INSERT INTO Punti VALUES ('Utente134',19,3);
INSERT INTO Punti VALUES ('Utente135',19,2);
----squadra 1
INSERT INTO Punti VALUES ('Utente136',19,0);
INSERT INTO Punti VALUES ('Utente137',19,3);
INSERT INTO Punti VALUES ('Utente138',19,1);
INSERT INTO Punti VALUES ('Utente139',19,1);

--punti segnati durante evento020
----squadra 1
INSERT INTO Punti VALUES ('Utente140',20,0);
INSERT INTO Punti VALUES ('Utente141',20,1);
INSERT INTO Punti VALUES ('Utente142',20,3);
INSERT INTO Punti VALUES ('Utente143',20,1);
----squadra 1
INSERT INTO Punti VALUES ('Utente144',20,2);
INSERT INTO Punti VALUES ('Utente145',20,2);
INSERT INTO Punti VALUES ('Utente146',20,3);
INSERT INTO Punti VALUES ('Utente147',20,2);

--punti segnati durante evento021
----squadra 1
INSERT INTO Punti VALUES ('Utente148',21,0);
INSERT INTO Punti VALUES ('Utente149',21,0);
INSERT INTO Punti VALUES ('Utente150',21,1);
INSERT INTO Punti VALUES ('Utente151',21,1);
----squadra 1
INSERT INTO Punti VALUES ('Utente152',21,0);
INSERT INTO Punti VALUES ('Utente153',21,3);
INSERT INTO Punti VALUES ('Utente154',21,0);
INSERT INTO Punti VALUES ('Utente155',21,2);

--punti segnati durante evento022
----squadra 1
INSERT INTO Punti VALUES ('Utente156',22,3);
INSERT INTO Punti VALUES ('Utente157',22,0);
INSERT INTO Punti VALUES ('Utente158',22,1);
INSERT INTO Punti VALUES ('Utente159',22,0);
----squadra 1
INSERT INTO Punti VALUES ('Utente160',22,0);
INSERT INTO Punti VALUES ('Utente161',22,1);
INSERT INTO Punti VALUES ('Utente162',22,0);
INSERT INTO Punti VALUES ('Utente163',22,1);

--punti segnati durante evento026
----squadra 1
INSERT INTO Punti VALUES ('Utente164',26,2);
INSERT INTO Punti VALUES ('Utente165',26,0);
INSERT INTO Punti VALUES ('Utente166',26,0);
----squadra 1
INSERT INTO Punti VALUES ('Utente167',26,1);
INSERT INTO Punti VALUES ('Utente168',26,2);
INSERT INTO Punti VALUES ('Utente169',26,2);

--punti segnati durante evento027
----squadra 1
INSERT INTO Punti VALUES ('Utente170',27,0);
INSERT INTO Punti VALUES ('Utente171',27,3);
INSERT INTO Punti VALUES ('Utente172',27,3);
----squadra 1
INSERT INTO Punti VALUES ('Utente173',27,0);
INSERT INTO Punti VALUES ('Utente174',27,1);
INSERT INTO Punti VALUES ('Utente175',27,1);

--punti segnati durante evento028
----squadra 1
INSERT INTO Punti VALUES ('Utente176',28,2);
INSERT INTO Punti VALUES ('Utente177',28,0);
INSERT INTO Punti VALUES ('Utente178',28,1);
----squadra 1
INSERT INTO Punti VALUES ('Utente179',28,1);
INSERT INTO Punti VALUES ('Utente180',28,1);
INSERT INTO Punti VALUES ('Utente181',28,2);

--punti segnati durante evento029
----squadra 1
INSERT INTO Punti VALUES ('Utente182',29,2);
INSERT INTO Punti VALUES ('Utente183',29,1);
INSERT INTO Punti VALUES ('Utente184',29,1);
----squadra 1
INSERT INTO Punti VALUES ('Utente185',29,2);
INSERT INTO Punti VALUES ('Utente186',29,1);
INSERT INTO Punti VALUES ('Utente187',29,2);

--punti segnati durante evento033
----squadra 1
INSERT INTO Punti VALUES ('Utente188',33,3);
INSERT INTO Punti VALUES ('Utente189',33,1);
INSERT INTO Punti VALUES ('Utente190',33,2);
INSERT INTO Punti VALUES ('Utente191',33,3);
----squadra 1
INSERT INTO Punti VALUES ('Utente192',33,0);
INSERT INTO Punti VALUES ('Utente193',33,0);
INSERT INTO Punti VALUES ('Utente194',33,2);
INSERT INTO Punti VALUES ('Utente195',33,1);

--punti segnati durante evento034
----squadra 1
INSERT INTO Punti VALUES ('Utente196',34,3);
INSERT INTO Punti VALUES ('Utente197',34,1);
INSERT INTO Punti VALUES ('Utente198',34,1);
INSERT INTO Punti VALUES ('Utente199',34,3);
----squadra 1
INSERT INTO Punti VALUES ('Utente200',34,0);
INSERT INTO Punti VALUES ('Utente201',34,2);
INSERT INTO Punti VALUES ('Utente202',34,2);
INSERT INTO Punti VALUES ('Utente203',34,0);

--punti segnati durante evento035
----squadra 1
INSERT INTO Punti VALUES ('Utente204',35,3);
INSERT INTO Punti VALUES ('Utente205',35,1);
INSERT INTO Punti VALUES ('Utente206',35,3);
INSERT INTO Punti VALUES ('Utente207',35,1);
----squadra 1
INSERT INTO Punti VALUES ('Utente208',35,2);
INSERT INTO Punti VALUES ('Utente209',35,3);
INSERT INTO Punti VALUES ('Utente210',35,3);
INSERT INTO Punti VALUES ('Utente211',35,2);

--punti segnati durante evento036
----squadra 1
INSERT INTO Punti VALUES ('Utente212',36,3);
INSERT INTO Punti VALUES ('Utente213',36,0);
INSERT INTO Punti VALUES ('Utente214',36,3);
INSERT INTO Punti VALUES ('Utente215',36,2);
----squadra 1
INSERT INTO Punti VALUES ('Utente216',36,2);
INSERT INTO Punti VALUES ('Utente217',36,3);
INSERT INTO Punti VALUES ('Utente218',36,3);
INSERT INTO Punti VALUES ('Utente219',36,0);

--punti segnati durante evento040
----squadra 1
INSERT INTO Punti VALUES ('Utente220',40,1);
INSERT INTO Punti VALUES ('Utente221',40,3);
INSERT INTO Punti VALUES ('Utente222',40,4);
----squadra 1
INSERT INTO Punti VALUES ('Utente223',40,3);
INSERT INTO Punti VALUES ('Utente224',40,2);
INSERT INTO Punti VALUES ('Utente225',40,3);

--punti segnati durante evento041
----squadra 1
INSERT INTO Punti VALUES ('Utente226',41,2);
INSERT INTO Punti VALUES ('Utente227',41,0);
INSERT INTO Punti VALUES ('Utente228',41,0);
----squadra 1
INSERT INTO Punti VALUES ('Utente229',41,1);
INSERT INTO Punti VALUES ('Utente230',41,0);
INSERT INTO Punti VALUES ('Utente231',41,2);

--punti segnati durante evento042
----squadra 1
INSERT INTO Punti VALUES ('Utente232',42,2);
INSERT INTO Punti VALUES ('Utente233',42,3);
INSERT INTO Punti VALUES ('Utente234',42,3);
----squadra 1
INSERT INTO Punti VALUES ('Utente235',42,2);
INSERT INTO Punti VALUES ('Utente236',42,2);
INSERT INTO Punti VALUES ('Utente237',42,2);

--punti segnati durante evento043
----squadra 1
INSERT INTO Punti VALUES ('Utente238',43,2);
INSERT INTO Punti VALUES ('Utente239',43,2);
INSERT INTO Punti VALUES ('Utente240',43,3);
----squadra 1
INSERT INTO Punti VALUES ('Utente241',43,1);
INSERT INTO Punti VALUES ('Utente242',43,3);
INSERT INTO Punti VALUES ('Utente243',43,2);

--punti segnati durante evento047
----squadra 1
INSERT INTO Punti VALUES ('Utente244',47,0);
INSERT INTO Punti VALUES ('Utente245',47,3);
INSERT INTO Punti VALUES ('Utente246',47,2);
INSERT INTO Punti VALUES ('Utente247',47,2);
----squadra 1
INSERT INTO Punti VALUES ('Utente248',47,0);
INSERT INTO Punti VALUES ('Utente249',47,0);
INSERT INTO Punti VALUES ('Utente250',47,3);
INSERT INTO Punti VALUES ('Utente251',47,1);

--punti segnati durante evento048
----squadra 1
INSERT INTO Punti VALUES ('Utente252',48,2);
INSERT INTO Punti VALUES ('Utente253',48,0);
INSERT INTO Punti VALUES ('Utente254',48,1);
INSERT INTO Punti VALUES ('Utente255',48,2);
----squadra 1
INSERT INTO Punti VALUES ('Utente256',48,1);
INSERT INTO Punti VALUES ('Utente257',48,1);
INSERT INTO Punti VALUES ('Utente258',48,0);
INSERT INTO Punti VALUES ('Utente259',48,1);

--punti segnati durante evento049
----squadra 1
INSERT INTO Punti VALUES ('Utente260',49,1);
INSERT INTO Punti VALUES ('Utente261',49,0);
INSERT INTO Punti VALUES ('Utente262',49,0);
INSERT INTO Punti VALUES ('Utente263',49,0);
----squadra 1
INSERT INTO Punti VALUES ('Utente264',49,2);
INSERT INTO Punti VALUES ('Utente265',49,2);
INSERT INTO Punti VALUES ('Utente266',49,3);
INSERT INTO Punti VALUES ('Utente267',49,2);

--punti segnati durante evento050
----squadra 1
INSERT INTO Punti VALUES ('Utente268',50,2);
INSERT INTO Punti VALUES ('Utente269',50,3);
INSERT INTO Punti VALUES ('Utente270',50,3);
INSERT INTO Punti VALUES ('Utente271',50,0);
----squadra 1
INSERT INTO Punti VALUES ('Utente272',50,3);
INSERT INTO Punti VALUES ('Utente273',50,2);
INSERT INTO Punti VALUES ('Utente274',50,0);
INSERT INTO Punti VALUES ('Utente275',50,1);

--punti segnati durante evento054
----squadra 1
INSERT INTO Punti VALUES ('Utente276',54,0);
INSERT INTO Punti VALUES ('Utente277',54,0);
INSERT INTO Punti VALUES ('Utente278',54,1);
----squadra 1
INSERT INTO Punti VALUES ('Utente279',54,0);
INSERT INTO Punti VALUES ('Utente280',54,3);
INSERT INTO Punti VALUES ('Utente281',54,2);

--punti segnati durante evento055
----squadra 1
INSERT INTO Punti VALUES ('Utente282',55,3);
INSERT INTO Punti VALUES ('Utente283',55,1);
INSERT INTO Punti VALUES ('Utente284',55,3);
----squadra 1
INSERT INTO Punti VALUES ('Utente285',55,0);
INSERT INTO Punti VALUES ('Utente286',55,1);
INSERT INTO Punti VALUES ('Utente287',55,0);

--punti segnati durante evento056
----squadra 1
INSERT INTO Punti VALUES ('Utente288',56,3);
INSERT INTO Punti VALUES ('Utente289',56,2);
INSERT INTO Punti VALUES ('Utente290',56,3);
----squadra 1
INSERT INTO Punti VALUES ('Utente291',56,3);
INSERT INTO Punti VALUES ('Utente292',56,0);
INSERT INTO Punti VALUES ('Utente293',56,1);

--punti segnati durante evento057
----squadra 1
INSERT INTO Punti VALUES ('Utente294',57,2);
INSERT INTO Punti VALUES ('Utente295',57,2);
INSERT INTO Punti VALUES ('Utente296',57,3);
----squadra 1
INSERT INTO Punti VALUES ('Utente297',57,3);
INSERT INTO Punti VALUES ('Utente298',57,0);
INSERT INTO Punti VALUES ('Utente299',57,3);

--punti segnati durante evento058
----squadra 1
INSERT INTO Punti VALUES ('Utente300',58,0);
INSERT INTO Punti VALUES ('Utente301',58,3);
INSERT INTO Punti VALUES ('Utente302',58,2);
----squadra 1
INSERT INTO Punti VALUES ('Utente303',58,1);
INSERT INTO Punti VALUES ('Utente304',58,0);
INSERT INTO Punti VALUES ('Utente305',58,1);

--punti segnati durante evento059
----squadra 1
INSERT INTO Punti VALUES ('Utente306',59,1);
INSERT INTO Punti VALUES ('Utente307',59,2);
INSERT INTO Punti VALUES ('Utente308',59,2);
----squadra 1
INSERT INTO Punti VALUES ('Utente309',59,2);
INSERT INTO Punti VALUES ('Utente310',59,1);
INSERT INTO Punti VALUES ('Utente311',59,1);

--punti segnati durante evento060
----squadra 1
INSERT INTO Punti VALUES ('Utente312',60,0);
INSERT INTO Punti VALUES ('Utente313',60,3);
INSERT INTO Punti VALUES ('Utente314',60,1);
----squadra 1
INSERT INTO Punti VALUES ('Utente315',60,0);
INSERT INTO Punti VALUES ('Utente316',60,1);
INSERT INTO Punti VALUES ('Utente317',60,0);

--punti segnati durante evento061
----squadra 1
INSERT INTO Punti VALUES ('Utente318',61,1);
INSERT INTO Punti VALUES ('Utente319',61,8);
INSERT INTO Punti VALUES ('Utente320',61,2);
----squadra 1
INSERT INTO Punti VALUES ('Utente321',61,0);
INSERT INTO Punti VALUES ('Utente322',61,2);
INSERT INTO Punti VALUES ('Utente323',61,3);

--punti segnati durante evento062
----squadra 1
INSERT INTO Punti VALUES ('Utente324',62,1);
INSERT INTO Punti VALUES ('Utente325',62,0);
INSERT INTO Punti VALUES ('Utente326',62,1);
----squadra 1
INSERT INTO Punti VALUES ('Utente327',62,3);
INSERT INTO Punti VALUES ('Utente328',62,2);
INSERT INTO Punti VALUES ('Utente329',62,0);

--punti segnati durante evento063
----squadra 1
INSERT INTO Punti VALUES ('Utente330',63,2);
INSERT INTO Punti VALUES ('Utente331',63,3);
INSERT INTO Punti VALUES ('Utente332',63,3);
----squadra 1
INSERT INTO Punti VALUES ('Utente333',63,3);
INSERT INTO Punti VALUES ('Utente334',63,0);
INSERT INTO Punti VALUES ('Utente335',63,0);
--punti segnati durante evento064
INSERT INTO Punti VALUES ('Utente336',64,3);
INSERT INTO Punti VALUES ('Utente337',64,1);
--punti segnati durante evento065
INSERT INTO Punti VALUES ('Utente338',65,3);
INSERT INTO Punti VALUES ('Utente339',65,2);
--punti segnati durante evento066
INSERT INTO Punti VALUES ('Utente340',66,1);
INSERT INTO Punti VALUES ('Utente341',66,1);
--punti segnati durante evento067
INSERT INTO Punti VALUES ('Utente342',67,7);
INSERT INTO Punti VALUES ('Utente343',67,1);
--punti segnati durante evento071
INSERT INTO Punti VALUES ('Utente344',71,3);
INSERT INTO Punti VALUES ('Utente345',71,0);
--punti segnati durante evento072
INSERT INTO Punti VALUES ('Utente346',72,0);
INSERT INTO Punti VALUES ('Utente347',72,0);
--punti segnati durante evento073
INSERT INTO Punti VALUES ('Utente348',73,3);
INSERT INTO Punti VALUES ('Utente349',73,0);
--punti segnati durante evento074
INSERT INTO Punti VALUES ('Utente350',74,2);
INSERT INTO Punti VALUES ('Utente351',74,3);
--punti segnati durante evento075
INSERT INTO Punti VALUES ('Utente352',75,0);
INSERT INTO Punti VALUES ('Utente353',75,3);
--punti segnati durante evento076
INSERT INTO Punti VALUES ('Utente354',76,2);
INSERT INTO Punti VALUES ('Utente355',76,2);
--punti segnati durante evento077
INSERT INTO Punti VALUES ('Utente356',77,2);
INSERT INTO Punti VALUES ('Utente357',77,3);
--punti segnati durante evento078
INSERT INTO Punti VALUES ('Utente358',78,0);
INSERT INTO Punti VALUES ('Utente359',78,3);
--punti segnati durante evento079
INSERT INTO Punti VALUES ('Utente360',79,0);
INSERT INTO Punti VALUES ('Utente361',79,2);
--punti segnati durante evento080
INSERT INTO Punti VALUES ('Utente362',80,2);
INSERT INTO Punti VALUES ('Utente363',80,1);
--punti segnati durante evento084
INSERT INTO Punti VALUES ('Utente364',84,3);
INSERT INTO Punti VALUES ('Utente365',84,2);
--punti segnati durante evento085
INSERT INTO Punti VALUES ('Utente366',85,1);
INSERT INTO Punti VALUES ('Utente367',85,1);
--punti segnati durante evento086
INSERT INTO Punti VALUES ('Utente368',86,3);
INSERT INTO Punti VALUES ('Utente369',86,1);
--punti segnati durante evento087
INSERT INTO Punti VALUES ('Utente370',87,0);
INSERT INTO Punti VALUES ('Utente371',87,3);
--punti segnati durante evento091
INSERT INTO Punti VALUES ('Utente372',91,2);
INSERT INTO Punti VALUES ('Utente373',91,2);
--punti segnati durante evento092
INSERT INTO Punti VALUES ('Utente374',92,1);
INSERT INTO Punti VALUES ('Utente375',92,3);
--punti segnati durante evento093
INSERT INTO Punti VALUES ('Utente376',93,3);
INSERT INTO Punti VALUES ('Utente377',93,0);
--punti segnati durante evento094
INSERT INTO Punti VALUES ('Utente378',94,3);
INSERT INTO Punti VALUES ('Utente379',94,0);
--punti segnati durante evento098
INSERT INTO Punti VALUES ('Utente380',98,0);
INSERT INTO Punti VALUES ('Utente381',98,3);
--punti segnati durante evento099
INSERT INTO Punti VALUES ('Utente382',99,3);
INSERT INTO Punti VALUES ('Utente383',99,2);
--punti segnati durante evento100
INSERT INTO Punti VALUES ('Utente384',100,0);
INSERT INTO Punti VALUES ('Utente385',100,2);
--punti segnati durante evento101
INSERT INTO Punti VALUES ('Utente386',101,3);
INSERT INTO Punti VALUES ('Utente387',101,0);
--punti segnati durante evento102
INSERT INTO Punti VALUES ('Utente388',102,5);
INSERT INTO Punti VALUES ('Utente389',102,1);
--punti segnati durante evento103
INSERT INTO Punti VALUES ('Utente390',103,0);
INSERT INTO Punti VALUES ('Utente391',103,0);
--punti segnati durante evento104
INSERT INTO Punti VALUES ('Utente392',104,2);
INSERT INTO Punti VALUES ('Utente393',104,0);
--punti segnati durante evento105
INSERT INTO Punti VALUES ('Utente394',105,2);
INSERT INTO Punti VALUES ('Utente395',105,1);
--punti segnati durante evento106
INSERT INTO Punti VALUES ('Utente396',106,3);
INSERT INTO Punti VALUES ('Utente397',106,0);
--punti segnati durante evento107
INSERT INTO Punti VALUES ('Utente398',107,1);
INSERT INTO Punti VALUES ('Utente399',107,0);


--valutazione utenti per evento evento000
INSERT INTO Valuta VALUES ('Utente030',0,'Utente030','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente031',0,'Utente033','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente032',0,'Utente032','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente033',0,'Utente030','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente034',0,'Utente030','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente035',0,'Utente032','2023-12-25 9:10',NULL,6);
--valutazione utenti per evento evento001
INSERT INTO Valuta VALUES ('Utente036',1,'Utente040','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente037',1,'Utente041','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente038',1,'Utente040','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente039',1,'Utente041','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente040',1,'Utente040','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente041',1,'Utente041','2023-12-25 9:10',NULL,7);
--valutazione utenti per evento evento002
INSERT INTO Valuta VALUES ('Utente042',2,'Utente043','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente043',2,'Utente045','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente044',2,'Utente046','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente045',2,'Utente047','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente046',2,'Utente046','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente047',2,'Utente046','2023-12-25 9:10',NULL,5);
--valutazione utenti per evento evento003
INSERT INTO Valuta VALUES ('Utente048',3,'Utente052','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente049',3,'Utente048','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente050',3,'Utente053','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente051',3,'Utente048','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente052',3,'Utente049','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente053',3,'Utente053','2023-12-25 9:10',NULL,4);
--valutazione utenti per evento evento004
INSERT INTO Valuta VALUES ('Utente054',4,'Utente059','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente055',4,'Utente054','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente056',4,'Utente056','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente057',4,'Utente055','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente058',4,'Utente058','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente059',4,'Utente059','2023-12-25 9:10',NULL,6);
--valutazione utenti per evento evento005
INSERT INTO Valuta VALUES ('Utente060',5,'Utente063','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente061',5,'Utente062','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente062',5,'Utente065','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente063',5,'Utente060','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente064',5,'Utente065','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente065',5,'Utente061','2023-12-25 9:10',NULL,8);
--valutazione utenti per evento evento006
INSERT INTO Valuta VALUES ('Utente066',6,'Utente066','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente067',6,'Utente068','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente068',6,'Utente069','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente069',6,'Utente068','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente070',6,'Utente067','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente071',6,'Utente067','2023-12-25 9:10',NULL,7);
--valutazione utenti per evento evento007
INSERT INTO Valuta VALUES ('Utente072',7,'Utente075','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente073',7,'Utente075','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente074',7,'Utente073','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente075',7,'Utente074','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente076',7,'Utente073','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente077',7,'Utente076','2023-12-25 9:10',NULL,7);
--valutazione utenti per evento evento008
INSERT INTO Valuta VALUES ('Utente078',8,'Utente078','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente079',8,'Utente078','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente080',8,'Utente080','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente081',8,'Utente080','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente082',8,'Utente082','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente083',8,'Utente079','2023-12-25 9:10',NULL,2);
--valutazione utenti per evento evento009
INSERT INTO Valuta VALUES ('Utente084',9,'Utente088','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente085',9,'Utente089','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente086',9,'Utente085','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente087',9,'Utente084','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente088',9,'Utente085','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente089',9,'Utente084','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente090',9,'Utente091','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente091',9,'Utente089','2023-12-25 9:10',NULL,9);
--valutazione utenti per evento evento010
INSERT INTO Valuta VALUES ('Utente092',10,'Utente095','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente093',10,'Utente094','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente094',10,'Utente093','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente095',10,'Utente093','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente096',10,'Utente099','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente097',10,'Utente096','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente098',10,'Utente098','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente099',10,'Utente095','2023-12-25 9:10',NULL,2);
--valutazione utenti per evento evento011
INSERT INTO Valuta VALUES ('Utente100',11,'Utente103','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente101',11,'Utente103','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente102',11,'Utente102','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente103',11,'Utente100','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente104',11,'Utente103','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente105',11,'Utente107','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente106',11,'Utente105','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente107',11,'Utente105','2023-12-25 9:10',NULL,5);
--valutazione utenti per evento evento012
INSERT INTO Valuta VALUES ('Utente108',12,'Utente110','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente109',12,'Utente112','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente110',12,'Utente109','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente111',12,'Utente109','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente112',12,'Utente111','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente113',12,'Utente110','2023-12-25 9:10',NULL,7);
--valutazione utenti per evento evento013
INSERT INTO Valuta VALUES ('Utente114',13,'Utente116','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente115',13,'Utente118','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente116',13,'Utente114','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente117',13,'Utente119','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente118',13,'Utente117','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente119',13,'Utente118','2023-12-25 9:10',NULL,8);
--valutazione utenti per evento evento014
INSERT INTO Valuta VALUES ('Utente120',14,'Utente125','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente121',14,'Utente125','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente122',14,'Utente124','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente123',14,'Utente124','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente124',14,'Utente125','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente125',14,'Utente125','2023-12-25 9:10',NULL,3);
--valutazione utenti per evento evento015
INSERT INTO Valuta VALUES ('Utente126',15,'Utente130','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente127',15,'Utente128','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente128',15,'Utente129','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente129',15,'Utente129','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente130',15,'Utente126','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente131',15,'Utente128','2023-12-25 9:10',NULL,1);
--valutazione utenti per evento evento019
INSERT INTO Valuta VALUES ('Utente132',19,'Utente134','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente133',19,'Utente136','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente134',19,'Utente133','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente135',19,'Utente132','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente136',19,'Utente133','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente137',19,'Utente137','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente138',19,'Utente138','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente139',19,'Utente138','2023-12-25 9:10',NULL,1);
--valutazione utenti per evento evento020
INSERT INTO Valuta VALUES ('Utente140',20,'Utente141','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente141',20,'Utente144','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente142',20,'Utente143','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente143',20,'Utente142','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente144',20,'Utente144','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente145',20,'Utente144','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente146',20,'Utente147','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente147',20,'Utente142','2023-12-25 9:10',NULL,1);
--valutazione utenti per evento evento021
INSERT INTO Valuta VALUES ('Utente148',21,'Utente154','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente149',21,'Utente149','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente150',21,'Utente155','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente151',21,'Utente148','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente152',21,'Utente155','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente153',21,'Utente151','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente154',21,'Utente148','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente155',21,'Utente150','2023-12-25 9:10',NULL,6);
--valutazione utenti per evento evento022
INSERT INTO Valuta VALUES ('Utente156',22,'Utente163','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente157',22,'Utente159','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente158',22,'Utente162','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente159',22,'Utente163','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente160',22,'Utente162','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente161',22,'Utente159','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente162',22,'Utente161','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente163',22,'Utente160','2023-12-25 9:10',NULL,5);
--valutazione utenti per evento evento026
INSERT INTO Valuta VALUES ('Utente164',26,'Utente165','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente165',26,'Utente164','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente166',26,'Utente169','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente167',26,'Utente165','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente168',26,'Utente167','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente169',26,'Utente164','2023-12-25 9:10',NULL,8);
--valutazione utenti per evento evento027
INSERT INTO Valuta VALUES ('Utente170',27,'Utente171','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente171',27,'Utente172','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente172',27,'Utente171','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente173',27,'Utente173','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente174',27,'Utente172','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente175',27,'Utente175','2023-12-25 9:10',NULL,4);
--valutazione utenti per evento evento028
INSERT INTO Valuta VALUES ('Utente176',28,'Utente180','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente177',28,'Utente180','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente178',28,'Utente179','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente179',28,'Utente181','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente180',28,'Utente181','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente181',28,'Utente179','2023-12-25 9:10',NULL,3);
--valutazione utenti per evento evento029
INSERT INTO Valuta VALUES ('Utente182',29,'Utente185','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente183',29,'Utente186','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente184',29,'Utente183','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente185',29,'Utente186','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente186',29,'Utente186','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente187',29,'Utente184','2023-12-25 9:10',NULL,7);
--valutazione utenti per evento evento033
INSERT INTO Valuta VALUES ('Utente188',33,'Utente194','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente189',33,'Utente189','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente190',33,'Utente188','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente191',33,'Utente195','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente192',33,'Utente189','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente193',33,'Utente193','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente194',33,'Utente193','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente195',33,'Utente195','2023-12-25 9:10',NULL,4);
--valutazione utenti per evento evento034
INSERT INTO Valuta VALUES ('Utente196',34,'Utente197','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente197',34,'Utente199','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente198',34,'Utente202','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente199',34,'Utente199','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente200',34,'Utente196','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente201',34,'Utente199','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente202',34,'Utente200','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente203',34,'Utente201','2023-12-25 9:10',NULL,4);
--valutazione utenti per evento evento035
INSERT INTO Valuta VALUES ('Utente204',35,'Utente205','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente205',35,'Utente207','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente206',35,'Utente210','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente207',35,'Utente211','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente208',35,'Utente204','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente209',35,'Utente204','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente210',35,'Utente204','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente211',35,'Utente209','2023-12-25 9:10',NULL,4);
--valutazione utenti per evento evento036
INSERT INTO Valuta VALUES ('Utente212',36,'Utente214','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente213',36,'Utente214','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente214',36,'Utente215','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente215',36,'Utente219','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente216',36,'Utente213','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente217',36,'Utente215','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente218',36,'Utente212','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente219',36,'Utente218','2023-12-25 9:10',NULL,2);
--valutazione utenti per evento evento040
INSERT INTO Valuta VALUES ('Utente220',40,'Utente225','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente221',40,'Utente223','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente222',40,'Utente224','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente223',40,'Utente225','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente224',40,'Utente221','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente225',40,'Utente223','2023-12-25 9:10',NULL,8);
--valutazione utenti per evento evento041
INSERT INTO Valuta VALUES ('Utente226',41,'Utente228','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente227',41,'Utente228','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente228',41,'Utente231','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente229',41,'Utente226','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente230',41,'Utente226','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente231',41,'Utente230','2023-12-25 9:10',NULL,5);
--valutazione utenti per evento evento042
INSERT INTO Valuta VALUES ('Utente232',42,'Utente237','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente233',42,'Utente237','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente234',42,'Utente234','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente235',42,'Utente237','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente236',42,'Utente236','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente237',42,'Utente234','2023-12-25 9:10',NULL,9);
--valutazione utenti per evento evento043
INSERT INTO Valuta VALUES ('Utente238',43,'Utente240','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente239',43,'Utente241','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente240',43,'Utente239','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente241',43,'Utente242','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente242',43,'Utente243','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente243',43,'Utente243','2023-12-25 9:10',NULL,9);
--valutazione utenti per evento evento047
INSERT INTO Valuta VALUES ('Utente244',47,'Utente250','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente245',47,'Utente248','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente246',47,'Utente246','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente247',47,'Utente248','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente248',47,'Utente247','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente249',47,'Utente248','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente250',47,'Utente251','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente251',47,'Utente250','2023-12-25 9:10',NULL,3);
--valutazione utenti per evento evento048
INSERT INTO Valuta VALUES ('Utente252',48,'Utente258','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente253',48,'Utente259','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente254',48,'Utente252','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente255',48,'Utente252','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente256',48,'Utente258','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente257',48,'Utente259','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente258',48,'Utente253','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente259',48,'Utente252','2023-12-25 9:10',NULL,2);
--valutazione utenti per evento evento049
INSERT INTO Valuta VALUES ('Utente260',49,'Utente263','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente261',49,'Utente266','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente262',49,'Utente262','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente263',49,'Utente263','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente264',49,'Utente260','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente265',49,'Utente262','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente266',49,'Utente267','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente267',49,'Utente266','2023-12-25 9:10',NULL,6);
--valutazione utenti per evento evento050
INSERT INTO Valuta VALUES ('Utente268',50,'Utente271','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente269',50,'Utente271','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente270',50,'Utente275','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente271',50,'Utente272','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente272',50,'Utente275','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente273',50,'Utente268','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente274',50,'Utente269','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente275',50,'Utente268','2023-12-25 9:10',NULL,4);
--valutazione utenti per evento evento054
INSERT INTO Valuta VALUES ('Utente276',54,'Utente278','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente277',54,'Utente279','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente278',54,'Utente279','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente279',54,'Utente280','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente280',54,'Utente276','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente281',54,'Utente280','2023-12-25 9:10',NULL,7);
--valutazione utenti per evento evento055
INSERT INTO Valuta VALUES ('Utente282',55,'Utente286','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente283',55,'Utente282','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente284',55,'Utente286','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente285',55,'Utente282','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente286',55,'Utente284','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente287',55,'Utente287','2023-12-25 9:10',NULL,3);
--valutazione utenti per evento evento056
INSERT INTO Valuta VALUES ('Utente288',56,'Utente288','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente289',56,'Utente292','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente290',56,'Utente293','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente291',56,'Utente288','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente292',56,'Utente291','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente293',56,'Utente292','2023-12-25 9:10',NULL,7);
--valutazione utenti per evento evento057
INSERT INTO Valuta VALUES ('Utente294',57,'Utente297','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente295',57,'Utente297','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente296',57,'Utente298','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente297',57,'Utente298','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente298',57,'Utente296','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente299',57,'Utente295','2023-12-25 9:10',NULL,7);
--valutazione utenti per evento evento058
INSERT INTO Valuta VALUES ('Utente300',58,'Utente301','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente301',58,'Utente300','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente302',58,'Utente305','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente303',58,'Utente305','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente304',58,'Utente305','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente305',58,'Utente300','2023-12-25 9:10',NULL,6);
--valutazione utenti per evento evento059
INSERT INTO Valuta VALUES ('Utente306',59,'Utente309','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente307',59,'Utente307','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente308',59,'Utente307','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente309',59,'Utente307','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente310',59,'Utente308','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente311',59,'Utente311','2023-12-25 9:10',NULL,8);
--valutazione utenti per evento evento060
INSERT INTO Valuta VALUES ('Utente312',60,'Utente316','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente313',60,'Utente317','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente314',60,'Utente314','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente315',60,'Utente313','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente316',60,'Utente317','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente317',60,'Utente313','2023-12-25 9:10',NULL,6);
--valutazione utenti per evento evento061
INSERT INTO Valuta VALUES ('Utente318',61,'Utente321','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente319',61,'Utente323','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente320',61,'Utente323','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente321',61,'Utente320','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente322',61,'Utente322','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente323',61,'Utente319','2023-12-25 9:10',NULL,9);
--valutazione utenti per evento evento062
INSERT INTO Valuta VALUES ('Utente324',62,'Utente326','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente325',62,'Utente327','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente326',62,'Utente327','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente327',62,'Utente324','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente328',62,'Utente325','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente329',62,'Utente327','2023-12-25 9:10',NULL,3);
--valutazione utenti per evento evento063
INSERT INTO Valuta VALUES ('Utente330',63,'Utente333','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente331',63,'Utente332','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente332',63,'Utente332','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente333',63,'Utente334','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente334',63,'Utente332','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente335',63,'Utente334','2023-12-25 9:10',NULL,6);
--valutazione utenti per evento evento064
INSERT INTO Valuta VALUES ('Utente336',64,'Utente337','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente337',64,'Utente336','2023-12-25 9:10',NULL,9);
--valutazione utenti per evento evento065
INSERT INTO Valuta VALUES ('Utente338',65,'Utente339','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente339',65,'Utente338','2023-12-25 9:10',NULL,5);
--valutazione utenti per evento evento066
INSERT INTO Valuta VALUES ('Utente340',66,'Utente341','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente341',66,'Utente340','2023-12-25 9:10',NULL,9);
--valutazione utenti per evento evento067
INSERT INTO Valuta VALUES ('Utente342',67,'Utente343','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente343',67,'Utente342','2023-12-25 9:10',NULL,1);
--valutazione utenti per evento evento071
INSERT INTO Valuta VALUES ('Utente344',71,'Utente345','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente345',71,'Utente344','2023-12-25 9:10',NULL,8);
--valutazione utenti per evento evento072
INSERT INTO Valuta VALUES ('Utente346',72,'Utente347','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente347',72,'Utente346','2023-12-25 9:10',NULL,4);
--valutazione utenti per evento evento073
INSERT INTO Valuta VALUES ('Utente348',73,'Utente349','2023-12-25 9:10',NULL,6);
INSERT INTO Valuta VALUES ('Utente349',73,'Utente348','2023-12-25 9:10',NULL,9);
--valutazione utenti per evento evento074
INSERT INTO Valuta VALUES ('Utente350',74,'Utente351','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente351',74,'Utente350','2023-12-25 9:10',NULL,4);
--valutazione utenti per evento evento075
INSERT INTO Valuta VALUES ('Utente352',75,'Utente353','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente353',75,'Utente352','2023-12-25 9:10',NULL,5);
--valutazione utenti per evento evento076
INSERT INTO Valuta VALUES ('Utente354',76,'Utente355','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente355',76,'Utente354','2023-12-25 9:10',NULL,5);
--valutazione utenti per evento evento077
INSERT INTO Valuta VALUES ('Utente356',77,'Utente357','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente357',77,'Utente356','2023-12-25 9:10',NULL,7);
--valutazione utenti per evento evento078
INSERT INTO Valuta VALUES ('Utente358',78,'Utente359','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente359',78,'Utente358','2023-12-25 9:10',NULL,5);
--valutazione utenti per evento evento079
INSERT INTO Valuta VALUES ('Utente360',79,'Utente361','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente361',79,'Utente360','2023-12-25 9:10',NULL,9);
--valutazione utenti per evento evento080
INSERT INTO Valuta VALUES ('Utente362',80,'Utente363','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente363',80,'Utente362','2023-12-25 9:10',NULL,9);
--valutazione utenti per evento evento084
INSERT INTO Valuta VALUES ('Utente364',84,'Utente365','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente365',84,'Utente364','2023-12-25 9:10',NULL,2);
--valutazione utenti per evento evento085
INSERT INTO Valuta VALUES ('Utente366',85,'Utente367','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente367',85,'Utente366','2023-12-25 9:10',NULL,6);
--valutazione utenti per evento evento086
INSERT INTO Valuta VALUES ('Utente368',86,'Utente369','2023-12-25 9:10',NULL,1);
INSERT INTO Valuta VALUES ('Utente369',86,'Utente368','2023-12-25 9:10',NULL,8);
--valutazione utenti per evento evento087
INSERT INTO Valuta VALUES ('Utente370',87,'Utente371','2023-12-25 9:10',NULL,7);
INSERT INTO Valuta VALUES ('Utente371',87,'Utente370','2023-12-25 9:10',NULL,1);
--valutazione utenti per evento evento091
INSERT INTO Valuta VALUES ('Utente372',91,'Utente373','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente373',91,'Utente372','2023-12-25 9:10',NULL,2);
--valutazione utenti per evento evento092
INSERT INTO Valuta VALUES ('Utente374',92,'Utente375','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente375',92,'Utente374','2023-12-25 9:10',NULL,8);
--valutazione utenti per evento evento093
INSERT INTO Valuta VALUES ('Utente376',93,'Utente377','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente377',93,'Utente376','2023-12-25 9:10',NULL,7);
--valutazione utenti per evento evento094
INSERT INTO Valuta VALUES ('Utente378',94,'Utente379','2023-12-25 9:10',NULL,8);
INSERT INTO Valuta VALUES ('Utente379',94,'Utente378','2023-12-25 9:10',NULL,2);
--valutazione utenti per evento evento098
INSERT INTO Valuta VALUES ('Utente380',98,'Utente381','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente381',98,'Utente380','2023-12-25 9:10',NULL,8);
--valutazione utenti per evento evento099
INSERT INTO Valuta VALUES ('Utente382',99,'Utente383','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente383',99,'Utente382','2023-12-25 9:10',NULL,6);
--valutazione utenti per evento evento100
INSERT INTO Valuta VALUES ('Utente384',100,'Utente385','2023-12-25 9:10',NULL,9);
INSERT INTO Valuta VALUES ('Utente385',100,'Utente384','2023-12-25 9:10',NULL,4);
--valutazione utenti per evento evento101
INSERT INTO Valuta VALUES ('Utente386',101,'Utente387','2023-12-25 9:10',NULL,4);
INSERT INTO Valuta VALUES ('Utente387',101,'Utente386','2023-12-25 9:10',NULL,5);
--valutazione utenti per evento evento102
INSERT INTO Valuta VALUES ('Utente388',102,'Utente389','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente389',102,'Utente388','2023-12-25 9:10',NULL,7);
--valutazione utenti per evento evento103
INSERT INTO Valuta VALUES ('Utente390',103,'Utente391','2023-12-25 9:10',NULL,2);
INSERT INTO Valuta VALUES ('Utente391',103,'Utente390','2023-12-25 9:10',NULL,5);
--valutazione utenti per evento evento104
INSERT INTO Valuta VALUES ('Utente392',104,'Utente393','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente393',104,'Utente392','2023-12-25 9:10',NULL,5);
--valutazione utenti per evento evento105
INSERT INTO Valuta VALUES ('Utente394',105,'Utente395','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente395',105,'Utente394','2023-12-25 9:10',NULL,4);
--valutazione utenti per evento evento106
INSERT INTO Valuta VALUES ('Utente396',106,'Utente397','2023-12-25 9:10',NULL,3);
INSERT INTO Valuta VALUES ('Utente397',106,'Utente396','2023-12-25 9:10',NULL,3);
--valutazione utenti per evento evento107
INSERT INTO Valuta VALUES ('Utente398',107,'Utente399','2023-12-25 9:10',NULL,5);
INSERT INTO Valuta VALUES ('Utente399',107,'Utente398','2023-12-25 9:10',NULL,3);


INSERT INTO Forum VALUES ('Forum Matematica_sport003','Matematica','sport003','');
INSERT INTO Forum VALUES ('Forum Fisica_sport003','Fisica','sport003','');
INSERT INTO Forum VALUES ('Forum Ingegneria Informatica_sport000','Ingegneria Informatica','sport000','');
INSERT INTO Forum VALUES ('Forum Scienze Ambientali_sport001','Scienze Ambientali','sport001','');
INSERT INTO Forum VALUES ('Forum Informatica_sport002','Informatica','sport002','');
INSERT INTO Forum VALUES ('Forum Ingegneria Biomedica_sport002','Ingegneria Biomedica','sport002','');
INSERT INTO Forum VALUES ('Forum Economia_sport002','Economia','sport002','');
INSERT INTO Forum VALUES ('Forum Ingegneria Nav_sport003','Ingegneria Nav','sport003','');
INSERT INTO Forum VALUES ('Forum Scienze dell’ Architettura_sport003','Scienze dell’ Architettura','sport003','');


INSERT INTO Post VALUES (0,'Forum Matematica_sport003','Utente109','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (1,'Forum Matematica_sport003','Utente052','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (2,'Forum Matematica_sport003','Utente207','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (3,'Forum Fisica_sport003','Utente175','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (4,'Forum Fisica_sport003','Utente362','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (5,'Forum Fisica_sport003','Utente315','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (6,'Forum Fisica_sport003','Utente311','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (7,'Forum Fisica_sport003','Utente065','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (8,'Forum Ingegneria Informatica_sport000','Utente487','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (9,'Forum Ingegneria Informatica_sport000','Utente253','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (10,'Forum Ingegneria Informatica_sport000','Utente132','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (11,'Forum Ingegneria Informatica_sport000','Utente270','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (12,'Forum Ingegneria Informatica_sport000','Utente317','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (13,'Forum Scienze Ambientali_sport001','Utente225','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (14,'Forum Scienze Ambientali_sport001','Utente315','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (15,'Forum Scienze Ambientali_sport001','Utente012','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (16,'Forum Scienze Ambientali_sport001','Utente081','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (17,'Forum Informatica_sport002','Utente235','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (18,'Forum Informatica_sport002','Utente432','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (19,'Forum Informatica_sport002','Utente428','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (20,'Forum Informatica_sport002','Utente032','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (21,'Forum Economia_sport002','Utente496','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (22,'Forum Economia_sport002','Utente323','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (23,'Forum Economia_sport002','Utente141','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (24,'Forum Ingegneria Nav_sport003','Utente217','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (25,'Forum Ingegneria Nav_sport003','Utente017','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (26,'Forum Ingegneria Nav_sport003','Utente010','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (27,'Forum Scienze dell’ Architettura_sport003','Utente031','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (28,'Forum Scienze dell’ Architettura_sport003','Utente386','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (29,'Forum Scienze dell’ Architettura_sport003','Utente085','2025-09-18 9:30','',NULL);
INSERT INTO Post VALUES (30,'Forum Scienze dell’ Architettura_sport003','Utente294','2025-09-18 9:30','',NULL);


INSERT INTO Esito VALUES(0,'2021-11-2 23:50','00:50:00');
INSERT INTO Esito VALUES(1,'2022-11-3 23:50','00:50:00');
INSERT INTO Esito VALUES(2,'2023-12-6 23:50','00:50:00');
INSERT INTO Esito VALUES(3,'2024-6-2 23:50','00:50:00');
INSERT INTO Esito VALUES(4,'2022-2-3 23:50','00:50:00');
INSERT INTO Esito VALUES(5,'2023-11-4 23:50','00:50:00');
INSERT INTO Esito VALUES(6,'2023-2-7 23:50','00:50:00');
INSERT INTO Esito VALUES(7,'2023-10-8 23:50','00:50:00');
INSERT INTO Esito VALUES(8,'2024-11-12 23:50','00:50:00');
INSERT INTO Esito VALUES(9,'2021-4-2 23:50','00:50:00');
INSERT INTO Esito VALUES(10,'2022-4-3 23:50','00:50:00');
INSERT INTO Esito VALUES(11,'2024-5-6 23:50','00:50:00');
INSERT INTO Esito VALUES(12,'2025-12-1 23:50','00:50:00');
INSERT INTO Esito VALUES(13,'2024-11-2 23:50','00:50:00');
INSERT INTO Esito VALUES(14,'2023-11-3 23:50','00:50:00');
INSERT INTO Esito VALUES(15,'2021-9-4 23:50','00:50:00');
INSERT INTO Esito VALUES(19,'2023-10-1 23:50','00:50:00');
INSERT INTO Esito VALUES(20,'2021-4-2 23:50','00:50:00');
INSERT INTO Esito VALUES(21,'2023-6-3 23:50','00:50:00');
INSERT INTO Esito VALUES(22,'2025-1-4 23:50','00:50:00');
INSERT INTO Esito VALUES(26,'2024-6-1 23:50','00:50:00');
INSERT INTO Esito VALUES(27,'2022-12-2 23:50','00:50:00');
INSERT INTO Esito VALUES(28,'2021-11-3 23:50','00:50:00');
INSERT INTO Esito VALUES(29,'2022-3-4 23:50','00:50:00');
INSERT INTO Esito VALUES(33,'2022-12-1 23:50','00:50:00');
INSERT INTO Esito VALUES(34,'2023-12-2 23:50','00:50:00');
INSERT INTO Esito VALUES(35,'2024-10-3 23:50','00:50:00');
INSERT INTO Esito VALUES(36,'2024-3-4 23:50','00:50:00');
INSERT INTO Esito VALUES(40,'2022-2-1 23:50','00:50:00');
INSERT INTO Esito VALUES(41,'2021-12-2 23:50','00:50:00');
INSERT INTO Esito VALUES(42,'2024-6-3 23:50','00:50:00');
INSERT INTO Esito VALUES(43,'2025-10-4 23:50','00:50:00');
INSERT INTO Esito VALUES(47,'2022-10-1 23:50','00:50:00');
INSERT INTO Esito VALUES(48,'2021-1-2 23:50','00:50:00');
INSERT INTO Esito VALUES(49,'2021-4-3 23:50','00:50:00');
INSERT INTO Esito VALUES(50,'2023-10-4 23:50','00:50:00');
INSERT INTO Esito VALUES(54,'2025-7-2 23:50','00:50:00');
INSERT INTO Esito VALUES(55,'2023-8-3 23:50','00:50:00');
INSERT INTO Esito VALUES(56,'2023-7-4 23:50','00:50:00');
INSERT INTO Esito VALUES(57,'2023-3-5 23:50','00:50:00');
INSERT INTO Esito VALUES(58,'2022-4-8 23:50','00:50:00');
INSERT INTO Esito VALUES(59,'2021-2-9 23:50','00:50:00');
INSERT INTO Esito VALUES(60,'2023-12-10 23:50','00:50:00');
INSERT INTO Esito VALUES(61,'2022-1-14 23:50','00:50:00');
INSERT INTO Esito VALUES(62,'2024-11-15 23:50','00:50:00');
INSERT INTO Esito VALUES(63,'2021-9-20 23:50','00:50:00');
INSERT INTO Esito VALUES(64,'2021-1-1 23:50','00:50:00');
INSERT INTO Esito VALUES(65,'2021-8-2 23:50','00:50:00');
INSERT INTO Esito VALUES(66,'2025-3-3 23:50','00:50:00');
INSERT INTO Esito VALUES(67,'2024-8-4 23:50','00:50:00');
INSERT INTO Esito VALUES(71,'2024-10-2 23:50','00:50:00');
INSERT INTO Esito VALUES(72,'2025-3-3 23:50','00:50:00');
INSERT INTO Esito VALUES(73,'2021-4-4 23:50','00:50:00');
INSERT INTO Esito VALUES(74,'2021-9-7 23:50','00:50:00');
INSERT INTO Esito VALUES(75,'2023-10-8 23:50','00:50:00');
INSERT INTO Esito VALUES(76,'2023-3-12 23:50','00:50:00');
INSERT INTO Esito VALUES(77,'2022-3-2 23:50','00:50:00');
INSERT INTO Esito VALUES(78,'2022-3-2 23:50','00:50:00');
INSERT INTO Esito VALUES(79,'2021-6-3 23:50','00:50:00');
INSERT INTO Esito VALUES(80,'2021-2-4 23:50','00:50:00');
INSERT INTO Esito VALUES(84,'2025-10-1 23:50','00:50:00');
INSERT INTO Esito VALUES(85,'2023-7-2 23:50','00:50:00');
INSERT INTO Esito VALUES(86,'2025-3-3 23:50','00:50:00');
INSERT INTO Esito VALUES(87,'2025-12-4 23:50','00:50:00');
INSERT INTO Esito VALUES(91,'2021-6-1 23:50','00:50:00');
INSERT INTO Esito VALUES(92,'2021-8-2 23:50','00:50:00');
INSERT INTO Esito VALUES(93,'2021-3-3 23:50','00:50:00');
INSERT INTO Esito VALUES(94,'2023-12-4 23:50','00:50:00');
INSERT INTO Esito VALUES(98,'2025-4-2 23:50','00:50:00');
INSERT INTO Esito VALUES(99,'2024-7-3 23:50','00:50:00');
INSERT INTO Esito VALUES(100,'2021-7-4 23:50','00:50:00');
INSERT INTO Esito VALUES(101,'2024-8-7 23:50','00:50:00');
INSERT INTO Esito VALUES(102,'2024-8-8 23:50','00:50:00');
INSERT INTO Esito VALUES(103,'2025-1-12 23:50','00:50:00');
INSERT INTO Esito VALUES(104,'2024-7-1 23:50','00:50:00');
INSERT INTO Esito VALUES(105,'2024-10-2 23:50','00:50:00');
INSERT INTO Esito VALUES(106,'2024-11-3 23:50','00:50:00');
INSERT INTO Esito VALUES(107,'2024-9-4 23:50','00:50:00');


