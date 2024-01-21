use PROJECTS;

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

-- User: OE

with PROJECT_DATA AS (
    select
        p.PROJECT_ID,
        case
            when RFP.IS_SMALL_PROJECT is not null then 'REQEUST_FUNDING_PROJECT'
            when R.IS_EU_SPONSORED is not null then 'RESEARCH_FUNDING_PROJECT'
            when MP.MANAGEMENT_DUTY is not null then 'MANAGEMENT_PROJECT'
            ELSE 'DEFAULT_PROJECT'
        end AS PROJECT_TYPE,
        case
            when RFP.IS_SMALL_PROJECT is not null then 10
            when R.IS_EU_SPONSORED is not null then 5
            ELSE 3
        end as PROJECT_RATING
    from
        PROJECTS_BT p
        left join REQUEST_FUNDING_PROJECTS RFP on p.PROJECT_ID = RFP.PROJECT_ID
        left join RESEARCH_FUNDING_PROJECTS R on p.PROJECT_ID = R.PROJECT_ID
        left join MANAGEMENT_PROJECTS MP on p.PROJECT_ID = MP.PROJECT_ID
), 
SUBPROJECTDATA_BY_PROJECT AS (
    SELECT
        s.PROJECT_ID,
        count(s.SUBPROJECT_ID) SUBPROJECT_COUNT,
        count(DISTINCT INSTITUTE_ID) INSTITUTE_COUNT,
        case
            when count(DISTINCT INSTITUTE_ID) > 3 then 2
            else 0
        end as PROJECT_RATING
    FROM
        SUBPROJECTS s
    GROUP BY
        s.PROJECT_ID
),
FUNDING_DATA_BY_PROJECT AS (
    SELECT
        count(pd.DEBITOR_ID) DEBITOR_COUNT,
        sum(pd.AMOUNT) FUNDING_AMOUNT,
        case
            when sum(pd.AMOUNT) > 50000 then 3
            ELSE 0
        end as PROJECT_RATING,
        pd.PROJECT_ID
    FROM
        PROJECT_HAS_DEBITORS_JT pd
    group by
        pd.PROJECT_ID
),
RESEARCH_BY_PROJECT AS (
    select
        sub.PROJECT_ID,
        sum(PROJECT_RATING) PROJECT_RATlNG
    from (
        SELECT
            s.PROJECT_ID,
            case
                when s.THEORETICAL_RESEARCH > 50 then 3
                else 0
            end as PROJECT_RATING
        from
            SUBPROJECTS s
    ) sub
    group by
        sub.PROJECT_ID
)
select
    distinct p.PROJECT_ID,
    p.TITLE,
    coalesce(pt.PROJECT_TYPE, 'DEFAULT_PROJECT') AS PROJECT_TYPE,
    coalesce(sbp.SUBPROJECT_COUNT, 0) AS SUBPROJECT_COUNT,
    coalesce(sbp.INSTITUTE_COUNT, 0) AS INSTITUTE_COUNT,
    coalesce(fdp.DEBITOR_COUNT, 0) AS DEBITOR_COUNT,
    coalesce(fdp.FUNDING_AMOUNT, 0) AS FUNDING_AMOUNT,
    coalesce(pt.PROJECT_RATING, 0)
        + coalesce(sbp.PROJECT_RATING, 0)
        + coalesce(fdp.PROJECT_RATING, 0)
        + coalesce(frp.PROJECT_RATlNG, 0)
        as PROJECT_COMPLEXITY
from
    PROJECTS_BT p
    left join PROJECT_DATA pt on pt.PROJECT_ID = p.PROJECT_ID
    left join SUBPROJECTDATA_BY_PROJECT sbp on sbp.PROJECT_ID = p.PROJECT_ID
    left join FUNDING_DATA_BY_PROJECT fdp on fdp.PROJECT_ID = p.PROJECT_ID
    left join RESEARCH_BY_PROJECT frp on frp.PROJECT_ID = p.PROJECT_ID
order by
    PROJECT_COMPLEXITY desc;