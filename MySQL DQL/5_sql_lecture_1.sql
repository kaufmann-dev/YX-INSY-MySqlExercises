use CRUISES;

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

-- LABEL, NAME, ROUTE_NAME, DISTANCE

SELECT * from `CRUISES`;
SELECT * FROM CRUISE_HAS_ROUTES_JT;
SELECT * FROM ROUTES_JT;
---------------------------------------------------------------------------
SELECT
    C.LABEL,
    SHPS.NAME,
    RJT.NAME ROUTE_NAME,
    RJT.DISTANCE DISTANCE
FROM
    SHIPS SHPS
    join `CRUISES` C using(SHIP_ID)
    join CRUISE_HAS_ROUTES_JT CHR using(CRUISE_ID)
    join ROUTES_JT RJT using(DEPARTURE_HARBOR_ID, ARRIVAL_HARBOR_ID)
;

select c.LABEL, s.NAME, rj.NAME, rj.DISTANCE from CRUISES c
join CRUISE_HAS_ROUTES_JT chrj on c.CRUISE_ID = chrj.CRUISE_ID
join ROUTES_JT rj on chrj.DEPARTURE_HARBOR_ID = rj.DEPARTURE_HARBOR_ID and chrj.ARRIVAL_HARBOR_ID = rj.ARRIVAL_HARBOR_ID
join SHIPS s on c.SHIP_ID = s.SHIP_ID;

-- endregion

-- ------------------------------------------------------------------------
-- 1.2) SQL Klauseln
-- ------------------------------------------------------------------------
-- region

-- Geben Sie für Kreuzfahrten folgende Werte an:
-- LABEL, DISTANCE, DISTANCE_CLASSIFICATION

-- @LABEL -> CRUISES.LABEL
-- @DISTANCE -> Die während der Kreuzfahrt zurückgelegte Länge der Summe
--              der Strecken

-- @DISTANCE_CLASSFICATION -> Entsprechend der zurückgelegten Strecke soll
--                            eine Klassifizierung angegeben werden:

--     0    < DISTANCE <= 1000     "SHORT_CRUISE"
--     1000 < DISTANCE <= 2000     "MEDIUM_CRUISE"
--     2000 < DISTANCE <= ....     "LONG_CRUISE"

SELECT
    C.LABEl,
    sum(RJT.DISTANCE) DISTANCE,
    CASE 
        WHEN sum(RJT.DISTANCE) > 2000 THEN 'LONG_CRUISE'
        WHEN sum(RJT.DISTANCE) > 1000 THEN 'MEDIUM_CRUISE'
        ELSE 'SHORT_CRUISE'
    END as DISTANCE
FROM
    `CRUISES` C
    join CRUISE_HAS_ROUTES_JT CHR USING(CRUISE_ID)
    join ROUTES_JT RJT USING(DEPARTURE_HARBOR_ID, ARRIVAL_HARBOR_ID)
GROUP BY
    C.CRUISE_ID
;

-- endregion

-- ------------------------------------------------------------------------
-- 1.3) Subselect
-- ------------------------------------------------------------------------
-- region

-- Ermitteln Sie die Angestelltengruppe in der zur Zeit die meisten
-- Angestellten beschaeftigt sind.

-- Ausgabe: EMPLOYEE_TYPE, EMPLOYEE_COUNT

-- Tabellen: EMPLOYEE_ST

-- Conditional
WITH EMP_DATA as (
    select EMPLOYEE_TYPE, count(EMPLOYEE_ID) emp_count
    from EMPLOYEE_ST
    group by EMPLOYEE_TYPE
)
select *
from EMP_DATA
where emp_count = (select max(emp_count) from EMP_DATA);

-- Inner View
WITH EMP_DATA as (
    select
        EMPLOYEE_TYPE,
        count(EMPLOYEE_ID) emp_count
    from 
        EMPLOYEE_ST
    group by
        EMPLOYEE_TYPE
)
select
    EMPLOYEE_TYPE,
    emp_count
from
    EMP_DATA ED1
    join (
        select max(emp_count) max_emp_count
        from EMP_DATA
    ) ED2 on ED1.emp_count = ED2.max_emp_count
;

-- endregion

-- ------------------------------------------------------------------------
-- 1.4) Subselect
-- ------------------------------------------------------------------------
-- region

-- Fuer welches Land werden die meisten Haefen gespeichert. Geben Sie die
-- folgenden Spalten aus:

-- Ausgabe: COUNTRY, HARBOR_COUNT

