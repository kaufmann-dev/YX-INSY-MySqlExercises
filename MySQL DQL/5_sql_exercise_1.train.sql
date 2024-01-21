use PROJECTS;
show tables;

-- ---------------------------------------------------------------------- -
-- 1. Beispiel: Subselect (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie das Subprojekt mit dem hoechsten Wert fuer den FOCUS_RESEARCH.
-- Geben Sie fuer das Subprojekt die folgenden Spalten aus:
-- DESCRIPTION, PROJECT_ID, FOCUS_RESEARCH

-- Hinweis: Beachten Sie dass es mehrere Subprojekte mit einem maximalen
--          FOCUS_RESEARCH Wert geben kann.

-- Formulieren Sie die Abfrage einmal als INNERE VIEW und einmal als
-- konditionale Unterabfrage.

-- Tabellen: SUBPROJECTS

-- 1.Abfrage
-- konditionale Abfrage

SELECT PBT.PROJECT_ID, PBT.DESCRIPTION, SUM(SP.FOCUS_RESEARCH) FOCUS_RESEARCH
FROM PROJECTS_BT PBT
LEFT JOIN SUBPROJECTS SP using(PROJECT_ID)
GROUP BY PBT.PROJECT_ID
having SUM(SP.FOCUS_RESEARCH) = (
    select max(FOCUS_RESEARCH) from (
        SELECT SUM(SP.FOCUS_RESEARCH) FOCUS_RESEARCH
        FROM PROJECTS_BT PBT
        LEFT JOIN SUBPROJECTS SP using(PROJECT_ID)
        GROUP BY PBT.PROJECT_ID
    ) SUB1
);
-- 2.Abfrage
-- innere View
with Q1 as (
    SELECT PBT.PROJECT_ID, SUM(SP.FOCUS_RESEARCH) SUMM
    FROM `PROJECTS_BT` PBT
    join SUBPROJECTS SP using(PROJECT_ID)
    GROUP BY PBT.PROJECT_ID
),
MXA as(
    SELECT max(SUMM) MXA
    FROM Q1
)
SELECT Q1.PROJECT_ID, Q1.SUMM
    FROM Q1
    join MXA on MXA.MXA = Q1.SUMM;

-- endregion

-- ---------------------------------------------------------------------- -
-- 2. Beispiel: Subselect (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Mit welcher LEGAL_FOUNDATION werden die meisten Projekte umgesetzt. Geben
-- Sie die LEGAL_FOUNDATION und die Anzahl der Projekte mit der entsprechenden
-- LEGAL_FOUNDATION aus.

-- Geben Sie die folgenden Spalten aus: LEGAL_FOUNDATION, PROJECT_COUNT

-- Tabellen: PROJECTS_BT

-- 1.Abfrage

SELECT * from `E_LEGAL_FOUNDATIONS`;
SELECT * from `PROJECTS_BT`;

SELECT PBT.LEGAL_FOUNDATION, count(PBT.PROJECT_ID) PROJECT_COUNT FROM
PROJECTS_BT PBT
GROUP BY PBT.LEGAL_FOUNDATION;

-- endregion

-- ---------------------------------------------------------------------- -
-- 3. Beispiel: Subselect (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie das Projekt mit den meisten Subprojekten. Geben Sie fuer das
-- Projekt die folgenden Spalten aus: TITLE, SUBPROJECT_COUNT

-- @SUBPROJECT_COUNT: Gibt die Anzahl der Subprojekte eines Projekts an.

-- Hinweis: Ein Projekt besteht aus mehreren Subprojekten.

-- Tabellen: PROJECTS_BT, SUBPROJECTS

SELECT * from `SUBPROJECTS`;
SELECT * from `PROJECTS_BT`;

-- with cte
with Q1 as(
    SELECT PBT.PROJECT_ID, count(SP.SUBPROJECT_ID) SUBPROJECT_COUNT
    FROM `PROJECTS_BT` PBT
    LEFT JOIN SUBPROJECTS SP using(PROJECT_ID)
    GROUP BY PBT.PROJECT_ID
)
SELECT PBT.PROJECT_ID, PBT.TITLE, Q1.SUBPROJECT_COUNT
FROM PROJECTS_BT PBT
LEFT JOIN Q1 using(PROJECT_ID)
WHERE Q1.SUBPROJECT_COUNT = (SELECT max(SUBPROJECT_COUNT) from Q1);

-- with subselect
SELECT PBT.PROJECT_ID, count(SP.SUBPROJECT_ID) SUBPROJECT_COUNT
FROM `PROJECTS_BT` PBT
LEFT JOIN SUBPROJECTS SP using(PROJECT_ID)
GROUP BY PBT.PROJECT_ID
having count(SP.SUBPROJECT_ID) = (
    SELECT max(SUBPROJECT_COUNT)
    FROM (
        SELECT PBT.PROJECT_ID, count(SP.SUBPROJECT_ID) SUBPROJECT_COUNT
        FROM `PROJECTS_BT` PBT
        LEFT JOIN SUBPROJECTS SP using(PROJECT_ID)
        GROUP BY PBT.PROJECT_ID
    ) Q1
);

-- endregion

-- ---------------------------------------------------------------------- -
-- 4. Beispiel: Subselect (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Welches Forschungsfoerderungsprojekt besitzt die meisten Foerderungsprogramme?

-- Hinweis: Forschungsfoerderungsprojekte werden in der RESEARCH_FUNDING_PROJECTS
--          Tabelle gespeichert.

-- Hinweis: Ob ein Projekt in einem Foerderungsprogramm ist wird in folgenden
--          Spalten gespeichert: IS_EU_SPONSORED, IS_FWF_SPONSORED, IS_FFG_SPONSORED.
--          Ist fuer einen Projekt Datensatz in einer der 3 Spalten eine 1 eingetragen
--          wird das Projekt vom entsprechenden Foerderungsprogramm unterstuetzt.

-- Ausgabe: TITLE, PROGRAMM_COUNT

-- @PROGRAMM_COUNT: Die Spalte gibt die Anzahl der Foerderprogramme aus.

-- Tabellen: PROJECTS_BT, RESEARCH_FUNDING_PROJECTS

with Q1 as(
    SELECT
        PBT.PROJECT_ID,
        RES.IS_EU_SPONSORED + RES.IS_FFG_SPONSORED + RES.IS_FWF_SPONSORED PROGRAMM_COUNT
    FROM PROJECTS_BT PBT
    NATURAL JOIN RESEARCH_FUNDING_PROJECTS RES
)
SELECT
    PBT.PROJECT_ID,
    RES.IS_EU_SPONSORED + RES.IS_FFG_SPONSORED + RES.IS_FWF_SPONSORED PROGRAMM_COUNT
FROM PROJECTS_BT PBT
NATURAL JOIN RESEARCH_FUNDING_PROJECTS RES
having PROGRAMM_COUNT = (
    SELECT max(PROGRAMM_COUNT) FROM Q1
)

-- endregion

-- ---------------------------------------------------------------------- -
-- 5. Beispiel: Subselect (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie das Projekt mit der hoechsten Projektfoerderung.

-- Hinweis: Die Projektfoerderung wird in der PROJECT_DEBIOTRS Tabelle verwaltet. Ein
--          PROJECT_DEBITORS Datensatz beschreibt welches Projekt von welchem Geldgeber mit
--          welchem Geldbetrag unterstuetzt wird.

-- Ausgabe: TITLE, FUNDING_AMOUNT

-- @FUNDING_AMOUNG: Die gesamte Projektfoerderung eines Projekts

-- Tabellen: PROJECTS, PROJECT_DEBITORS

with FAMOUNT as(
    SELECT PBT.PROJECT_ID, sum(PD.AMOUNT) FUNDING_AMOUNT
    FROM `PROJECTS_BT` PBT
    NATURAL LEFT JOIN PROJECT_HAS_DEBITORS_JT PD
    GROUP BY PBT.PROJECT_ID
)
SELECT PBT.PROJECT_ID, PBT.TITLE, sum(PD.AMOUNT) FUNDING_AMOUNT
FROM `PROJECTS_BT` PBT
NATURAL LEFT JOIN PROJECT_HAS_DEBITORS_JT PD
GROUP BY PBT.PROJECT_ID
having sum(PD.AMOUNT) = (
    SELECT max(FUNDING_AMOUNT) FROM FAMOUNT
);

-- endregion

-- ---------------------------------------------------------------------- -
-- 6. Beispiel: Subselect (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie für jedes Projekt das Subprojekt mit dem höchsten Wert für
-- APPLIED_RESEARCH. Sortieren Sie das Ergebnis nach der PROJECT_ID


-- Ausgabe: PROJECT_ID, TITLE, SUBPROJECT_ID, APPLIED_RESEARCH

-- Tabellen: PROJECTS_BT, SUBPROJECTS
with MAX_AR as(
    SELECT PBT.PROJECT_ID, max(SP.APPLIED_RESEARCH) MAX_AR
    FROM PROJECTS_BT PBT
    JOIN SUBPROJECTS SP using(PROJECT_ID)
    GROUP BY PBT.PROJECT_ID
)
SELECT PBT.PROJECT_ID, SP.SUBPROJECT_ID AR, SP.APPLIED_RESEARCH
FROM PROJECTS_BT PBT
JOIN SUBPROJECTS SP using(PROJECT_ID)
WHERE SP.APPLIED_RESEARCH = (
    SELECT MAX_AR
    FROM MAX_AR
    WHERE MAX_AR.PROJECT_ID = PBT.PROJECT_ID
)
ORDER BY PBT.PROJECT_ID;

-- endregion

-- ---------------------------------------------------------------------- -
-- 7. Beispiel: Subselect (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie an wieviele Projekte es pro Projekttyp gibt.

-- Hinweis: Es existieren 3 Projekttypen
--
--          Forschungsförderungsprojekte -> RESEARCH_FUNDING_PROJECTS
--          Auftragsforschungsprojekte   -> REQEUST_FUNDING_PROJECTS
--          Managementprojekte           -> MANAGEMENT_PROJECTS


-- Ausgabe: PROJECT_TYPE, AMOUNT

--          @PROJECT_TPYE: Je nach Projekttyp wird eine andere Zeichenkette
--                         ausgegeben.
--
--          Forschungsförderungsprojekte -> RESEARCH_FUNDING
--          Auftragsforschungsprojekte   -> REQEUST_FUNDING
--          Managementprojekte           -> MANAGEMENT

--          @AMOUNT: Anzahl der Projekte je nach PROJECT_TYPE


-- Tabellen: PROJECTS_BT, REQUEST_FUNDING_PROJECTS, RESEARCH_FUNDING_PROJECTS
--           MANAGEMENT_PROJECTS

SELECT
    case
        when REQ.PROJECT_ID is not null then 'REQEUST_FUNDING'
        when RES.PROJECT_ID is not null then 'RESEARCH_FUNDING'
        when MGMT.PROJECT_ID is not null then 'MANAGEMENT'
        end PROJECT_TYPE,
    count(PBT.PROJECT_ID) AMOUNT
FROM `PROJECTS_BT` PBT
NATURAL LEFT JOIN RESEARCH_FUNDING_PROJECTS RES
NATURAL LEFT JOIN REQUEST_FUNDING_PROJECTS REQ
NATURAL LEFT JOIN MANAGEMENT_PROJECTS MGMT
GROUP BY PROJECT_TYPE

-- endregion

-- ---------------------------------------------------------------------- -
-- 6. Beispiel: Subselect (2.Punkte)
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie fuer jeden Projekttypen das Projekt mit der hoechsten Projektfoerderung.

-- Hinweis: Es gibt 2 Projekttypen -> REQUEST_FUNDING_PROJECTS, RESEARCH_FUNDING_PROJECTS

-- Hinweis: Die Projektfoerderung wird in der PROJECT_DEBIOTRS Tabelle verwaltet. Ein
--          PROJECT_DEBITORS Datensatz beschreibt welches Projekt von welchem Geldgeber mit
--          welchem Geldbetrag unterstuetzt wird.

-- Ausgabe: PROJECT_TYPE, TITLE, PROJECT_FUNDING

-- @PROJECT_TYPE: Ist ein Projekt ein REQUEST_FUNDING_PROJECT wird die Zeichenkette 'REQUEST_FUNDING'
--                ausgegeben. Fuer RESEARCH_FUNDING_PROJECTs wird die Zeichenkette 'RESEARCH_FUNDING'
--                ausgegeben.

-- @PROJECT_FUNDING: Die gesamte Projektfoerderung eines Projekts

-- Tabellen: PROJECTS, REQUEST_FUNDING_PROJECTS, RESEARCH_FUNDING_PROJECTS, PROJECT_DEBITORS

with Q1 as(
    SELECT
        PBT.PROJECT_ID,
        PBT.TITLE,
        sum(PD.AMOUNT) PROJECT_FUNDING,
        CASE 
            when REQ.PROJECT_ID is not null then 'REQEUST_FUNDING'
            when RES.PROJECT_ID is not null then 'RESEARCH_FUNDING'
            END as PROJECT_TYPE
    FROM
        PROJECTS_BT PBT
        NATURAL LEFT JOIN PROJECT_HAS_DEBITORS_JT PD
        NATURAL LEFT JOIN RESEARCH_FUNDING_PROJECTS RES
        NATURAL LEFT JOIN REQUEST_FUNDING_PROJECTS REQ
        GROUP BY PBT.PROJECT_ID
    ORDER BY PBT.PROJECT_ID
),
MXA as(
    SELECT
        PROJECT_TYPE,
        MAX(PROJECT_FUNDING) MAX_PROJECT_FUNDING
    FROM Q1
    GROUP BY PROJECT_TYPE
)
SELECT *
FROM Q1
WHERE Q1.PROJECT_FUNDING = (
    SELECT MAX_PROJECT_FUNDING FROM MXA
    WHERE PROJECT_TYPE = Q1.PROJECT_TYPE
)
-- endregion
