use cruise;
-- ------------------------------------------------------------------------
-- 1.1) SQL Klauseln
-- ------------------------------------------------------------------------
-- region

-- Geben Sie für Kreuzfahrten folgende Werte an:
-- LABEL, NAME, DISTANCE.

-- @LABEL -> CRUISES.LABEL
-- @NAME  -> SHIP.NAME
-- @ROUTE_NAME -> ROUTES_JT.NAME
-- @DISTANCE   -> ROUTES_JT.DISTANCE

-- Tables: CRUISES, CRUISE_HAS_ROUTES_JT, ROUTES_JT, SHIPS


with CRUISE_LENGTH as (select CRUISE_ID, sum(DISTANCE) as LENGTH
                       from CRUISE_HAS_ROUTES_JT chrj
                                join ROUTES_JT rj on rj.DEPARTURE_HARBOR_ID = chrj.DEPARTURE_HARBOR_ID and
                                                     rj.ARRIVAL_HARBOR_ID = chrj.ARRIVAL_HARBOR_ID
                       group by CRUISE_ID)
select LABEL, s.NAME SHIP, rj.NAME ROUTE_NAME, cl.LENGTH CRUISELENGTH
from CRUISES c
         join SHIPS s on s.SHIP_ID = c.SHIP_ID
         join CRUISE_HAS_ROUTES_JT chrj on c.CRUISE_ID = chrj.CRUISE_ID
         join ROUTES_JT rj
              on chrj.DEPARTURE_HARBOR_ID = rj.DEPARTURE_HARBOR_ID and chrj.ARRIVAL_HARBOR_ID = rj.ARRIVAL_HARBOR_ID
         join CRUISE_LENGTH cl on cl.CRUISE_ID = c.CRUISE_ID;

-- endregion

-- ------------------------------------------------------------------------
-- 1.2) SQL Klauseln
-- ------------------------------------------------------------------------
-- region

-- Geben Sie für Kreuzfahrten folgende Werte an:
-- LABEL, DISTANCE, DISTANCE_CLASSIFICATION

-- @LABEL    -> CRUISES.LABEL
-- @DISTANCE -> Die während der Kreuzfahrt zurückgelegte Länge der Summe
--              der Strecken

-- @DISTANCE_CLASSFICATION -> Entsprechend der zurückgelegten Strecke soll
--                            eine Klassifizierung angegeben werden:

--     0    < DISTANCE <= 1000     "SHORT_CRUISE"
--     1000 < DISTANCE <= 2000     "MEDIUM_CRUISE"
--     2000 < DISTANCE <= ....     "LONG_CRUISE"

WITH CRUISE_LENGTH AS (SELECT CRUISE_ID, SUM(DISTANCE) AS LENGTH
                       FROM CRUISE_HAS_ROUTES_JT CHRJ
                                JOIN ROUTES_JT RJ ON RJ.DEPARTURE_HARBOR_ID = CHRJ.DEPARTURE_HARBOR_ID AND
                                                     RJ.ARRIVAL_HARBOR_ID = CHRJ.ARRIVAL_HARBOR_ID
                       GROUP BY CRUISE_ID)
SELECT C.LABEL,
       CL.LENGTH  DISTANCE,
       CASE
           WHEN CL.LENGTH <= 1000 THEN 'SHORT_CRUISE'
           WHEN CL.LENGTH BETWEEN 1001 AND 2000 THEN 'MEDIUM_CRUISE'
           ELSE 'LONG_CRUISE'
           END AS CLASSIFICATION
FROM CRUISES C
         JOIN CRUISE_LENGTH CL ON CL.CRUISE_ID = C.CRUISE_ID;

-- endregion

-- ------------------------------------------------------------------------
-- 1.3) Subselect
-- ------------------------------------------------------------------------
-- region

-- Ermitteln Sie die Angestelltengruppe in der zur Zeit die meisten
-- Angestellten beschaeftigt sind.

-- Ausgabe: EMPLOYEE_TYPE, EMPLOYEE_COUNT

-- Tabellen: EMPLOYEE_ST
with EMPLOYEE_REPORT as
         (select EMPLOYEE_TYPE, count(EMPLOYEE_ID) as c
          from EMPLOYEE_ST
          group by EMPLOYEE_TYPE)
