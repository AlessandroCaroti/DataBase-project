set search_path to 'UniGenovaSocialSport';
--le viste usano delle funzioni in Funzioni.sql




create materialized view ProgrammaTorneo as

Select IdTorneo, Evento.IdEvento, DataEv, NomeImp, Iscrizione.Username, Punti.Punti, Qualità, Fase
from (Torneo Join Evento using(IdTorneo)) left  join Iscrizione on(Iscrizione.IdEvento=Evento.IdEvento) left Join Punti on (Iscrizione.IdEvento=Punti.IdEvento and Iscrizione.Username=Punti.Username) 
where Iscrizione.Stato='confermato'
order by IdTorneo, Evento.IdEvento, Evento.Fase;


--considero che un impianto sia disponibile 24 ore al giorno per tutti i giorni del mese
create materialized view Programma (NomeImp, Mese,Categoria, NumTornei, NumEventi, Partecipazione, Corsi, DurataTot , Utilizzo) as

select aux.NomeImp,aux.mese, aux.NomeCat, count(Distinct Evento.Idtorneo), count( Distinct Evento.IdEvento), count(distinct Utente.Username), count(Distinct Utente.NomeCorso), SUM(minuti(Esito.Durata)) ,(cast (SUM(minuti(Esito.Durata)) as decimal)/( Minuti_Mese(aux.mese))) *100
from (select Impianto.NomeImp,Extract( month from Evento.dataev) as Mese, Categoria.NomeCat
	 	from Impianto,Categoria,Evento
	    group by Impianto.NomeImp,mese,Categoria.NomeCat) as aux left join (Esito  natural join Evento join iscrizione using(Idevento) join Utente on (Iscrizione.Username=Utente.Username and Iscrizione.Stato='confermato')) on( Evento.Nomecat=aux.NomeCat and Evento.NomeImp=aux.NomeImp and Extract( month from Evento.dataev)=aux.mese)
group by aux.NomeImp, aux.mese,aux.NomeCat;


--con 'migliori prestazioni nei tornei' è stato interpretato come le squadre/utente che hanno vinto la finale dei tornei per più volte
create view Medagliere (NomeCat,Partecipante,tipo, NomeCorso) as
select NomeCat, NomeSq,'squadra', Corso.NomeCorso
from Categoria as C cross join Squadra cross join Corso
where squadre and NomeSq in (select NomeSq
							from Vincitori_TorneixCategoria(C.NomeCat)
							group by NomeSq
							having count(*)>= all(select count(*)
												from Vincitori_TorneixCategoria(C.NomeCat)
												group by NomeSq )) and NomeCorso in (select NomeCorso
																					from Eventi_VintixCorso()
																					where NomeCat=C.NomeCat and Qta=(select max(Qta)
																															from Eventi_VintixCorso()
																															where NomeCat=C.NomeCat))
UNION

select NomeCat, Username,'utente', Corso.NomeCorso
from Categoria as C, Utente, Corso
where not squadre and Utente.Username in (select Username
							from Tornei_Singoli_Vinti(C.NomeCat)
							group by Username, Qta
							having Qta>= all(select max(Qta)
												from Tornei_Singoli_Vinti(C.NomeCat))) and Corso.NomeCorso in (select NomeCorso
																					from Eventi_VintixCorso()
																					where NomeCat=C.NomeCat and Qta=(select max(Qta)
																															from Eventi_VintixCorso()
																															where NomeCat=C.NomeCat));