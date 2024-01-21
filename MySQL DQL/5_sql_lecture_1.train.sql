use CRUISES;

-- ------------------------------------------------------------------------
-- 1.1) SQL Klauseln
-- ------------------------------------------------------------------------
-- region

-- Geben Sie für Kreuzfahrten folgende Werte an:
-- LABEL, NAME, ROUTE_NAME, DISTANCE

-- @LABEL -> CRUISES.LABEL
-- @NAME  -> SHIP.NAME
-- @ROUTE_NAME -> ROUTES_JT.NAME
-- @DISTANCE   -> ROUTES_JT.DISTANCE

-- Tables: CRUISES, CRUISE_HAS_ROUTES_JT, ROUTES_JT

SELECT * from `CRUISES`;
SELECT * FROM CRUISE_HAS_ROUTES_JT;
SELECT * FROM ROUTES_JT;
---------------------------------------------------------------------------
SELECT
    C.LABEL,
    S.NAME,
    R.NAME,
    R.`DISTANCE` `DISTANCE`
FROM
    CRUISES C
    LEFT JOIN SHIPS S using(SHIP_ID)
    LEFT JOIN CRUISE_HAS_ROUTES_JT CHR using(CRUISE_ID)
    LEFT JOIN ROUTES_JT R on R.DEPARTURE_HARBOR_ID = CHR.DEPARTURE_HARBOR_ID and R.ARRIVAL_HARBOR_ID = CHR.ARRIVAL_HARBOR_ID;

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
    C.LABEL,
    sum(R.`DISTANCE`) `DISTANCE`,
    CASE 
        WHEN sum(R.`DISTANCE`) > 2000 THEN "LONG_CRUISE"
        WHEN sum(R.`DISTANCE`) > 1000 THEN "MEDIUM_CRUISE"
        ELSE 'SHORT_CRUISE'
    END DISTANCE_CLASSFICATION
FROM
    CRUISES C
    LEFT JOIN SHIPS S using(SHIP_ID)
    LEFT JOIN CRUISE_HAS_ROUTES_JT CHR using(CRUISE_ID)
    LEFT JOIN ROUTES_JT R on R.DEPARTURE_HARBOR_ID = CHR.DEPARTURE_HARBOR_ID and R.ARRIVAL_HARBOR_ID = CHR.ARRIVAL_HARBOR_ID
group by C.`CRUISE_ID`;

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
SELECT
    ET.`VALUE` EMPLOYEE_TYPE,
    count(E.`EMPLOYEE_ID`) EMPLOYEE_COUNT
FROM `E_EMPLOYEE_TYPE` ET
LEFT JOIN `EMPLOYEE_ST` E on ET.`VALUE` = E.`EMPLOYEE_TYPE`
GROUP BY ET.`VALUE`
having count(E.`EMPLOYEE_ID`) = (
    SELECT max(EMPLOYEE_COUNT) FROM (
        SELECT count(E.`EMPLOYEE_ID`) EMPLOYEE_COUNT
        FROM `E_EMPLOYEE_TYPE` ET
        LEFT JOIN `EMPLOYEE_ST` E on ET.`VALUE` = E.`EMPLOYEE_TYPE`
        GROUP BY ET.`VALUE`
    ) Q1
);

-- Inner View
WITH Q1 as(
    SELECT
        ET.`VALUE` EMPLOYEE_TYPE,
        count(E.`EMPLOYEE_ID`) EMPLOYEE_COUNT
    FROM `E_EMPLOYEE_TYPE` ET
    LEFT JOIN `EMPLOYEE_ST` E on ET.`VALUE` = E.`EMPLOYEE_TYPE`
    GROUP BY ET.`VALUE`
),
MXA as (
    SELECT max(EMPLOYEE_COUNT) MXA FROM Q1
)
SELECT Q1.* FROM Q1
join MXA on MXA.MXA = Q1.EMPLOYEE_COUNT;

-- endregion

-- ------------------------------------------------------------------------
-- 1.4) Subselect
-- ------------------------------------------------------------------------
-- region

-- Fuer welches Land werden die meisten Haefen gespeichert. Geben Sie die
-- folgenden Spalten aus:

-- Ausgabe: COUNTRY, HARBOR_COUNT

-- Tabellen: HARBORS

select C.`NAME`, count(H.`HARBOR_ID`) HARBOR_COUNT
FROM `E_COUNTRIES` C
LEFT JOIN `HARBORS` H on H.`COUNTRY` = C.`NAME`
GROUP BY C.`NAME`;

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

SELECT B.`BOOKING_ID`, sum(CHS.`PRICE`) TURNOVER
FROM `BOOKINGS` B
NATURAL LEFT JOIN `CRUISE_HAS_BOOKINGS_JT` CHS
WHERE B.`BOOKED_AT` BETWEEN'2007-01-01' AND '2020-12-31'
GROUP BY B.`BOOKING_ID`;


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

