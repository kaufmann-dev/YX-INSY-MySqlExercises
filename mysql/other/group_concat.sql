-- GROUP CONCAT
select
    PHS.`PROJECT_ID`,
    PBT.`TITLE`,
    GROUP_CONCAT(distinct PHS.`PROJECT_STATE` SEPARATOR ", ") EVENT,
    'PROJECT',
    GROUP_CONCAT(PHS.`STATE_CHANGED_AT` SEPARATOR ", ") DATE_OF_EVENT
from `PROJECTS_BT` PBT
natural left join `PROJECT_HAS_STATES_JT` PHS
GROUP BY PBT.`PROJECT_ID`;