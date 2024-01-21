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

select
    PBT.PROJECT_ID,
    CASE 
        WHEN REQ.PROJECT_ID is not null THEN 'REQUEST_FUNDING_PROJECT'
        WHEN RES.PROJECT_ID is not null THEN 'RESEARCH_FUNDING_PROJECT'
        WHEN MGMT.PROJECT_ID is not null THEN 'MANAGEMENT_PROJECT'
        else 'DEFAULT_PROJECT'
    END ADDPROJECT_TYPE,
    count(SP.SUBPROJECT_ID) SUBPROJECT_COUNT,
    count(distinct F.FACILITY_ID) INSTITUTE_COUNT,
    count(distinct PD.DEBITOR_ID) DEBITOR_COUNT,
    sum(PD.AMOUNT) FUNDING_AMOUNT,
        CASE
            WHEN REQ.PROJECT_ID IS NOT NULL then 10
            WHEN RES.PROJECT_ID IS NOT NULL then 5
            WHEN MGMT.PROJECT_ID IS NOT NULL then 3
            ELSE 0
        END +
        CASE
            WHEN sum(SP.THEORETICAL_RESEARCH) > 50 then 3
            ELSE 0
        END + 
        CASE
            WHEN count(distinct F.FACILITY_ID) > 3 then 2
            else 0
        end + 
        CASE 
            WHEN sum(PD.AMOUNT) > 50000 THEN 3
            ELSE 0
        end
    PROJECT_COMPLEXITY
FROM
    PROJECTS_BT PBT
    LEFT JOIN SUBPROJECTS SP using(PROJECT_ID)
    LEFT JOIN FACILITIES_ST F on F.FACILITY_ID = SP.INSTITUTE_ID
    NATURAL LEFT JOIN PROJECT_HAS_DEBITORS_JT PD
    NATURAL LEFT JOIN REQUEST_FUNDING_PROJECTS REQ
    NATURAL LEFT JOIN RESEARCH_FUNDING_PROJECTS RES
    NATURAL LEFT JOIN MANAGEMENT_PROJECTS MGMT
GROUP BY PBT.PROJECT_ID
ORDER BY PROJECT_COMPLEXITY DESC;

--  REQUEST_FUNDING_PROJECT                   10
--  RESEARCH_FUNDING_PROJECT                  5
--  MANAGEMENT_PROJECT                        3
--  THEORETICAL_RESEARCH > 50                 3
--  INSTITUE_COUNT > 3                        2
--  FUNDING_AMOUNT > 50 000                   3

-- endregion


-- ---------------------------------------------------------------------- -
-- 2. Beispiel: Subselect, EXISTS Klausel
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie alle Projekte denen zumindestens 1 Subprojekt zugeordnet ist.
-- Geben Sie für Projekt Datensätze folgende Werte aus: PROJECT_ID, TITLE


-- Table: PROJECTS_BT, SUBPROJECTS

SELECT PBT.PROJECT_ID, PBT.TITLE
FROM PROJECTS_BT PBT
WHERE EXISTS (
    SELECT *
    FROM SUBPROJECTS SP
    where SP.PROJECT_ID = PBT.PROJECT_ID
);

-- endregion

-- ---------------------------------------------------------------------- -
-- 3. Beispiel: Subselect, EXISTS Klausel
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie alle Geldgeber die zumindestens ein Projekt finanziell unter-
-- stützen.

-- Geben Sie für Debitor Datensätze folgende Werte aus: DEBITOR_ID, NAME


-- Table: DEBITORS, PROJECT_HAS_DEBITORS_JT

SELECT D.DEBITOR_ID, D.NAME
FROM
    DEBITORS D
WHERE EXISTS (
    select *
    from PROJECT_HAS_DEBITORS_JT PD
    where PD.DEBITOR_ID = D.DEBITOR_ID
);

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
    PS.LABEL
FROM
    E_PROJECT_STATES PS
WHERE EXISTS (
    SELECT *
    FROM PROJECT_HAS_STATES_JT PHS
    where PHS.PROJECT_STATE = PS.LABEL
);

-- endregion

-- ---------------------------------------------------------------------- -
-- 5. Beispiel: Subselect, EXISTS Klausel
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie alle Projekte die keine finanzielle Unterstützung haben.
-- Geben Sie folgende Spalten aus: PROJECT_ID, TITLE


-- Table: PROJECTS_BT, PROJECT_HAS_DEBITORS_JT

select
    PBT.PROJECT_ID,
    PBT.TITLE
FROM
    PROJECTS_BT PBT
WHERE NOT EXISTS (
    select *
    FROM
        PROJECT_HAS_DEBITORS_JT PHD
    where PHD.PROJECT_ID = PBT.PROJECT_ID
);

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
    F.FACILITY_ID
FROM
    FACILITIES_ST F
WHERE NOT EXISTS(
    SELECT
        *
    FROM
        SUBPROJECTS SP
    WHERE SP.INSTITUTE_ID = F.FACILITY_ID
);

-- endregion

-- ---------------------------------------------------------------------- -
-- 7. Beispiel: Subselect, EXISTS Klausel
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie alle Projekte die nicht Vorgängeprojekte anderer Projekte sind.
-- Geben Sie für Projekte folgende Spalten aus: PROJECT_ID, TITLE


-- Table: PROJECTS_BT, PROJECT_FORERUNNERS_JT

SELECT
    PBT.PROJECT_ID
FROM
    PROJECTS_BT PBT
WHERE NOT EXISTS(
    SELECT *
    FROM PROJECT_FORERUNNERS_JT PF
    WHERE PF.PARENT_ID = PBT.PROJECT_ID
);

-- endregion
