--DROP MATERIALIZED VIEW "UniGenovaSocialSport".Programma;
-- DROP MATERIALIZED VIEW "UniGenovaSocialSport".ProgrammaTorneo;
-- DROP VIEW "UniGenovaSocialSport".Medagliere;

set search_path to 'UniGenovaSocialSport';

--VISITA 1	- 	gli impianti sono aperti 24h/24
create view /*materialized*/ Programma(Struttura, Mese, Sport, NumTornei, NumEventi, Partecipazione, Corsi, DurataTot,
                                   Utilizzo) as

select aux.NomeStr,
       aux.mese,
       aux.NomeSport,
       count(Distinct Evento.Idtorneo),
       count(Distinct Evento.IdE),
       count(distinct Utente.Username),
       count(Distinct Utente.NomeCorso),
       SUM(minuti(Esito.Durata)),
       (cast(SUM(minuti(Esito.Durata)) as decimal) / (Minuti_Mese(aux.mese))) * 100
from (select Struttura.NomeStr, Extract(month from Evento.data) as Mese, Sport.NomeSport
      from Struttura,
           Sport,
           Evento
      group by Struttura.NomeStr, mese, Sport.NomeSport) as aux
         left join ((Esito join Evento on (Esito.IdEvento = Evento.idE)) join Iscrive using (Idevento) join Utente on (Iscrive.Username = Utente.Username and Iscrive.Stato = 'ACCETTATO'))
                   on (Evento.NomeSport = aux.NomeSport and Evento.NomeStruttura = aux.NomeStr and
                       Extract(month from Evento.data) = aux.mese)
group by aux.NomeStr, aux.mese, aux.NomeSport;


--VISITA 2
create /*materialized*/ view ProgrammaTorneo as

Select Evento.IdTorneo,
       Evento.IdE,
       Data,
       NomeStruttura,
       Iscrive.Username,
       Punti.Punti,
       Ruolo,
       Fase
from (Torneo Join Evento on (Torneo.IdT = Evento.IdTorneo))
         left join Iscrive on (Iscrive.IdEvento = Evento.IdE)
         left Join Punti on (Iscrive.IdEvento = Punti.IdEvento and Iscrive.Username = Punti.Username)
where Iscrive.Stato = 'ACCETTATO'
order by Torneo.IdT, Evento.IdE, Evento.Fase;


--VISITA 3
--con 'migliori prestazioni nei tornei' è stato interpretato come le squadre/utente che hanno vinto la finale dei tornei per più volte
create view Medagliere (NomeSport, Partecipante, tipo, NomeCorso) as
    select NomeSport, NomeSq, 'SQUADRA', NomeCorso
    from Sport as aux
             cross join Squadra
             cross join CorsoDiStudi
    where DiSquadra
      and NomeSq in (select Squadra.NomeSq
                     from Vincitori_TorneixCategoria(aux.NomeSport)
                     group by Squadra.NomeSq
                     having count(*) >= all (select count(*)
                                             from Vincitori_TorneixCategoria(aux.NomeSport)
                                             group by Squadra.NomeSq))
      and NomeCorso in (select NomeCorso
                        from Eventi_VintixCorso()
                        where NomeSport = aux.NomeSport
                          and Quantità = (select max(Quantità)
                                          from Eventi_VintixCorso()
                                          where NomeSport = aux.NomeSport))
    UNION

    select aux.NomeSport, Username, 'UTENTE', CorsoDiStudi.NomeCorso
    from Sport as aux,
         Utente,
         CorsoDiStudi
    where not DiSquadra
      and Utente.Username in (select Username
                              from Tornei_Singoli_Vinti(aux.NomeSport)
                              group by Username, Qta
                              having Qta >= all (select max(Qta)
                                                 from Tornei_Singoli_Vinti(aux.NomeSport)))
      and CorsoDiStudi.NomeCorso in (select NomeCorso
                                     from Eventi_VintixCorso()
                                     where NomeSport = aux.NomeSport
                                       and Quantità = (select max(Quantità)
                                                       from Eventi_VintixCorso()
                                                       where NomeSport = aux.NomeSport));