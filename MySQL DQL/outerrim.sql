use outerrim;
-- --------------------------------------------------------------------------------------
-- Crew mit den meisten rewards
-- --------------------------------------------------------------------------------------

with RA as(
    select C.CREW_ID, sum(JD.REWARD) REWARD_AMOUNT
    FROM CREWS C
        JOIN REPUTATION_CHANGE_ENTITIES_BT RC using(CREW_ID)
        JOIN JOBS J on J.JOB_ID = RC.ENTITY_ID
        JOIN JOB_DESCRIPTIONS_ST JD on J.DESCRIPTION_ID = JD.DESCRIPTION_ID
    GROUP BY C.CREW_ID
)
SELECT RA.*
from RA
having RA.REWARD_AMOUNT = (
    SELECT max(REWARD_AMOUNT) FROM RA R2
)
;


with crew_rewards as (select  c.CREW_ID, c.LABEL, sum(jds.REWARD) sum_rewards
from JOB_DESCRIPTIONS_ST jds
join JOBS j on jds.DESCRIPTION_ID = j.DESCRIPTION_ID
join REPUTATION_CHANGE_ENTITIES_BT rceb on rceb.ENTITY_ID = j.JOB_ID
join CREWS c on c.CREW_ID = rceb.CREW_ID
group by c.CREW_ID)
select CREW_ID, LABEL, sum_rewards
from crew_rewards
join (select max(sum_rewards) max_crew_rewards from crew_rewards) sub on sub.max_crew_rewards = sum_rewards;

-- ----------------------------------------------------------------------------------------------------------------
-- Welche Faction hat die höchsten/besten Reputation changes?
-- ----------------------------------------------------------------------------------------------------------------

with RC as ( 
    SELECT F.FACTION_ID, sum(FRC.CHANGE_AMOUNT) CHANGES
    FROM FACTIONS F
    JOIN FACTION_REPUTATION_CHANGES_JT FRC using(FACTION_ID)
    GROUP BY F.FACTION_ID
)
SELECT RC.* 
FROM RC
having RC.CHANGES = (
    select max(CHANGES) from RC
);

with REP_CHANGE as (
    select FACTION_ID, sum(CHANGE_AMOUNT) SUM_AMOUNT
    from FACTION_REPUTATION_CHANGES_JT frcj
    group by FACTION_ID
)
select f.FACTION_ID, NAME, SUM_AMOUNT from REP_CHANGE rc
join (select max(SUM_AMOUNT) MAX_AMOUNT from REP_CHANGE) sub1 on sub1.MAX_AMOUNT = SUM_AMOUNT
join FACTIONS f on rc.FACTION_ID = f.FACTION_ID;

-- gibt für jeden Charakter die Reputation pro Faction aus

select concat(cha2.FIRST_NAME, ' ', cha2.LAST_NAME) as CHARACTER_NAME,
                f.NAME                                       as FACTION_NAME,
                coalesce(sub.changeAmount, 0)
from CHARACTERS cha2
         cross join FACTIONS f
         left join (select ch.CHARACTER_ID, frcj.FACTION_ID, coalesce(sum(frcj.CHANGE_AMOUNT), 0) as changeAmount
                    from CHARACTERS ch
                             left join (select distinct CREW_ID, CHARACTER_ID
                                        from CREW_MEMBERS_JT) as cmjt on ch.CHARACTER_ID = cmjt.CHARACTER_ID
                             left join CREWS c on c.CREW_ID = cmjt.CREW_ID
                             left join REPUTATION_CHANGE_ENTITIES_BT rceb on c.CREW_ID = rceb.CREW_ID
                             left join FACTION_REPUTATION_CHANGES_JT frcj on rceb.ENTITY_ID = frcj.ENTITY_ID
                    group by ch.CHARACTER_ID, frcj.FACTION_ID) as sub
                   on sub.FACTION_ID = f.FACTION_ID and cha2.CHARACTER_ID = sub.CHARACTER_ID;

-- Erstelle eine Liste, die die Reputation zwischen jeder Crew und jeder Faction nachdem alle Reputation Change Events durchgeführt wurden zeigt

SELECT C.LABEL, F.NAME, (100 + sum(CHANGE_AMOUNT)) as REP
from CREWS C
join REPUTATION_CHANGE_ENTITIES_BT RC using(CREW_ID)
join FACTION_REPUTATION_CHANGES_JT FRC using(ENTITY_ID)
join FACTIONS F on F.FACTION_ID = FRC.FACTION_ID
group by C.LABEL, F.NAME;

-- eine Crew hat defaultmäßig 5000 credits
-- gib den aktuellen Kontostand jeder CREW aus (JOBS geben REWARD, wenn JOB ACCOMPLISHED wurde, 
-- => wenn JOB fehlschlug hat man den REWARD zu bezahlen)


--