select EMPLOYEE_TYPE, max_employee
from EMPLOYEE_REPORT er
         join (select max(c) max_employee from EMPLOYEE_REPORT) sub on er.c = sub.max_employee;


with REPORT as (select EMPLOYEE_TYPE, count(EMPLOYEE_ID) employee_count
                from EMPLOYEE_ST
                group by EMPLOYEE_TYPE)
select r.EMPLOYEE_TYPE, r.employee_count
from REPORT r
         join (select max(REPORT.employee_count) as max_employee from REPORT) sub
              on r.employee_count = sub.max_employee;


-- endregion

-- ------------------------------------------------------------------------
-- 1.4) Subselect
-- ------------------------------------------------------------------------
-- region

-- Fuer welches Land werden die meisten Haefen gespeichert. Geben Sie die
-- folgenden Spalten aus:

-- Ausgabe: COUNTRY, HARBOR_COUNT

-- Tabellen: HARBORS

with COUNTRY_MAX as (select COUNTRY, count(HARBOR_ID) as country_count from HARBORS group by COUNTRY)
select COUNTRY, country_count as HARBOR_COUNT
from COUNTRY_MAX cm
         join(select max(country_count) max_country from COUNTRY_MAX) c on cm.country_count = c.max_country;

-- endregion

-- ------------------------------------------------------------------------
-- 1.5) Subselect
-- ------------------------------------------------------------------------
-- region

-- Geben Sie die umsatzhoechste Buchung aus. Beruecksichtigen Sie nur
-- Buchungen die zwischen 2007 und 2020 abgeschlossen wurden.

-- Ausgabe: BOOKING_ID, TURNOVER

-- @TURNOVER: Beschreibt den gesamten Umsatz fuer eine Buchung.

-- Hinweis: Jeder CRUISE_HAS_BOOKINGS_JT Datensatz beschreibt welcher
--          Reisende, welche Kabine fuer welche Kreuzfahrt zu welchem
--          Preis erstanden im Rahmen welcher Buchung erstanden hat.

--          Eine Buchung kann aus mehreren CRUISE_HAS_BOOKING_JT
--          Datensaetzen bestehen!

-- Tabellen: CRUISE_HAS_BOOKINGS_JT, BOOKINGS




-- endregion

-- ------------------------------------------------------------------------
-- 1.6) Subselect
-- ------------------------------------------------------------------------
-- region

-- In welcher Rolle arbeiten die meisten Mitarbeiter auf der Kreuzfahrt mit
-- den meisten Mitarbeitern?

-- Geben Sie folgenden Spaltenwerte aus: CRUISE_id, EMPLOYEE_ROLE, EMPLOYEE_COUNT

-- @EMPLOYEE_COUNT: Anzahl der Angestellten die in der entsprechenden Rolle
--                  beschaeftigt sind.

-- Tabellen: CRUISE_HAS_EMPLOYEES


-- endregion

-- ------------------------------------------------------------------------
-- 2.1) Subselect: WITH Klausel
-- ------------------------------------------------------------------------
-- region

--  Zur Erstellung der jaehrlichen Bilanz soll fuer die gespeicherten Kreuz-
--  fahrten ein Report erstellt werden

-- Ermitteln Sie fuer jede Kreuzfahrt die folgenden Werte:

-- Ausgabe: CRUISE_ID, LABEL, DATE_OF_DEPARTUER, DURATION, EMPLOYEE_COUNT,
--          BOOKING_COUNT, SALES, BOOKED_CABINS

-- @DURATION: Anzahl der Tage
-- @EMPLOYEE_COUNT: Anzahl der Angestellten
-- @BOOKING_COUNT: Anzahl der Buchungen
-- @SALES: Durch Buchungen generierter Umsatz
-- @BOOKED_CABINS: Die Anzahl der gebuchten Kabinen
-- @DISTANCE:

-- Sortieren Sie das Ergebnis nach der Bezeichnung der Kreuzfahrten

-- Tabellen: CRUISES, CRUISE_HAS_EMPLOYEES_JT, CRUISE_HAS_BOOKINGS_JT


with EMPLOYEE_REPORT as (select CRUISE_ID, count(EMPLOYEE_ID) employee_count
                         from CRUISE_HAS_EMPLOYEES_JT che
                         group by che.CRUISE_ID),
     BOOKING_REPORT as (select chb.CRUISE_ID, count(BOOKING_ID) as booking_count, sum(PRICE) as reveneu
                        from CRUISE_HAS_BOOKINGS_JT chb
                        group by chb.CRUISE_ID)
