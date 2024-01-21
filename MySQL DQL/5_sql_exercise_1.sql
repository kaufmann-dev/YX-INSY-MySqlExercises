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
SELECT `PROJECT_ID`, `DESCRIPTION`, `FOCUS_RESEARCH`
from `SUBPROJECTS`
WHERE `FOCUS_RESEARCH` = (
    select max(`FOCUS_RESEARCH`)
    from `SUBPROJECTS`
);

-- 2.Abfrage
-- innere View
with MLP as (
    select max(`FOCUS_RESEARCH`) amx
    from `SUBPROJECTS`
)
SELECT SP.`PROJECT_ID`, SP.`DESCRIPTION`, SP.`FOCUS_RESEARCH`
from `SUBPROJECTS` SP
join MLP ON MLP.amx = SP.`FOCUS_RESEARCH`;


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

with gaga as (
    with mxa as(
        SELECT PBT.LEGAL_FOUNDATION, COUNT(PBT.`PROJECT_ID`) gogo
        from `PROJECTS_BT` PBT
        GROUP BY `LEGAL_FOUNDATION`
    )
    SELECT max(gogo) gigi
    from mxa
),
gugu as (
    SELECT PBT.LEGAL_FOUNDATION, COUNT(PBT.`PROJECT_ID`) gogo
    from `PROJECTS_BT` PBT
    GROUP BY `LEGAL_FOUNDATION`
)
SELECT gugu.LEGAL_FOUNDATION, gugu.gogo PROJECT_COUNT
from gugu
join gaga on gaga.gigi = gugu.gogo;

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
with Q1 AS(
    SELECT PBT.`PROJECT_ID`, count(SP.`PROJECT_ID`) SUBPROJECT_COUNT
    from `PROJECTS_BT` PBT
    join `SUBPROJECTS` SP on PBT.`PROJECT_ID` = SP.`PROJECT_ID`
    GROUP BY PBT.`PROJECT_ID`
),
MXA AS(
    select max(SUBPROJECT_COUNT) MAX_SUBPROJECT_COUNT
    from Q1
)
SELECT Q1.* from Q1
join MXA on MXA.MAX_SUBPROJECT_COUNT = Q1.SUBPROJECT_COUNT;

-- with subselect
SELECT PBT.`PROJECT_ID`, count(SP.`PROJECT_ID`) SUBPROJECT_COUNT
from `PROJECTS_BT` PBT
join `SUBPROJECTS` SP on PBT.`PROJECT_ID` = SP.`PROJECT_ID`
GROUP BY PBT.`PROJECT_ID`
HAVING SUBPROJECT_COUNT = (
    select max(SUBPROJECT_COUNT) MAX_SUBPROJECT_COUNT
    from (
        SELECT PBT.`PROJECT_ID`, count(SP.`PROJECT_ID`) SUBPROJECT_COUNT
        from `PROJECTS_BT` PBT
        join `SUBPROJECTS` SP on PBT.`PROJECT_ID` = SP.`PROJECT_ID`
        GROUP BY PBT.`PROJECT_ID`
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

with Q1 as (
SELECT `PROJECT_ID`, (`IS_EU_SPONSORED` + `IS_FFG_SPONSORED` + `IS_FWF_SPONSORED`) PROGRAMM_COUNT
from `RESEARCH_FUNDING_PROJECTS`
),
MXA as (
    select max(PROGRAMM_COUNT) MAX_FUNDING_COUNT
    from Q1
)
SELECT PBT.TITLE, Q1.PROGRAMM_COUNT from Q1
join MXA on Q1.PROGRAMM_COUNT = MXA.MAX_FUNDING_COUNT
natural join `PROJECTS_BT` PBT;

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

SELECT PBT.`TITLE`, round(sum(PD.AMOUNT)) FUNDING_AMOUNT
from `PROJECT_HAS_DEBITORS_JT` PD
NATURAL JOIN `PROJECTS_BT` PBT
GROUP BY PD.`PROJECT_ID`;

-- endregion

-- ---------------------------------------------------------------------- -
-- 6. Beispiel: Subselect (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie für jedes Projekt das Subprojekt mit dem höchsten Wert für
-- APPLIED_RESEARCH. Sortieren Sie das Ergebnis nach der PROJECT_ID


-- Ausgabe: PROJECT_ID, TITLE, SUBPROJECT_ID, APPLIED_RESEARCH

-- Tabellen: PROJECTS_BT, SUBPROJECTS

select
    s.SUBPROJECT_ID,
    p.PROJECT_ID,
    p.TITLE,
    s.APPLIED_RESEARCH
from
    PROJECTS_BT p
    inner join SUBPROJECTS s using(PROJECT_ID)
where
    s.APPLIED_RESEARCH = (
        select max(APPLIED_RESEARCH)
        from SUBPROJECTS
        where PROJECT_ID = p.PROJECT_ID
    )
order by
    p.`PROJECT_ID`
;

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


select
    case
        when REQ.PROJECT_ID is not null then 'REQUEST_FUNDING'
        when RES.PROJECT_ID is not null then 'RESEARCH_FUNDING'
        else 'MANAGEMENT'
        end as PROJECT_TYPE,
    count(*) as AMOUNT
from
    PROJECTS_BT p
    left join REQUEST_FUNDING_PROJECTS REQ on p.project_id = REQ.PROJECT_ID
    left join RESEARCH_FUNDING_PROJECTS RES on p.project_id = RES.PROJECT_ID
group by
    PROJECT_TYPE;


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


WITH Q1 AS(
    SELECT
        PBT.`PROJECT_ID`,
        sum(PD.`AMOUNT`) MYSUM,
        CASE 
            WHEN REQ.`PROJECT_ID` is NOT NULL THEN 'REQ'
            WHEN RES.`PROJECT_ID` is not null then 'RES'
            ELSE 'GOGO'
            END as PROJECT_TYPE
    FROM
        `PROJECTS_BT` PBT
        natural left JOIN `REQUEST_FUNDING_PROJECTS` REQ
        NATURAL left join `RESEARCH_FUNDING_PROJECTS` RES
        NATURAL join `PROJECT_HAS_DEBITORS_JT` PD
    GROUP BY
        PBT.`PROJECT_ID`
),
MXA AS(
    select
        max(MYSUM) MYMAXSUM,
        PROJECT_TYPE
    from
        Q1
    GROUP BY
        PROJECT_TYPE
)
select
    Q1.PROJECT_TYPE,
    Q1.`PROJECT_ID`,
    Q1.MYSUM as PROJECT_FUNDING
from
    Q1
    join MXA on MXA.MYMAXSUM = Q1.MYSUM
;

-- endregion