select
    sub1.LABEL,
    sub1.NAME,
    100 + COALESCE(sub.sumChangeAmount, 0)
from (
        select c.LABEL, f.NAME
        from CREWS c, FACTIONS f
    ) as sub1
    left join (
        select
            c1.LABEL,
            f.NAME,
            sum(CHANGE_AMOUNT) sumChangeAmount
        from CREWS c1
            join REPUTATION_CHANGE_ENTITIES_BT rceb on c1.CREW_ID = rceb.CREW_ID
            join FACTION_REPUTATION_CHANGES_JT frcj on rceb.ENTITY_ID = frcj.ENTITY_ID
            join FACTIONS f on frcj.FACTION_ID = f.FACTION_ID
        group by
            c1.LABEL,
            f.NAME
    ) as sub on sub1.LABEL = sub.LABEL
    and sub1.NAME = sub.NAME;




with REWARD as (
        select
            CREW_ID,
            sum(
                coalesce(s2.REWARD, 0) - COALESCE(s3.REWARD, 0)
            ) as REWARD
        from
            REPUTATION_CHANGE_ENTITIES_BT rce
            left join JOBS j2 on rce.ENTITY_ID = j2.JOB_ID
            and j2.JOB_STATUS = 'ACCOMPLISHED'
            left join JOB_DESCRIPTIONS_ST s2 on s2.DESCRIPTION_ID = j2.DESCRIPTION_ID
            left join JOBS j3 on rce.ENTITY_ID = j3.JOB_ID
            and j3.JOB_STATUS = 'FAILED'
            left join JOB_DESCRIPTIONS_ST s3 on s3.DESCRIPTION_ID = j3.DESCRIPTION_ID
        group by CREW_ID
    )
select
    c.LABEL as CREW,
    5000 + COALESCE(r.REWARD, 0) as REWARD
from CREWS c
    left join REWARD r on c.CREW_ID = r.CREW_ID;





with reputations as (
    select
        c.LABEL,
        f.NAME, (100 + sum(CHANGE_AMOUNT)) as rep
    from CREWS c
        join REPUTATION_CHANGE_ENTITIES_BT rceb on c.CREW_ID = rceb.CREW_ID
        join FACTION_REPUTATION_CHANGES_JT frcj on rceb.ENTITY_ID = frcj.ENTITY_ID
        join FACTIONS f on f.FACTION_ID = frcj.FACTION_ID
    group by
        c.LABEL,
        f.NAME
),
relations as (
    select c.LABEL, f.NAME
    from CREWS c, FACTIONS f
)
select
    rel.LABEL,
    rel.NAME,
    coalesce(rep, 100) as rep
from relations rel
    left join reputations rep on rel.NAME = rep.NAME and rel.LABEL = rep.label;


with revenues as (
        select
            LABEL as crew,
            case
                when JOB_STATUS = 'ACCOMPLISHED' then REWARD
                when JOB_STATUS = 'FAILED' then (0 - REWARD)
                else 0
            end as rev
        from CREWS c
            join REPUTATION_CHANGE_ENTITIES_BT rceb on c.CREW_ID = rceb.CREW_ID
            join JOBS j on rceb.ENTITY_ID = j.JOB_ID
            join JOB_DESCRIPTIONS_ST jds on jds.DESCRIPTION_ID = j.DESCRIPTION_ID
    )
select
    LABEL, (5000 + coalesce(sum(rev), 0)) as rev
from CREWS c
    left join revenues r on LABEL = crew
group by LABEL;

select
    c.LABEL crew,
    f.NAME faction,
    100 + sum(coalesce(ss.rep_change, 0)) rep
from CREWS c
    cross join FACTIONS f
    left join (
        select
            rce.CREW_ID cid,
            frcj.FACTION_ID fid,
            frcj.CHANGE_AMOUNT rep_change
        from
            REPUTATION_CHANGE_ENTITIES_BT rce
            join FACTION_REPUTATION_CHANGES_JT frcj on rce.ENTITY_ID = frcj.ENTITY_ID
    ) ss on ss.fid = f.FACTION_ID
    and ss.cid = c.CREW_ID
group by c.LABEL, f.NAME;

select
    c.LABEL,
    5000 + sum(
        case
            when cj.JOB_STATUS = 'ACCOMPLISHED' then cj.REWARD
            when cj.JOB_STATUS = 'FAILED' then - cj.REWARD
            else 0
        end
    ) rew
from CREWS c
    left join (
        select
            rceb.CREW_ID,
            j.JOB_STATUS,
            jds.REWARD
        from JOBS j
            join JOB_DESCRIPTIONS_ST jds on j.DESCRIPTION_ID = jds.DESCRIPTION_ID
            join REPUTATION_CHANGE_ENTITIES_BT rceb on j.JOB_ID = rceb.ENTITY_ID
    ) cj on cj.CREW_ID = c.CREW_ID
group by c.LABEL;