select c.CRUISE_ID,
       c.LABEL,
       (c.DATE_OF_ARRIVAL - c.DATE_OF_DAPARTURE) DURATION,
       coalesce(er.employee_count, 0)            EMPLOYEE_COUNT,
       coalesce(br.booking_count, 0)             BOOKING_COUNT,
       coalesce(br.reveneu, 0)                   SALES
from CRUISES c
         left join EMPLOYEE_REPORT er on c.CRUISE_ID = er.CRUISE_ID
         left join BOOKING_REPORT br on c.CRUISE_ID = br.CRUISE_ID;

-- endregion

-- ------------------------------------------------------------------------
-- 2.2) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Geben Sie alle Schiffstypen an, denen zumindestens einem Kreuzfahrtschiff
-- zugeordnet ist.

-- Hinweis: Als Kreuzfahrtschiffe werden Schiffe bezeichnet die bei
--          Kreuzfahrten eingesetzt werden

-- Ausgabe: TYPE


-- Tables: E_SHIP_CLASSIFICATION, SHIPS, CRUISES

SELECT DISTINCT SHIP_ID
FROM CRUISES;
select SHIP_CLASSIFICATION
from SHIPS s
where EXISTS(SELECT DISTINCT SHIP_ID FROM CRUISES c where c.SHIP_ID = s.SHIP_ID);
-- endregion

-- ------------------------------------------------------------------------
-- 2.3) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Finden Sie alle Häfen die zumindestens auf einer Route liegen.

-- Ausgabe: HARBOR_ID, NAME, COUNTRY


-- Tables: HARBORS, ROUTES_JT

select DEPARTURE_HARBOR_ID, ARRIVAL_HARBOR_ID
from ROUTES_JT;
select HARBOR_ID, NAME, COUNTRY
from HARBORS h
where EXISTS(select *
             from ROUTES_JT r
             where r.ARRIVAL_HARBOR_ID = h.HARBOR_ID
                or r.DEPARTURE_HARBOR_ID = h.HARBOR_ID);

-- endregion

-- ------------------------------------------------------------------------
-- 2.4) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Finden Sie alle Häfen die auf keiner Route liegen.

-- Ausgabe: HARBOR_ID, NAME, COUNTRY
-- Hinweis: Es gibt keine Route für die der DEPARTURE_HARBOR oder ARRIVAL_HARBOR
--          mit dem Hafen übereinstimmen


-- Tables: HARBORS, ROUTES_JT

select HARBOR_ID, NAME, COUNTRY
from HARBORS h
where not EXISTS(select *
                 from ROUTES_JT r
                 where r.ARRIVAL_HARBOR_ID = h.HARBOR_ID
                    or r.DEPARTURE_HARBOR_ID = h.HARBOR_ID);

-- endregion

-- ------------------------------------------------------------------------
-- 2.5) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Finden Sie alle CRUISES, die zumindestens einmal gebucht worden sind.

-- Ausgabe: CRUISE_ID, LABEL

-- Tables: CRUISES, CRUISE_HAS_BOOKINGS_JT

SELECT CRUISE_ID, LABEL
from CRUISES c
where EXISTS(SELECT * from CRUISE_HAS_BOOKINGS_JT chb where c.CRUISE_ID = chb.CRUISE_ID);

-- endregion

-- ------------------------------------------------------------------------
-- 2.6) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Finden Sie alle CRUISES, für die keine Buchungen vorliegen.

-- Ausgabe: CRUISE_ID, LABEL

-- Tables: CRUISES, CRUISE_HAS_BOOKINGS_JT

SELECT CRUISE_ID, LABEL
from CRUISES c
where not EXISTS(SELECT * from CRUISE_HAS_BOOKINGS_JT chb where c.CRUISE_ID = chb.CRUISE_ID);

-- endregion

-- ------------------------------------------------------------------------
-- 2.7) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Geben Sie alle Schiffe aus, die keiner Cruise zugeordnet sind.

-- Ausgabe: SHIP_ID, NAME
--
-- @SHIP_ID -> SHIPS.SHIP_ID
-- @NAME    -> SHIPS.NAME