-- Tabellen: HARBORS
with Q1 AS(
    select H.COUNTRY, COUNT(H.HARBOR_ID) HARBOR_COUNT
    FROM
        HARBORS H
    GROUP BY
        H.COUNTRY
),
MXA as(
    SELECT max(HARBOR_COUNT) HARBOR_COUNT FROM Q1
)
SELECT
    Q1.*
FROM
    Q1
    natural join MXA;

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

with bookingdata as (
    select BOOKING_ID, sum(PRICE) revenue from CRUISE_HAS_BOOKINGS_JT CBJ
             group by CBJ.BOOKING_ID
)
select BD2.BOOKING_ID, BD.maxus from (select max(revenue) maxus from bookingdata) BD
    join bookingdata BD2 on BD2.revenue = BD.maxus
join BOOKINGS B on BD2.BOOKING_ID = B.BOOKING_ID
where year(B.BOOKED_AT) between 2007 and 2020;

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

SELECT che.CRUISE_ID, che.EMPLOYEE_ROLE, count(che.EMPLOYEE_ID) emp_count
FROM (SELECT CRUISE_ID
      FROM CRUISE_HAS_EMPLOYEES_JT
      GROUP BY CRUISE_ID
      HAVING COUNT(EMPLOYEE_ID) =
             (SELECT MAX(SUB_1.EMP_COUNT) MAX_EMP_COUNT
              FROM (SELECT COUNT(EMPLOYEE_ID) EMP_COUNT
                    FROM CRUISE_HAS_EMPLOYEES_JT
                    GROUP BY CRUISE_ID) SUB_1)) SUB_2
         JOIN CRUISE_HAS_EMPLOYEES_JT CHE on che.CRUISE_ID = sub_2.CRUISE_ID
group by che.CRUISE_ID, che.EMPLOYEE_ROLE
having (che.CRUISE_ID, count(che.EMPLOYEE_ID))
           IN
       (select sub_3.CRUISE_ID, max(sub_3.emp_count)
        from (SELECT che.CRUISE_ID, count(che.EMPLOYEE_ID) emp_count
              FROM (SELECT CRUISE_ID
                    FROM CRUISE_HAS_EMPLOYEES_JT
                    GROUP BY CRUISE_ID
                    HAVING COUNT(EMPLOYEE_ID) =
                           (SELECT MAX(SUB_1.EMP_COUNT) MAX_EMP_COUNT
                            FROM (SELECT COUNT(EMPLOYEE_ID) EMP_COUNT
                                  FROM CRUISE_HAS_EMPLOYEES_JT
                                  GROUP BY CRUISE_ID) SUB_1)) SUB_2
                       JOIN CRUISE_HAS_EMPLOYEES_JT CHE on che.CRUISE_ID = sub_2.CRUISE_ID
              group by che.CRUISE_ID, che.EMPLOYEE_ROLE) sub_3
        group by sub_3.CRUISE_ID);

-- endregion

-- ------------------------------------------------------------------------
-- 2.1) Subselect: WITH Klausel
-- ------------------------------------------------------------------------
-- region

--  Zur Erstellung der jaehrlichen Bilanz soll fuer die gespeicherten Kreuz-
--  fahrten ein Report erstellt werden

-- Ermitteln Sie fuer jede Kreuzfahrt die folgenden Werte:

-- Ausgabe: CRUISE_ID, LABEL, DATE_OF_DEPARTURE, DURATION, EMPLOYEE_COUNT,
--          BOOKING_COUNT, SALES, BOOKED_CABINS

-- @DURATION: Anzahl der Tage
-- @EMPLOYEE_COUNT: Anzahl der Angestellten
-- @BOOKING_COUNT: Anzahl der Buchungen
-- @SALES: Durch Buchungen generierter Umsatz
-- @BOOKED_CABINS: Die Anzahl der gebuchten Kabinen
-- @DISTANCE:

-- Sortieren Sie das Ergebnis nach der Bezeichnung der Kreuzfahrten

-- Tabellen: CRUISES, CRUISE_HAS_EMPLOYEES_JT, CRUISE_HAS_BOOKINGS_JT

