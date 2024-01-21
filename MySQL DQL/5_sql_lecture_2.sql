use PROJECTS;
-- ------------------------------------------------------------------------
-- 2.1) UNION Klausel
-- ------------------------------------------------------------------------
-- region

-- Geben Sie für jeden Projekttyp die Anzahl der zugeordneten Projekte an.

-- Ausgage: PROJECT_TYPE, PROJECT_COUNT

--         @PROJECT_TYPE: REQUEST_FUNDING_PROJECTS  -> REQUEST
--                        RESEARCH_FUNDING_PROJECTS -> RESEARCH
--                        MANAGEMENT_PROJECTS       -> MANAGEMENT

--         @PROJECT_COUNT: Anzahl der zugeordneten Projekte


-- Hinweis: Basistabelle -> PROJECTS_BT


-- Tables: PROJECTS_BT, REQUEST_FUNDING_PROJECTS, RESEARCH_FUNDING_PROJECTS, MANAGEMENT_PROJECTS

SELECT 'REQUEST' AS PROJECT_TYPE, COUNT(*) AS PROJECT_COUNT FROM REQUEST_FUNDING_PROJECTS
UNION
SELECT 'RESEARCH' AS PROJECT_TYPE, COUNT(*) AS PROJECT_COUNT FROM RESEARCH_FUNDING_PROJECTS
UNION
SELECT 'MANAGEMENT' AS PROJECT_TYPE, COUNT(*) AS PROJECT_COUNT FROM MANAGEMENT_PROJECTS;

-- endregion

-- ---------------------------------------------------------------------- -
-- 2.2 Union Klausel
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie fuer jedes Projekt die folgenden Spalten aus: PROJECT_ID, TITLE, EVENT, EVENT_TYPE, DATE_OF_EVENT.
-- Sortieren Sie das Ergebnis nach der PROJECT_ID UND DEM DATE_OF_EVENT.

-- @EVENT: Fuer jedes Projekt sollen alle Events (PROJECT_STATE) der
--         PROJECT_HAS_STATES_JT Tabelle gemeinsam mit den Events der
--         zugeordneten Subprojekte ausgegeben werden.

-- @EVENT_TYPE: Gegen Sie 'PROJECT' fuer Projektevents und
--              'SUBPROJECT' fuer Subprojektevents aus

-- @DATE_OF_EVENT: Der Zeitpunkt an dem das Event eingetreten ist.


-- Tabellen: PROJECTS, PROJECT_HAS_STATES_JT, SUBPROJECTS,
--           SUBPROJECT_HAS_STATES_JT

SELECT
    PBT.`PROJECT_ID`,
    PBT.`TITLE`,
    PHS.`PROJECT_STATE` EVENT,
    'PROJECT' EVENT_TYPE,
    PHS.`STATE_CHANGED_AT` DATE_OF_EVENT
FROM
    `PROJECTS_BT` PBT
    natural join `PROJECT_HAS_STATES_JT` PHS
UNION
SELECT
    PBT.`PROJECT_ID`,
    PBT.`TITLE`,
    SPHS.`SUBPROJECT_STATE` EVENT,
    'SUBPROJECT' EVENT_TYPE,
    SPHS.`STATE_CHANGED_AT` DATE_OF_EVENT
FROM
    `PROJECTS_BT` PBT
    join `SUBPROJECTS` SP using(`PROJECT_ID`)
    natural join `SUBPROJECT_HAS_STATES_JT` SPHS
ORDER BY PROJECT_ID, DATE_OF_EVENT;

-- ---------------------------------------------------------------------- -
-- 2.3 Beispiel: UNION, EXISTS Klausel
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie fuer jedes Projekt die folgenden Daten aus: PROJECT_ID, TITLE
-- PROJECT_BEGIN, PROJECT_END, DAY_COUNT

-- Hinweis: Sie duerfen zur Lösung der Aufgabe die GROUP BY Klausel nicht
--          verwenden.

-- @PROJECT_BEGIN: CREATED_AT

-- @PROJECT_END: Das Projektende entspricht dem letzten Statuswechsel
--               der Subprojekte des Projekts. Hat ein Projekt keine
--               zugeordneten Subprojekte wird das Datum des letzten
--               Statuswechsels des Projekts bestimmt.

-- Tabellen: PROJECTS, PROJECT_HAS_STATES_JT, SUBPROJECTS, SUBPROJECTS_HAS_STATES_JT

-- Without EXISTS and UNION
select
    P.`PROJECT_ID`,
    P.TITLE,
    P.CREATED_AT PROJECT_BEGIN,
    CASE 
        WHEN count(SPHS.`SUBPROJECT_ID`) > 0 THEN max(SPHS.`STATE_CHANGED_AT`)
        ELSE max(PHS.`STATE_CHANGED_AT`)
        END as PROJECT_END
from
    `PROJECTS_BT` P
    natural left join `PROJECT_HAS_STATES_JT` PHS
    left join `SUBPROJECTS` SP on SP.`PROJECT_ID` = P.`PROJECT_ID`
    left join `SUBPROJECT_HAS_STATES_JT` SPHS on SPHS.`SUBPROJECT_ID` = SP.`SUBPROJECT_ID`