with W1 as(
    select C.`CRUISE_ID`, count(CHE.`EMPLOYEE_ID`) EMPLOYEE_COUNT
    FROM `CRUISES` C
    NATURAL LEFT JOIN `CRUISE_HAS_EMPLOYEES_JT` CHE
    GROUP BY C.`CRUISE_ID`
    having count(CHE.`EMPLOYEE_ID`) = (
        SELECT max(EMPLOYEE_COUNT) FROM (
            select count(CHE.`EMPLOYEE_ID`) EMPLOYEE_COUNT
            FROM `CRUISES` C
            NATURAL LEFT JOIN `CRUISE_HAS_EMPLOYEES_JT` CHE
            GROUP BY C.`CRUISE_ID`
        ) Q1
    )
),
ROLE_COUNT as(
    select W1.CRUISE_ID, ER.`value` EMPLOYEE_ROLE, count(CHE.`EMPLOYEE_ID`) EMPLOYEE_COUNT
    from `CRUISES` C
    natural join W1
    NATURAL LEFT JOIN `CRUISE_HAS_EMPLOYEES_JT` CHE
    LEFT JOIN `E_EMPLOYEE_ROLE` ER on ER.`value` = CHE.`EMPLOYEE_ROLE`
    GROUP BY W1.CRUISE_ID, ER.`value`
)
SELECT RC.* FROM ROLE_COUNT RC
where RC.EMPLOYEE_COUNT = (
    SELECT max(EMPLOYEE_COUNT) FROM ROLE_COUNT where `CRUISE_ID` = RC.CRUISE_ID
);

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

with EMPLOYEE_COUNT as(
    SELECT C.`CRUISE_ID`, count(CHE.`EMPLOYEE_ID`) XQC
    from `CRUISES` C
    LEFT JOIN `CRUISE_HAS_EMPLOYEES_JT` CHE on CHE.`CRUISE_ID` = C.`CRUISE_ID`
    GROUP BY C.`CRUISE_ID`
),
BOOKING_COUNT as(
    SELECT
        C.`CRUISE_ID`,
        count(CHB.`BOOKING_ID`) XQC,
        sum(CHB.`PRICE`) SALES
    from `CRUISES` C
    LEFT JOIN `CRUISE_HAS_BOOKINGS_JT` CHB on CHB.`CRUISE_ID` = C.`CRUISE_ID`
    GROUP BY C.`CRUISE_ID`
),
DISTANCE as(
    SELECT
        C.`CRUISE_ID`,
        sum(R.`DISTANCE`) XQC
    FROM `CRUISES` C
    LEFT JOIN `CRUISE_HAS_ROUTES_JT` CHR on CHR.`CRUISE_ID` = C.`CRUISE_ID`
    left join `ROUTES_JT` R using(`DEPARTURE_HARBOR_ID`, `ARRIVAL_HARBOR_ID`)
    GROUP BY C.`CRUISE_ID`
)
SELECT
    C.`CRUISE_ID`,
    C.`LABEL`,
    C.`DATE_OF_DAPARTURE`,
    C.`DATE_OF_ARRIVAL` - C.`DATE_OF_DAPARTURE`  DURATION,
    EC.XQC EMPLOYEE_COUNT,
    BC.XQC BOOKING_COUNT,
    BC.SALES,
    BC.XQC BOOKED_CABINS, -- ist ident mit BOOKING_COUNT
    D.XQC DISTANCE
FROM
    `CRUISES` C
    left join EMPLOYEE_COUNT EC on EC.`CRUISE_ID` = C.`CRUISE_ID`
    left join BOOKING_COUNT BC on BC.`CRUISE_ID` = C.`CRUISE_ID`
    left join DISTANCE D on D.`CRUISE_ID` = C.`CRUISE_ID`
GROUP BY C.`CRUISE_ID`
ORDER BY C.`LABEL`;

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

select TYPE
FROM `E_SHIP_CLASSIFICATION` SC
WHERE EXISTS(
    SELECT * FROM
    `SHIPS` S
    JOIN `CRUISES` C on C.`SHIP_ID` = S.`SHIP_ID`
    WHERE S.`SHIP_CLASSIFICATION` = SC.`TYPE`
);

-- endregion

-- ------------------------------------------------------------------------
-- 2.3) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Finden Sie alle Häfen die zumindestens auf einer Route liegen.

-- Ausgabe: HARBOR_ID, NAME, COUNTRY


-- Tables: HARBORS, ROUTES_JT

SELECT
    H.HARBOR_ID,
    H.`NAME`,
    H.`COUNTRY`
FROM
    `HARBORS` H