with EMPLOYEE_DATA as (
    select
        che.CRUISE_ID,
        count(che.EMPLOYEE_ID) EMPLOYEE_COUNT
    from CRUISE_HAS_EMPLOYEES_JT che
    group by che.CRUISE_ID
),
ROUTE_DATA AS (
    select
        sum(RJ.DISTANCE) DISTANCE,
        CHR.CRUISE_ID
    from CRUISE_HAS_ROUTES_JT CHR
        join ROUTES_JT RJ on CHR.DEPARTURE_HARBOR_ID = RJ.DEPARTURE_HARBOR_ID and CHR.ARRIVAL_HARBOR_ID = RJ.ARRIVAL_HARBOR_ID
    group by CHR.CRUISE_ID
),
BOOKING_DATA as (
    select
        CHB.CRUISE_ID,
        count(BOOKING_ID) BOOKING_COUNT,
        SUM(PRICE) TURNOVER,
        count(distinct CABIN_NR) CABIN_COUNT
    from CRUISE_HAS_BOOKINGS_JT CHB
    group by CHB.CRUISE_ID
)

select
    c.LABEL,
    c.CRUISE_ID,
    datediff(c.DATE_OF_ARRIVAL, c.DATE_OF_DAPARTURE)+1 DURATION,
    coalesce(ED.EMPLOYEE_COUNT, 0) EMPLYOEE_COUNT,
    coalesce(BD.BOOKING_COUNT, 0) BOOKING_COUNT,
    coalesce(BD.TURNOVER, 0) TURNOVER,
    coalesce(BD.CABIN_COUNT, 0) CABIN_COUNT,
    coalesce(RD.DISTANCE, 0) DISTANCE
from CRUISES c
    left join EMPLOYEE_DATA ED on ED.CRUISE_ID = c.CRUISE_ID
    left join BOOKING_DATA BD on BD.CRUISE_ID = c.CRUISE_ID
    left join ROUTE_DATA RD on RD.CRUISE_ID = c.CRUISE_ID
order by c.LABEL;

-- endregion

-- ------------------------------------------------------------------------
-- 2.2) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Geben Sie alle Schiffstypen an, die zumindestens einem Kreuzfahrschiff
-- zugeordnet sind.

-- Hinweis: Als Kreuzfahrtschiffe werden Schiffe bezeichnet die bei
--          Kreuzfahrten eingesetzt werden

-- Ausgabe: TYPE


-- Tables: E_SHIP_CLASSIFICATION, SHIPS, CRUISES

select S.SHIP_CLASSIFICATION
from SHIPS S
where exists(
    select *
    from CRUISES C
    where C.SHIP_ID = S.SHIP_ID
);

-- endregion

-- ------------------------------------------------------------------------
-- 2.3) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Finden Sie alle Häfen die zumindestens auf einer Route liegen.

-- Ausgabe: HARBOR_ID, NAME, COUNTRY


-- Tables: HARBORS, ROUTES_JT

select
    H.HARBOR_ID,
    H.NAME,
    H.COUNTRY
from HARBORS H
where exists(
    select *
    from ROUTES_JT R
    where H.HARBOR_ID = R.DEPARTURE_HARBOR_ID or H.HARBOR_ID = R.ARRIVAL_HARBOR_ID
);

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

select H.HARBOR_ID, H.NAME, H.COUNTRY
from HARBORS H
where not exists(
    select *
    from ROUTES_JT R
    where H.HARBOR_ID = R.DEPARTURE_HARBOR_ID or H.HARBOR_ID = R.ARRIVAL_HARBOR_ID
);

-- endregion

-- ------------------------------------------------------------------------
-- 2.5) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Finden Sie alle Cruises, die zumindestens einmal gebucht worden sind.

-- Ausgabe: CRUISE_ID, LABEL

-- Tables: CRUISES, CRUISE_HAS_BOOKINGS_JT

select C.`CRUISE_ID`, C.`LABEL`
from CRUISES C
    join CRUISE_HAS_BOOKINGS_JT CHBJ on C.CRUISE_ID = CHBJ.CRUISE_ID
where exists(
    select *
    from CRUISE_HAS_BOOKINGS_JT CHB
    where CHB.CRUISE_ID = C.CRUISE_ID
);

-- endregion

-- ------------------------------------------------------------------------
-- 2.6) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Finden Sie alle Cruises, für die keine Buchungen vorliegen.

-- Ausgabe: CRUISE_ID, LABEL

-- Tables: CRUISES, CRUISE_HAS_BOOKINGS_JT

select C.`CRUISE_ID`, C.`LABEL`
from CRUISES C
    join CRUISE_HAS_BOOKINGS_JT CHBJ on C.CRUISE_ID = CHBJ.CRUISE_ID
where not exists(
    select *
    from CRUISE_HAS_BOOKINGS_JT CHB
    where CHB.CRUISE_ID = C.CRUISE_ID
);

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

SELECT S.SHIP_ID, S.NAME
FROM SHIPS S
where not EXISTS(
    SELECT *
    FROM `CRUISES` C
    WHERE C.`SHIP_ID` = S.`SHIP_ID`
);