GROUP BY
    P.`PROJECT_ID`
;

-- With EXISTS and UNION
SELECT
    P.`PROJECT_ID`,
    P.TITLE,
    P.CREATED_AT PROJECT_BEGIN,
    MAX(SPHS.`STATE_CHANGED_AT`) AS PROJECT_END
FROM
    `PROJECTS_BT` P
    JOIN `SUBPROJECTS` SP ON P.`PROJECT_ID` = SP.`PROJECT_ID`
    JOIN `SUBPROJECT_HAS_STATES_JT` SPHS ON SP.`SUBPROJECT_ID` = SPHS.`SUBPROJECT_ID`

GROUP BY P.`PROJECT_ID`

UNION

SELECT
    P.`PROJECT_ID`,
    P.TITLE,
    P.CREATED_AT PROJECT_BEGIN,
    MAX(PHS.`STATE_CHANGED_AT`) AS PROJECT_END
FROM
    `PROJECTS_BT` P
    JOIN `PROJECT_HAS_STATES_JT` PHS ON P.`PROJECT_ID` = PHS.`PROJECT_ID`
WHERE
    NOT EXISTS (
        SELECT 1
        FROM `SUBPROJECTS` SP
        WHERE SP.`PROJECT_ID` = P.`PROJECT_ID`
    )
GROUP BY P.`PROJECT_ID`, P.TITLE, P.CREATED_AT

ORDER BY PROJECT_ID;

-- endregion


-- ------------------------------------------------------------------------
-- 2.4) UNION Klausel
-- ------------------------------------------------------------------------
-- region

-- Geben Sie für jeden Projekttyp das Projekt mit der höchsten Projekt-
-- förderung an.

-- Ausgage: PROJECT_TYPE, PROJECT_ID, FUNDING_AMOUNT

--         @PROJECT_TYPE: REQUEST_FUNDING_PROJECTS  -> REQUEST
--                        RESEARCH_FUNDING_PROJECTS -> RESEARCH
--                        MANAGEMENT_PROJECTS       -> MANAGEMENT

--         @PROJECT_ID : Die PROJECT_ID des Projekts mit der höchsten
--                       Projektförderung für den entsprechenden
--                       PROJECT_TYPE

--         @FUNDING_AMOUNT: Die Projektförderung des Projekts mit der
--                          höchsten Projektförderung


-- Tables: PROJECTS_BT, REQUEST_FUNDING_PROJECTS, RESEARCH_FUNDING_PROJECTS, MANAGEMENT_PROJECTS
--         PROJECT_DEBITORS

WITH Q1 AS(
    SELECT
        'RESEARCH_FUNDING_PROJECTS' PROJECT_TYPE,
        PBT.`PROJECT_ID`,
        sum(PD.`AMOUNT`) FUNDING_AMOUNT
    FROM
        `RESEARCH_FUNDING_PROJECTS` RFP
        NATURAL join `PROJECTS_BT` PBT
        join `PROJECT_HAS_DEBITORS_JT` PD on PD.`PROJECT_ID` = PBT.`PROJECT_ID`
    GROUP BY PBT.`PROJECT_ID`
),
MXA AS(
    SELECT max(FUNDING_AMOUNT) MAX_FUNDING_AMOUNT
    from Q1
),
Q2 AS(
    SELECT
        'REQUEST_FUNDING_PROJECTS' PROJECT_TYPE,
        PBT.`PROJECT_ID`,
        sum(PD.`AMOUNT`) FUNDING_AMOUNT
    FROM
        `REQUEST_FUNDING_PROJECTS` RFP
        NATURAL join `PROJECTS_BT` PBT
        join `PROJECT_HAS_DEBITORS_JT` PD on PD.`PROJECT_ID` = PBT.`PROJECT_ID`
    GROUP BY PBT.`PROJECT_ID`
),
MXA2 AS(
    SELECT max(FUNDING_AMOUNT) MAX_FUNDING_AMOUNT
    from Q2
),
Q3 AS(
    SELECT
        'MANAGEMENT_PROJECTS' PROJECT_TYPE,
        PBT.`PROJECT_ID`,
        sum(PD.`AMOUNT`) FUNDING_AMOUNT
    FROM
        `MANAGEMENT_PROJECTS` RFP
        NATURAL join `PROJECTS_BT` PBT
        join `PROJECT_HAS_DEBITORS_JT` PD on PD.`PROJECT_ID` = PBT.`PROJECT_ID`
    GROUP BY PBT.`PROJECT_ID`
),
MXA3 AS(
    SELECT max(FUNDING_AMOUNT) MAX_FUNDING_AMOUNT
    from Q3
)
SELECT Q1.*
from Q1
join MXA on MXA.MAX_FUNDING_AMOUNT = Q1.FUNDING_AMOUNT

UNION

SELECT Q2.*
from Q2
join MXA2 on MXA2.MAX_FUNDING_AMOUNT = Q2.FUNDING_AMOUNT

UNION

