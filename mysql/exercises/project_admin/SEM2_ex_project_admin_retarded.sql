use project_admin;

-- Aufgabe 1
-- Welches Proejkt hat die meisten Subprojekte?
-- Subprojects
with subproject_report as (select PROJECT_ID, count(PROJECT_ID) as sub_count from SUBPROJECTS group by PROJECT_ID)
select sr.PROJECT_ID
from subproject_report sr
         join
     (select max(sub_count) max_count
      from subproject_report) sub_1 on sub_1.max_count = sr.sub_count;

-- Aufgabe 2
-- Welcher Debitor fördert die meisten Projekte?
-- Debitors, Project_has_debitors

-- normal:
select PDJ.DEBITOR_ID, count(PDJ.PROJECT_ID) support_count
from DEBITORS d
         join PROJECT_DEBITORS_JT PDJ on d.DEBITOR_ID = PDJ.DEBITOR_ID
group by PDJ.DEBITOR_ID
having support_count =
       (select max(sub_1.support_count)
        from (select PDJ.DEBITOR_ID, count(PDJ.PROJECT_ID) support_count
              from DEBITORS d
                       join PROJECT_DEBITORS_JT PDJ on d.DEBITOR_ID = PDJ.DEBITOR_ID
              group by PDJ.DEBITOR_ID) sub_1);

-- with as:
with DEBITOR_REPORT as (select DEBITOR_ID, count(PROJECT_ID) as deb_count from PROJECT_DEBITORS_JT group by DEBITOR_ID)
select DEBITOR_ID, dr.deb_count
from DEBITOR_REPORT dr
         join (select max(deb_count) max_deb from DEBITOR_REPORT) sub_1 on sub_1.max_deb = dr.deb_count;

-- idk
--
--
with PROJECT_TYPE_REPORT as
    (select p.PROJECT_ID,
    case
        when RES.PROJECT_ID is not null then 'REQUEST'
        when REQ.PROJECT_ID is not null then 'RESEARCH'
        else 'MANAGEMENT'
        end project_type
    from PROJECTS_BT p
    left join REQUEST_FUNDING_PROJECTS REQ on p.PROJECT_ID = REQ.PROJECT_ID
    left join RESEARCH_FUNDING_PROJECTS RES on p.PROJECT_ID = RES.PROJECT_ID
    left join MANAGEMENT_PROJECTS MP on p.PROJECT_ID = MP.PROJECT_ID),
SUBPROJECT_TYPE_REPORT as
    (select PROJECT_ID, count(s.SUBPROJECT_ID) count_sub, count(distinct s.INSTITUTE_ID) count_institute
    from SUBPROJECTS s
    group by s.PROJECT_ID),
DEBITOR_REPORT as
    (select PROJECT_ID, count(DEBITOR_ID) count_debitor
    from PROJECT_DEBITORS_JT
    group by PROJECT_ID)
select p.PROJECT_ID, p.TITLE, ptr.project_type, coalesce(sptr.count_sub, 0), coalesce(sptr.count_institute, 0)
from PROJECTS_BT p
left join PROJECT_TYPE_REPORT ptr on p.PROJECT_ID = ptr.PROJECT_ID
left join SUBPROJECT_TYPE_REPORT sptr on p.PROJECT_ID = sptr.PROJECT_ID
left join DEBITOR_REPORT dr on p.PROJECT_ID = dr.PROJECT_ID;