WHERE EXISTS(
    SELECT *
    FROM `ROUTES_JT` R
    WHERE R.`ARRIVAL_HARBOR_ID` = H.`HARBOR_ID` or R.`DEPARTURE_HARBOR_ID` = H.`HARBOR_ID`
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

SELECT
    H.HARBOR_ID,
    H.`NAME`,
    H.`COUNTRY`
FROM
    `HARBORS` H
WHERE not EXISTS(
    SELECT *
    FROM `ROUTES_JT` R
    WHERE R.`ARRIVAL_HARBOR_ID` = H.`HARBOR_ID` or R.`DEPARTURE_HARBOR_ID` = H.`HARBOR_ID`
);

-- endregion

-- ------------------------------------------------------------------------
-- 2.5) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Finden Sie alle Cruises, die zumindestens einmal gebucht worden sind.

-- Ausgabe: CRUISE_ID, LABEL

-- Tables: CRUISES, CRUISE_HAS_BOOKINGS_JT

select
    C.`CRUISE_ID`,
    C.`LABEL`
FROM `CRUISES` C
WHERE EXISTS(
    SELECT *
    FROM `CRUISE_HAS_BOOKINGS_JT` CHB
    where CHB.`CRUISE_ID` = C.`CRUISE_ID`
);

-- endregion

-- ------------------------------------------------------------------------
-- 2.6) EXISTS Klausel
-- ------------------------------------------------------------------------
-- region

-- Finden Sie alle Cruises, für die keine Buchungen vorliegen.

-- Ausgabe: CRUISE_ID, LABEL

-- Tables: CRUISES, CRUISE_HAS_BOOKINGS_JT

select
    C.`CRUISE_ID`,
    C.`LABEL`
FROM `CRUISES` C
WHERE NOT EXISTS(
    SELECT *
    FROM `CRUISE_HAS_BOOKINGS_JT` CHB
    where CHB.`CRUISE_ID` = C.`CRUISE_ID`
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

SELECT
    S.`SHIP_ID`,
    S.`NAME`
FROM `SHIPS` S
WHERE NOT EXISTS(
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

select
    C.`CRUISE_ID`,
    C.`LABEL`
FROM `CRUISES` C
WHERE EXISTS(
    select *
    FROM
        `CRUISE_HAS_ROUTES_JT` CHR
        left join `ROUTES_JT` R using(`ARRIVAL_HARBOR_ID`, `DEPARTURE_HARBOR_ID`)
        left join `HARBORS` H1 on H1.`HARBOR_ID` = R.`ARRIVAL_HARBOR_ID`
        left join `HARBORS` H2 on H2.`HARBOR_ID` = R.`DEPARTURE_HARBOR_ID`
    WHERE
        CHR.`CRUISE_ID` = C.`CRUISE_ID` and
        H1.`CONTINENT` != H2.`CONTINENT`
)

-- Without concat


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

SELECT
    R.`NAME`,
    R.`DISTANCE`
FROM `ROUTES_JT` R
where not EXISTS(
    SELECT *
    FROM `ROUTES_JT` R2
    WHERE R2.`DISTANCE` > R.`DISTANCE`
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


SELECT
    C.`CRUISE_ID`,
    C.`LABEL`
FROM `CRUISES` C
where not EXISTS(
    SELECT *
    from `CRUISE_HAS_ROUTES_JT` CHR
    left join `ROUTES_JT` R using(`DEPARTURE_HARBOR_ID`, `ARRIVAL_HARBOR_ID`)
    where
        CHR.`CRUISE_ID` = C.`CRUISE_ID` and
        R.`DISTANCE` <= 500
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

SELECT C.`NAME`
FROM `E_COUNTRIES` C
where exists(
    SELECT *
    FROM `HARBORS` H
    where H.COUNTRY = C.`NAME` AND
    not EXISTS(
        SELECT * FROM
        `ROUTES_JT` R
        where R.`DEPARTURE_HARBOR_ID` = H.`HARBOR_ID` or
        R.`ARRIVAL_HARBOR_ID` = H.`HARBOR_ID`
    )
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

SELECT
    S.`SHIP_ID`,
    S.`NAME`,
    count(C.`CRUISE_ID`) USE_COUNT
FROM `SHIPS` S
LEFT JOIN `CRUISES` C on C.`SHIP_ID` = S.`SHIP_ID`
GROUP BY S.`SHIP_ID`
HAVING not EXISTS(
    SELECT S2.`SHIP_ID`
    FROM `SHIPS` S2
    LEFT JOIN `CRUISES` C2 on C2.`SHIP_ID` = S2.`SHIP_ID`
    GROUP BY S2.`SHIP_ID`
    having count(C2.`CRUISE_ID`) > count(C.`CRUISE_ID`)
);

-- endregion