-- endregion

-- ------------------------------------------------------------------------
-- 2.8) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Finden Sie alle Kreuzfahrten die unterschiedliche Kontinente anfahren

-- Ausgabe: CRUISE_ID, LABEL

-- Tabellen: CRUISES, CRUISES_HAS_ROUTES_JT, ROUTES, HARBORS


-- Hinweis: Es existiert mindestens eine Teilstrecke der Kreuzfahrt deren
--          Abfahrts- und AnkunftsHafen auf unterschiedlichen Continenten liegt

SELECT C.`CRUISE_ID`, C.`LABEL`
FROM CRUISES C
WHERE EXISTS (
    SELECT CHR.`CRUISE_ID`
    FROM CRUISE_HAS_ROUTES_JT CHR
        JOIN HARBORS H1 ON H1.HARBOR_ID = CHR.ARRIVAL_HARBOR_ID
        JOIN HARBORS H2 ON H2.HARBOR_ID = CHR.DEPARTURE_HARBOR_ID
    WHERE CHR.CRUISE_ID = C.CRUISE_ID
    GROUP BY CHR.CRUISE_ID
    HAVING COUNT(DISTINCT CONCAT(H1.`CONTINENT`, H2.`CONTINENT`)) > 1
);

-- Without concat
select C.`CRUISE_ID`, C.`LABEL`
from CRUISES C
where exists(
    SELECT * FROM(
        select CHR.`CRUISE_ID`
        from CRUISE_HAS_ROUTES_JT CHR
            join HARBORS H1 on H1.HARBOR_ID = CHR.ARRIVAL_HARBOR_ID
            join HARBORS H2 on H2.HARBOR_ID = CHR.DEPARTURE_HARBOR_ID
        GROUP BY CHR.`CRUISE_ID`, H1.`CONTINENT`, H2.`CONTINENT`
    ) Q2
    WHERE Q2.CRUISE_ID = C.`CRUISE_ID`
    GROUP BY Q2.CRUISE_ID
    having count(Q2.CRUISE_ID) > 1
);

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

select *
from ROUTES_JT R
where not exists(
    select *
    from ROUTES_JT R2
    where R.DISTANCE < R2.DISTANCE
);

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

SELECT C.`CRUISE_ID`, C.`LABEL`
FROM `CRUISES` C
WHERE NOT EXISTS(
    SELECT RJT.`NAME` FROM
    `CRUISE_HAS_ROUTES_JT` CHR
    join ROUTES_JT RJT using(`ARRIVAL_HARBOR_ID`, `DEPARTURE_HARBOR_ID`)
    WHERE
        RJT.`DISTANCE` < 500 AND
        CHR.`CRUISE_ID` = C.`CRUISE_ID`
);


-- endregion

-- ------------------------------------------------------------------------
-- 2.10) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Gesucht sind Länder deren Häfen nicht alle auf Reiserouten liegen.

-- Ausgabe: NAME

-- Tabellen: E_COUNTRIES, HARBORS, ROUTES_JT

-- Hinweis: Alle Länder für die ein Hafen existiert für den keine Route zugeordnet ist

SELECT * FROM `HARBORS`;
select c.`NAME`
from E_COUNTRIES c
where exists(
    select h.`HARBOR_ID`
    from HARBORS h
    join `ROUTES_JT` R1 ON R1.`ARRIVAL_HARBOR_ID` = h.`HARBOR_ID`
    join `ROUTES_JT` R2 on R2.`DEPARTURE_HARBOR_ID` = h.`HARBOR_ID`
    where h.country = c.name
    GROUP BY h.`HARBOR_ID`
    having count(R1.`ARRIVAL_HARBOR_ID`) = 0 and count(R2.`DEPARTURE_HARBOR_ID`) = 0
);

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

SELECT S.SHIP_ID, S.NAME
FROM SHIPS S
WHERE EXISTS (
    SELECT 1
    FROM CRUISES C
    WHERE C.SHIP_ID = S.SHIP_ID
)
AND NOT EXISTS (
    SELECT 1
    FROM CRUISES C1
    WHERE C1.SHIP_ID <> S.SHIP_ID
    GROUP BY C1.SHIP_ID
    HAVING COUNT(DISTINCT C1.CRUISE_ID) > (
        SELECT COUNT(DISTINCT C2.CRUISE_ID)
        FROM CRUISES C2
        WHERE C2.SHIP_ID = S.SHIP_ID
    )
);

-- endregion