SELECT Q3.*
from Q3
join MXA3 on MXA3.MAX_FUNDING_AMOUNT = Q3.FUNDING_AMOUNT;

-- endregion

-- ------------------------------------------------------------------------
-- 2.5) INTERSECT Klausel
-- ------------------------------------------------------------------------
-- region

-- Geben Sie alle Projekte aus die eine Forgängerprojekt haben und deren
-- Projektförderung höher ist als 50000

-- Ausgage: PROJECT_ID, TITLE


-- Tables: PROJECTS_BT, PROJECT_FORERUNNERS_JT, PROJECT_HAS_DEBITORS_JT

SELECT PBT.PROJECT_ID,
       PBT.TITLE
FROM PROJECTS_BT PBT
LEFT JOIN PROJECT_HAS_DEBITORS_JT PD on PBT.PROJECT_ID = PD.PROJECT_ID
GROUP BY PBT.PROJECT_ID
HAVING sum(PD.AMOUNT) > 50000

INTERSECT

SELECT PBT.PROJECT_ID,
       PBT.TITLE
FROM PROJECTS_BT PBT
JOIN PROJECT_FORERUNNERS_JT PF on PBT.PROJECT_ID = PF.PROJECT_ID
;
-- With intersect
SELECT PBT.`PROJECT_ID`, PBT.`TITLE`
FROM `PROJECTS_BT` PBT
NATURAL JOIN `PROJECT_HAS_DEBITORS_JT` PD
GROUP BY PBT.`PROJECT_ID`
HAVING SUM(PD.`AMOUNT`) > 50000

INTERSECT

SELECT PF.`PROJECT_ID`, PBT.`TITLE` 
FROM `PROJECT_FORERUNNERS_JT` PF
NATURAL JOIN `PROJECTS_BT` PBT;

-- With inner join
SELECT PBT.`PROJECT_ID`, PBT.`TITLE`
FROM `PROJECTS_BT` PBT
NATURAL JOIN `PROJECT_FORERUNNERS_JT` PF
NATURAL JOIN `PROJECT_HAS_DEBITORS_JT` PD
GROUP BY PBT.`PROJECT_ID`
HAVING SUM(PD.`AMOUNT`) > 50000;

-- endregion

-- ------------------------------------------------------------------------
-- 2.6) INTERSECT Klausel
-- ------------------------------------------------------------------------
-- region

-- Finden Sie alle Geldgeber die ausschließlich REQUEST_FUNDING_PROJECTS umsetzen und
-- insgesamt einen Umsatz von mindestens 20000 an Fördergeldern investiert
-- haben.

-- Ausgabe: DEBITOR_ID, NAME


-- Tables: DEBIORS, PROJECT_HAS_DEBITORS_JT, REQUEST_FUNDING_PROJECTS

SELECT * FROM
REQUEST

SELECT D.`DEBITOR_ID`
FROM `DEBITORS` D

INTERSECT

SELECT PD.`DEBITOR_ID`
FROM `PROJECTS_BT` PBT
NATURAL LEFT JOIN `MANAGEMENT_PROJECTS` MGMT
NATURAL LEFT JOIN `RESEARCH_FUNDING_PROJECTS` REF
NATURAL LEFT JOIN `REQUEST_FUNDING_PROJECTS` REQ
JOIN `PROJECT_HAS_DEBITORS_JT` PD on PD.`PROJECT_ID` = PBT.`PROJECT_ID`
WHERE MGMT.`PROJECT_ID` IS NULL AND
REF.`PROJECT_ID` IS NULL AND
REQ.`PROJECT_ID` IS NOT NULL
GROUP BY PD.`DEBITOR_ID`
HAVING SUM(PD.`AMOUNT`) > 20000;

-- endregion

-- ------------------------------------------------------------------------
-- 2.7) MINUS Klausel
-- ------------------------------------------------------------------------
-- region

-- Geben Sie alle Projekte die weder Management- noch Researchfundingprojekte
-- sind.

-- Ausgabe: PROJECT_ID, TITLE


-- Tables: PROJECT_BT, MANAGEMENT_PROJECT, RESEARCH_FUNDING_PROJECTS

SELECT PBT.PROJECT_ID, PBT.`TITLE`
FROM `PROJECTS_BT` PBT

EXCEPT

SELECT MGMT.`PROJECT_ID`, PBT.`TITLE`
FROM `MANAGEMENT_PROJECTS` MGMT
NATURAL JOIN `PROJECTS_BT` PBT

EXCEPT

SELECT RES.`PROJECT_ID`, PBT.`TITLE`
FROM `RESEARCH_FUNDING_PROJECTS` RES
NATURAL JOIN `PROJECTS_BT` PBT

ORDER BY `PROJECT_ID`;

-- endregion
SELECT PBT.PROJECT_ID,
       PBT.TITLE
FROM PROJECTS_BT PBT

EXCEPT

select MGMT.PROJECT_ID
FROM MANAGEMENT_PROJECTS MGMT

EXCEPT

select RES.PROJECT_ID
FROM RESEARCH_FUNDING_PROJECTS RES
;