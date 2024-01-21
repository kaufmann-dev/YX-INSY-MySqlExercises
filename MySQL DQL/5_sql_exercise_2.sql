-- ---------------------------------------------------------------------- -
-- 1. Beispiel: Subselect, WITH Klausel
-- ---------------------------------------------------------------------- -
-- region

-- Zur Erstellung der jaehrlichen Bilanz soll fuer jedes Projekt ein
-- Report erstellt werden.

-- Geben Sie fuer jedes Projekt die folgenden Daten aus:
-- Ausgabe: PROJECT_ID, TITLE, PROJECT_TYPE,
--          SUBPROJECT_COUNT, INSTITUTE_COUNT,
--          DEBITOR_COUNT, FUNDING_AMOUNT,
--          PROJECT_COMPLEXITY

-- @PROJECT_TYPE: Fuer Requestfundingprojekte soll der Token
--         'REQUEST_FUNDING_PROJECT' fuer Researchfundingprojekte
--         'RESEARCH_FUNDING_PROJECT' fuer Requestfundingprojekte
--         'MANAGEMENT_PROJECT' fuer Managementprojekte

--          Hinweis: Verwenden Sie ansonsten den Token 'DEFAULT_PROJECT'

-- @SUBPROJECT_COUNT: Anzahl der Subprojekte

-- @INSTITUTE_COUNT: Anzahl der Institute die an der Umsetzung des
--                   Projekts involviert sind

-- @DEBITOR_COUNT: Anzahl der Geldgeber die das Projekt finanziell
--                 unterstuetzen

-- @FUNDING_AMOUNT: Der Geldbetrag mit dem das Projekt unterstuetzt wird

-- @PROJECT_COMPLEXITY: Die Projektkomplexitaet beschreibt die Komplexität
--                      eines Projekts. Der Wert ist als Summer folgender
--                      Posten zu verstehen:
--
--  Kriterium                                 Punkte
--  REQUEST_FUNDING_PROJECT                   10
--  RESEARCH_FUNDING_PROJECT                  5
--  MANAGEMENT_PROJECT                        3
--  THEORETICAL_RESEARCH > 50                 3
--  INSTITUE_COUNT > 3                        2
--  FUNDING_AMOUNT > 50 000                   3

-- Sortieren Sie das Ergebnis nach der Projektkomplexitaet absteigend

-- Tabellen: PROJECTS, REQUEST_FUNDING_PROJECTS, RESEARCH_FUNDING_PROJECTS
--           SUBPROJECTS, PROJECT_DEBITORS


with C_REQ AS(
    SELECT PBT.`PROJECT_ID`,
    CASE 
        WHEN REQ.`PROJECT_ID` is not null THEN 10
        ELSE 0
    END AS CPX
    FROM `PROJECTS_BT` PBT
    NATURAL left join `REQUEST_FUNDING_PROJECTS` REQ
),
C_RES AS(
    SELECT PBT.`PROJECT_ID`,
    CASE 
        WHEN RES.`PROJECT_ID` is not null THEN 5
        ELSE 0
    END AS CPX
    FROM `PROJECTS_BT` PBT
    NATURAL left join `RESEARCH_FUNDING_PROJECTS` RES
),
C_MGMT AS(
    SELECT PBT.`PROJECT_ID`,
    CASE 
        WHEN RES.`PROJECT_ID` is null AND REQ.`PROJECT_ID` is null THEN 3
        ELSE 0
    END AS CPX
    FROM `PROJECTS_BT` PBT
    NATURAL left join `RESEARCH_FUNDING_PROJECTS` RES
    NATURAL left join `REQUEST_FUNDING_PROJECTS` REQ
),
C_THEORETICAL_RESEARCH AS(
    SELECT PBT.`PROJECT_ID`,
    CASE 
        WHEN sum(SP.`THEORETICAL_RESEARCH`) > 50 THEN 3
        ELSE 0
    END AS CPX
    from `PROJECTS_BT` PBT
    left join `SUBPROJECTS` SP USING(`PROJECT_ID`)
    GROUP BY PBT.`PROJECT_ID`
),
C_INSTITUE_COUNT AS(
    SELECT PBT.`PROJECT_ID`,
    CASE 
        WHEN count(DISTINCT SP.`INSTITUTE_ID`) > 3 THEN 2
        ELSE 0
    END AS CPX 
    FROM
    `PROJECTS_BT` PBT
    left join `SUBPROJECTS` SP USING(`PROJECT_ID`)
    GROUP BY PBT.`PROJECT_ID`
),
C_FUNDING AS(
    SELECT PBT.`PROJECT_ID`,
    CASE 
        WHEN sum(PD.`AMOUNT`) > 50000 THEN 3
        ELSE 0
    END AS CPX
    FROM
    `PROJECTS_BT` PBT
    natural left join `PROJECT_HAS_DEBITORS_JT` PD
    GROUP BY PBT.`PROJECT_ID`
)
SELECT 
    PBT.`PROJECT_ID`,
    PBT.`TITLE`,
    case
        when REQ.`PROJECT_ID` is not NULL then 'REQUEST_FUNDING_PROJECT'
        when RES.`PROJECT_ID` is not NULL then 'RESEARCH_FUNDING_PROJECT'
        else 'MANAGEMENT_PROJECT'
        END as PROJECT_TYPE,
    count(SP.`SUBPROJECT_ID`) SUBPROJECT_COUNT,
    count(DISTINCT SP.`INSTITUTE_ID`) INSTITUTE_COUNT,
    count(DISTINCT PD.`DEBITOR_ID`) DEBITOR_COUNT,
    sum(PD.`AMOUNT`) FUNDING_AMOUNT,
    C_RES.CPX + C_REQ.CPX + C_MGMT.CPX + C_THEORETICAL_RESEARCH.CPX + C_INSTITUE_COUNT.CPX + C_FUNDING.CPX as PROJECT_COMPLEXITY
