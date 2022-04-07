use project_admin;

-- ------------------------------------------------------------------------
-- 2.1) UNION Klausel
-- ------------------------------------------------------------------------
-- region

-- Geben Sie für jeden Projekttyp die Anzahl der zugeordneten Projekte an.

-- Ausage: PROJECT_TYPE, PROJECT_COUNT

--         @PROJECT_TYPE: REQUEST_FUNDING_PROJECTS  -> REQUEST
--                        RESEARCH_FUNDING_PROJECTS -> RESEARCH
--                        MANAGEMENT_PROJECTS       -> MANAGEMENT

--         @PROJECT_COUNT: Anzahl der zugeordneten Projekte


-- Hinweis: Basistabelle -> PROJECTS_BT


-- Tables: PROJECTS_BT, REQUEST_FUNDING_PROJECTS, RESEARCH_FUNDING_PROJECTS, MANAGEMENT_PROJECTS




-- endregion

-- ---------------------------------------------------------------------- -
-- 2.2 Union Klausel
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie fuer jedes Projekt die folgenden Spalten aus: PROJECT_ID, TITLE
-- EVENT_TYPE, EVENT, DATE_OF_EVENT. Sortieren Sie das Ergebnis nach der
-- PROJECT_ID UND DEM DATE_OF_EVENT.

-- @EVENT: Fuer jedes Projekt sollen alle Events (PROJECT_STATE) der
--         PROJECT_HAS_STATES_JT Tabelle gemeinsam mit den Events der
--         zugeordneten Subprojekte ausgegeben werden.

-- @EVENT_TYPE: Gegen Sie 'PROJECT' fuer Projektevents und
--              'SUBPROJECT' fuer Subprojektevents aus

-- @DATE_OF_EVENT: Der Zeitpunkt an dem das Event eingetreten ist.


-- Tabellen: PROJECTS, PROJECT_HAS_STATES_JT, SUBPROJECTS,
--           SUBPROJECT_HAS_STATES_JT

create or replace view PROJECT_EVENTS as
select p.PROJECT_ID, p.TITLE, ps.PROJECT_STATE EVENT, 'PROJECT' EVENT_TYPE, ps.STATE_CHANGED_AT DATE_OF_EVENT from PROJECTS_BT p
join PROJECT_HAS_STATES_JT ps on p.PROJECT_ID = ps.PROJECT_ID
union
select s.SUBPROJECT_ID, s.DESCRIPTION, ss.SUBPROJECT_STATE EVENT, 'SUBPROJECT' EVENT_TYPE, ss.STATE_CHANGED_AT DATE_OF_EVENT from SUBPROJECTS s
join SUBPROJECT_HAS_STATES_JT ss on s.SUBPROJECT_ID = ss.SUBPROJECT_ID
order by PROJECT_ID, DATE_OF_EVENT;

-- endregion

-- ---------------------------------------------------------------------- -
-- 2.3 Beispiel: UNION, EXISTS Klausel
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie fuer jedes Projekt die folgenden Daten aus: PROJECT_ID, TITLE
-- PROJECT_BEGIN, PROJECT_END, DAY_COUNT

-- Hinweis: Sie duerfen  zur Loesung der Aufgabe die GROUP BY Klausel nicht
--          verwenden.

-- @PROJECT_BEGIN: CREATED_AT

-- @PROJECT_END: Das Projektende entspricht dem letzten Statuswechsel
--               der Subprojekte des Projekts. Hat ein Projekt keine
--               zugeordneten Subprojekte wird das Datum des letzten
--               Statuswechsels des Projekts bestimmt.

-- Tabellen: PROJECTS, PROJECT_HAS_STATES_JT, SUBPROJECTS, SUBPROJECTS_HAS_STATES_JT

-- User: OE

select p.PROJECT_ID, p.TITLE, p.CREATED_AT PROJECT_BEGIN, ps.STATE_CHANGED_AT PROJECT_END from PROJECTS_BT p
left join PROJECT_HAS_STATES_JT ps on p.PROJECT_ID = ps.PROJECT_ID
where not exists(select * from PROJECT_EVENTS pe where pe.DATE_OF_EVENT > ps.STATE_CHANGED_AT and pe.PROJECT_ID = ps.PROJECT_ID);

-- endregion


-- ------------------------------------------------------------------------
-- 2.4) UNION Klausel
-- ------------------------------------------------------------------------
-- region

-- Geben Sie für jeden Projekttyp das Projekt mit der höchsten Projekt-
-- förderung an.

-- Ausage: PROJECT_TYPE, PROJECT_ID, FUNDING_AMOUNT

--         @PROJECT_TYPE: REQUEST_FUNDING_PROJECTS  -> REQUEST
--                        RESEARCH_FUNDING_PROJECTS -> RESEARCH
--                        MANAGEMENT_PROJECTS       -> MANAGEMENT

--         @PROJECT_ID : Die PROJECT_ID des Projekts mit der höchsten
--                       Projektförderung für den entsprechenden
--                       PROJECT_TYPE

--         @FUNDING_AMOUNT: Die Projektförderung des Projekts mit der
--                          höchsten Projektförderung


-- Hinweis: Basistabelle -> PROJECTS_BT


-- Tables: PROJECTS_BT, REQUEST_FUNDING_PROJECTS, RESEARCH_FUNDING_PROJECTS, MANAGEMENT_PROJECTS
--         PROJECT_DEBITORS




-- endregion