-- Tabellen: SHIPS, CRUISES

select s.SHIP_ID, s.NAME
from SHIPS s
where not EXISTS(select * from CRUISES c where s.SHIP_ID = c.SHIP_ID);

-- endregion

-- ------------------------------------------------------------------------
-- 2.8) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Finden Sie alle Kreuzfahrten die unterschiedliche Kontinente anfahren
-- Es gibt mindestens eine Route bei der die Häfen auf unterschiedlichen Kontinente liegen

-- Ausgabe: CRUISE_ID, LABEL

-- Tabellen: CRUISES, CRUISES_HAS_ROUTES_JT, ROUTES, HARBORS


-- Hinweis: Es existiert mindestens eine Teilstrecke der Kreuzfahrt deren
--          Abfahrts- und AnkunftsHafen auf unterschiedlichen Continenten liegt

SELECT c.CRUISE_ID
from CRUISES c
where EXISTS(select *
             from CRUISE_HAS_ROUTES_JT chr
                      join HARBORS h on h.HARBOR_ID = chr.ARRIVAL_HARBOR_ID
                      join HARBORS h2 on h2.HARBOR_ID = chr.DEPARTURE_HARBOR_ID
             where h.CONTINENT != h2.CONTINENT
               and chr.CRUISE_ID = c.CRUISE_ID);
#
-- endregion

-- ------------------------------------------------------------------------
-- 2.8) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Bestimmen Sie die Route mit dem höchsten Wert für die Streckenlänge
-- (DISTANCE).

-- Ausgabe: NAME, DISTANCE

-- Tabellen: ROUTES_JT


-- Hinweis: Es gibt keine Route mit einem höheren Wert der Streckenlänge (DISTANCE)

select NAME, DISTANCE
from ROUTES_JT r
where not EXISTS(select * from ROUTES_JT rj where rj.DISTANCE > r.DISTANCE);

-- endregion

-- ------------------------------------------------------------------------
-- 2.9) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Finden Sie alle Kreuzfahrten, die auf jeder zugeordneten Teilstrecke mehr
-- als 500 km zurücklegt.

-- Ausgabe: CRUISE_ID, LABEL

-- Tabellen: CRUISES, ROUTES_JT, CRUISE_HAS_ROUTES_JT


-- Hinweis: Keine, der der Kreuzfahrt zugeordnete Teilstrecke ist kürzer als 500 km.

SELECT *
from CRUISES c
where not EXISTS(select *
                 from ROUTES_JT r
                          join CRUISE_HAS_ROUTES_JT chrj on r.DEPARTURE_HARBOR_ID = chrj.DEPARTURE_HARBOR_ID and
                                                            r.ARRIVAL_HARBOR_ID = chrj.ARRIVAL_HARBOR_ID
                 where r.DISTANCE > 500
                   and c.CRUISE_ID = chrj.CRUISE_ID);

-- endregion

-- ------------------------------------------------------------------------
-- 2.10) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Gesucht sind Länder deren Häfen nicht alle auf Reiserouten liegen.

-- Ausgabe: NAME

-- Tabellen: E_COUNTRIES, HARBORS, ROUTES_JT

-- Gesucht sind alle Länder wo es mindestens ein Hafen  auf keiner Reiseroute liegt.

select *
from E_COUNTRIES c
where EXISTS(select *
             from HARBORS h
             where h.COUNTRY = c.NAME
               and not EXISTS(select *
                              from ROUTES_JT r
                              where h.HARBOR_ID = r.DEPARTURE_HARBOR_ID
                                 or h.HARBOR_ID = r.ARRIVAL_HARBOR_ID));



-- endregion


-- ------------------------------------------------------------------------
-- 2.11) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Welches Schiff wird bei den meisten Kreuzfahrten eingesetzt?

-- Ausgabe: SHIP_ID, NAME

-- Tabellen: CRUISE, SHIP

-- region query1: GROUP BY


-- Hinweis: Es gibt kein Schiff das auf mehr Kreuzfahrten eingesetzt
--          worden ist

with REPORT AS (select SHIP_ID, count(CRUISE_ID) cruise_count from CRUISES group by SHIP_ID)
select SHIP_ID
from REPORT r
where not EXISTS(select * from REPORT r2 where r2.cruise_count > r.cruise_count);

-- endregion