FROM
    `PROJECTS_BT` PBT
    NATURAL left join `RESEARCH_FUNDING_PROJECTS` RES
    NATURAL left JOIN `REQUEST_FUNDING_PROJECTS` REQ
    left join `SUBPROJECTS` SP USING(`PROJECT_ID`)
    natural left join `PROJECT_HAS_DEBITORS_JT` PD
    left join C_REQ using(`PROJECT_ID`)
    left join C_RES using(`PROJECT_ID`)
    left JOIN C_MGMT using(`PROJECT_ID`)
    left join C_THEORETICAL_RESEARCH using(`PROJECT_ID`)
    left join C_INSTITUE_COUNT using(`PROJECT_ID`)
    left join C_FUNDING using(`PROJECT_ID`)
GROUP BY
    PBT.`PROJECT_ID`
;


-- endregion


-- ---------------------------------------------------------------------- -
-- 2. Beispiel: Subselect, EXISTS Klausel
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie alle Projekte denen zumindestens 1 Subprojekt zugeordnet ist.
-- Geben Sie für Projekt Datensätze folgende Werte aus: PROJECT_ID, TITLE


-- Table: PROJECTS_BT, SUBPROJECTS

SELECT PBT.`PROJECT_ID`, PBT.`TITLE` FROM
`PROJECTS_BT` PBT
join `SUBPROJECTS` SP USING(`PROJECT_ID`)
GROUP BY PBT.`PROJECT_ID`
HAVING count(SP.`PROJECT_ID`) > 0;

-- endregion

-- ---------------------------------------------------------------------- -
-- 3. Beispiel: Subselect, EXISTS Klausel
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie alle Geldgeber die zumindestens ein Projekt finanziell unter-
-- stützen.

-- Geben Sie für Debitor Datensätze folgende Werte aus: DEBITOR_ID, NAME


-- Table: DEBITORS, PROJECT_HAS_DEBITORS_JT


SELECT D.`DEBITOR_ID`, D.`NAME`
from `DEBITORS` D
natural join `PROJECT_HAS_DEBITORS_JT` PD
GROUP BY D.`DEBITOR_ID`
HAVING count(PD.`PROJECT_ID`) > 0
order by D.`DEBITOR_ID`;

-- endregion

-- ---------------------------------------------------------------------- -
-- 4. Beispiel: Subselect, EXISTS Klausel
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie alle gesetzlichen Paragraphen (E_LEGAL_FOUNDATIONS) an, denen
-- zumindestens 1 Projekt zugeordnet ist.

-- Geben Sie für E_LEGAL_FOUNDATIONS Datensätze folgende Spalten aus: LABEL


-- Tables: E_LEGAL_FOUNDATIONS, PROJECTS_BT


SELECT
    ELF.`LABEL`
FROM
    `PROJECTS_BT` PBT
    join `E_LEGAL_FOUNDATIONS` ELF on PBT.`LEGAL_FOUNDATION` = ELF.`LABEL`
    GROUP BY PBT.`LEGAL_FOUNDATION`
    HAVING count(PBT.`PROJECT_ID`) > 0
;

-- endregion

-- ---------------------------------------------------------------------- -
-- 5. Beispiel: Subselect, EXISTS Klausel
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie alle Projekte die keine finanzielle Unterstützung haben.
-- Geben Sie folgende Spalten aus: PROJECT_ID, TITLE


-- Table: PROJECTS_BT, PROJECT_HAS_DEBITORS_JT

SELECT
    PBT.`PROJECT_ID`,
    PBT.`TITLE`
FROM
    `PROJECTS_BT` PBT
    NATURAL left JOIN `PROJECT_HAS_DEBITORS_JT` PD
GROUP BY
    PBT.`PROJECT_ID`
HAVING
    sum(PD.`AMOUNT`) is null or sum(PD.`AMOUNT`) = 0;

-- endregion

-- ---------------------------------------------------------------------- -
-- 6. Beispiel: Subselect, EXISTS Klausel
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie alle Institue (FACILITIES_ST.FACILITY_TYPE -> INSTITUTE) die
-- keine Subprojekte umgesetzt haben.

-- Geben Sie für Institute folgende Spalten aus:


-- Table: FACILITIES_ST, SUBPROJECTS

SELECT
    FST.`FACILITY_ID`
from
    `SUBPROJECTS` SP
    RIGHT join `FACILITIES_ST` FST on SP.`INSTITUTE_ID` = FST.`FACILITY_ID`
GROUP BY
    FST.`FACILITY_ID`
having
    count(SP.`SUBPROJECT_ID`) is NULL OR COUNT(SP.`SUBPROJECT_ID`) = 0;


-- endregion

-- ---------------------------------------------------------------------- -
-- 7. Beispiel: Subselect, EXISTS Klausel
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie alle Projekte die nicht Vorgängeprojekte anderer Projekte sind.
-- Geben Sie für Projekte folgende Spalten aus: PROJECT_ID, TITLE


-- Table: PROJECTS_BT, PROJECT_FORERUNNERS_JT

with PARENTS AS(
    SELECT
        `PARENT_ID`
    FROM
        `PROJECT_FORERUNNERS_JT`
    GROUP BY
        `PARENT_ID`
)
SELECT
    PBT.`PROJECT_ID`,
    PBT.`TITLE`
FROM
    `PROJECTS_BT` PBT
    left join PARENTS on PARENTS.PARENT_ID = PBT.`PROJECT_ID`
WHERE
    PARENTS.PARENT_ID is NULL
ORDER BY
    PBT.`PROJECT_ID`;

-- endregion
