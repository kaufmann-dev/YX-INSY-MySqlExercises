use project_admin;

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
-- User: OE

-- 1.Abfrage

-- region
select DESCRIPTION, PROJECT_ID, FOCUS_RESEARCH
from SUBPROJECTS
where FOCUS_RESEARCH = (select max(FOCUS_RESEARCH) from SUBPROJECTS);
-- endregion

-- 2.Abfrage

-- region
select DESCRIPTION, PROJECT_ID, sub.FOCUS_RESEARCH
from (select max(FOCUS_RESEARCH) FOCUS_RESEARCH from SUBPROJECTS) sub
         join SUBPROJECTS sub1 on sub.FOCUS_RESEARCH = sub1.FOCUS_RESEARCH;
-- endregion

-- endregion

-- ---------------------------------------------------------------------- -
-- 2. Beispiel: Subselect (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Mit welcher LEGAL_FOUNDATION werden die meisten Projekte umgesetzt. Geben
-- Sie die LEGAL_FOUNDATION und die Anzahl der Projekte mit der entsprechenden
-- LEGAL_FOUNDATION aus.

-- Geben Sie die folgenden Spalten aus: LEGAL_FOUNDATION, PROJECT_COUNT

-- Tabellen: PROJECTS
-- User: OE

-- 1.Abfrage

-- region
select LEGAL_FOUNDATION, count(PROJECT_ID)
from PROJECTS_BT
group by LEGAL_FOUNDATION;
-- endregion

-- endregion

-- ---------------------------------------------------------------------- -
-- 3. Beispiel: Subselect (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie das Projekt mit den meisten Subprojekten. Geben Sie fuer das
-- Projekt die folgenden Spalten aus: TITLE, SUBPROJECT_COUNT

-- @SUBPROJECT_COUNT: Gibt die Anzahl der Subprojekte eines Projekts an.

-- Hinweis: Ein Projekt besteht aus mehreren Subprojekten.

-- Tabellen: PROJECTS, SUBPROJECTS
-- User: OE

-- region
select TITLE, count(sp.SUBPROJECT_ID)
from SUBPROJECTS sp
         join PROJECTS_BT PB on sp.PROJECT_ID = PB.PROJECT_ID
having (PB.PROJECT_ID, count(SUBPROJECT_ID)) = (
    select sp.PROJECT_ID, count(sp.SUBPROJECT_ID) SUBPROJECT_COUNT
    from SUBPROJECTS sp
    group by sp.PROJECT_ID);
-- endregion

-- endregion

-- ---------------------------------------------------------------------- -
-- 4. Beispiel: Subselect (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Welches Forschungsförderungsprojekt besitzt die meisten Förderungsprogramme?

-- Hinweis: Forschungsförderungsprojekte werden in der RESEARCH_FUNDING_PROJECTS
--          Tabelle gespeichert.

-- Hinweis: Ob ein Projekt in einem Foerderungsprogramm ist wird in folgenden
--          Spalten gespeichert: IS_EU_SPONSORED, IS_FWF_SPONSORED, IS_FFG_SPONSORED.
--          Ist fuer einen Projekt Datensatz in einer der 3 Spalten eine 1 eingetragen
--          wird das Projekt vom entsprechenden Foerderungsprogramm unterstuetzt.

-- Ausgabe: TITLE, PROGRAMM_COUNT

-- @PROGRAMM_COUNT: Die Spalte gibt die Anzahl der Foerderprogramme aus.

-- Tabellen: PROJECTS, RESEARCH_FUNDING_PROJECTS
-- User: OE

select pb.TITLE, sub.PROGRAM_COUNT
from (select eu.PROJECT_ID                       PROJECT_ID,
             sum((IS_EU_SPONSORED IS NOT NULL) + (IS_FWF_SPONSORED IS NOT NULL) +
                 (IS_FFG_SPONSORED IS NOT NULL)) PROGRAM_COUNT
      from (select PROJECT_ID, IS_EU_SPONSORED from RESEARCH_FUNDING_PROJECTS where IS_EU_SPONSORED IS TRUE) eu
               left join (select PROJECT_ID, IS_FWF_SPONSORED
                          from RESEARCH_FUNDING_PROJECTS
                          where IS_FWF_SPONSORED IS TRUE) fwf on eu.PROJECT_ID = fwf.PROJECT_ID
               left join (select PROJECT_ID, IS_FFG_SPONSORED
                          from RESEARCH_FUNDING_PROJECTS
                          where IS_FFG_SPONSORED IS TRUE) ffg on eu.PROJECT_ID = ffg.PROJECT_ID
      group by eu.PROJECT_ID
     ) sub
         join PROJECTS_BT pb on sub.PROJECT_ID = pb.PROJECT_ID;

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
-- User: OE

select pb.TITLE, sub.FUNDING_AMOUNT
from (
         select PROJECT_ID, sum(AMOUNT) FUNDING_AMOUNT
         from PROJECT_DEBITORS_JT
         group by PROJECT_ID) sub
         join PROJECTS_BT pb on pb.PROJECT_ID = sub.PROJECT_ID;

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

-- Ausgabe: PROJECT_ID, TITLE, PROJECT_TYPE, PROJECT_FUNDING

-- @PROJECT_TYPE: Ist ein Projekt ein REQUEST_FUNDING_PROJECT wird die Zeichenkette 'REQUEST_FUNDING'
--                ausgegeben. Fuer RESEARCH_FUNDING_PROJECTs wird die Zeichenkette 'RESEARCH_FUNDING'
--                ausgegeben.

-- @PROJECT_FUNDING: Die gesamte Projektfoerderung eines Projekts

-- Tabellen: PROJECTS, REQUEST_FUNDING_PROJECTS, RESEARCH_FUNDING_PROJECTS, PROJECT_DEBITORS
-- User: OE

WITH SUB_1 AS (select PB.PROJECT_ID,
                      TITLE,
                      CASE
                          WHEN PB.PROJECT_ID in (RFP.PROJECT_ID) THEN 'REQUEST'
                          WHEN PB.PROJECT_ID in (REFP.PROJECT_ID) THEN 'RESEARCH'
                          ELSE 'MANAGEMENT'
                          END PROJECT_TYPE,
                      AMOUNT as PROJECT_FUNDING
               from PROJECTS_BT PB
                        left join REQUEST_FUNDING_PROJECTS RFP on PB.PROJECT_ID = RFP.PROJECT_ID
                        left join RESEARCH_FUNDING_PROJECTS REFP on PB.PROJECT_ID = REFP.PROJECT_ID
                        left join MANAGEMENT_PROJECTS MP on PB.PROJECT_ID = MP.PROJECT_ID
                        left join PROJECT_DEBITORS_JT PDJ on PB.PROJECT_ID = PDJ.PROJECT_ID)
SELECT *
from SUB_1
group by PROJECT_TYPE, PROJECT_ID, PROJECT_FUNDING
having (PROJECT_TYPE, sum(PROJECT_FUNDING)) in
       (SELECT PROJECT_TYPE, max(query.sum_amount) PROJECT_FUNDING
        from (SELECT sum(PROJECT_FUNDING) sum_amount, PROJECT_TYPE
              from SUB_1
              group by PROJECT_TYPE, PROJECT_ID) query
        group by PROJECT_TYPE);


-- endregion