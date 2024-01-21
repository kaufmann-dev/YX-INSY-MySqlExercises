use PROJECT_SOFTWARE;
show tables;

-- ---------------------------------------------------------------------------- --
--   3.1) SQL Abfrage    (1.Punkt)
-- ---------------------------------------------------------------------------- --
-- region Angabe)

-- Geben Sie eine Liste aller Softwareanwendungen (PR_SOFTWARE_APPS) aus fuer die
-- es maximal 4 Versionen (PR_SOFTWARE_VERSIONS) gibt.

-- Ausgabe: SOFTWARE_APP_ID, TITLE
-- User: insy

-- region SQL Abfrage

SELECT SA.SOFTWARE_APP_ID
from `PR_SOFTWARE_APPS` SA
join PR_SOFTWARE_VERSIONS SV using(SOFTWARE_APP_ID)
GROUP BY SA.SOFTWARE_APP_ID
having count(SV.VERSION_NUMBER) <= 4;

select sa.SOFTWARE_APP_ID, sa.TITLE
from PR_SOFTWARE_APPS sa
      join (select PSA.SOFTWARE_APP_ID, count(VERSION_NUMBER)
            from PR_SOFTWARE_VERSIONS v
                  left join PR_SOFTWARE_APPS PSA on v.SOFTWARE_APP_ID = PSA.SOFTWARE_APP_ID
                  group by PSA.SOFTWARE_APP_ID
                  having count(VERSION_NUMBER) < 5) sub1 on sa.SOFTWARE_APP_ID = sub1.SOFTWARE_APP_ID;

-- endregion

-- endregion

-- ---------------------------------------------------------------------------- --
--   3.2) SQL Abfrage    (1.Punkt)
-- ---------------------------------------------------------------------------- --
-- region Angabe

-- Geben Sie eine Liste aller Softwareentwickler (PR_SOFTWARE_DEVELOPER) aus die
-- in mindestens 3 Programmiersprachen ein hoeheres Level als BASIC haben.

-- Achten Sie darauf, dass fuer jede Person welche die Eigenschaften erfuellt genau
-- ein Eintrag ausgegeben wird.

-- Sortieren Sie die Liste zuerst aufsteigend nach dem Nachnamen und Vornamen der
-- Person.

-- Ausgabe: LAST_NAME, FIRST_NAME
-- User: insy

select LAST_NAME, FIRST_NAME
from (select ps.DEVELOPER_ID
      from PR_PROGRAMMING_SKILLS_JT ps
            where ps.SKILL_LEVEL != 'BASIC'
            group by ps.DEVELOPER_ID
            having count(ps.LANGUAGE_NAME) >= 3) sub1 inner join PR_PEOPLE_BT p on sub1.DEVELOPER_ID = p.PERSON_ID
order by LAST_NAME, FIRST_NAME asc;

-- region SQL Abfrage

-- endregion

-- endregion

-- ---------------------------------------------------------------------------- --
--   3.3) SQL Abfrage    (2.Punkte)
-- ---------------------------------------------------------------------------- --
-- region Angabe

-- Geben Sie eine Liste von Softwareentwicklern (PR_SOFTWARE_DEVELOPER) aus, die
-- die meisten Programmiersprachen (PR_PROGRAMMING_LANGUAGES) auf einem MASTER
-- Skilllevel beherrschen.

-- Ausgabe: LAST_NAME, FIRST_NAME, LANGUAGE_COUNT

-- @LANGUAGE_COUNT: Die Anzahl der Programmiersprachen die der Programmierer
--                  auf einem Masterlevel beherrscht.

-- User: insy

-- region SQL Abfrage

select LAST_NAME, FIRST_NAME, sub2.ps_count
from PR_PEOPLE_BT p
      join PR_SOFTWARE_DEVELOPER sd on p.PERSON_ID = sd.SOFTWARE_DEVELOPER_ID
      join (select ps.DEVELOPER_ID, count(ps.LANGUAGE_NAME) ps_count
            from PR_PROGRAMMING_SKILLS_JT ps
                  where ps.SKILL_LEVEL = 'MASTER'
                  group by ps.DEVELOPER_ID
                  having count(ps.LANGUAGE_NAME) = (select max(sub1.mastered)
                                                    from (select count(ps.LANGUAGE_NAME) mastered
                                                          from PR_PROGRAMMING_SKILLS_JT ps
                                                                where ps.SKILL_LEVEL = 'MASTER'
                                                                group by ps.DEVELOPER_ID) sub1)) sub2 on sd.SOFTWARE_DEVELOPER_ID = sub2.DEVELOPER_ID;

-- endregion

-- endregion

-- ---------------------------------------------------------------------------- --
--   3.4) SQL Abfrage      (2.Punkte)
-- ---------------------------------------------------------------------------- --
-- region Angabe

-- Geben Sie eine Liste aller Softwareanwendungen (PR_SOFTWARE_APPS) aus fuer die es
-- die meisten Bugreports (PR_BUGREPORTS) gibt.

-- Ausgabe: SOFTWARE_APP_ID, TITLE
-- USER: insy

-- region SQL Abfrate

SELECT sa.SOFTWARE_APP_ID, sa.TITLE
FROM PR_SOFTWARE_APPS sa
JOIN (
    SELECT SOFTWARE_APP_ID, COUNT(BUG_REPORT_ID)
    FROM PR_BUG_REPORTS
    GROUP BY SOFTWARE_APP_ID
    HAVING COUNT(BUG_REPORT_ID) = (
        SELECT MAX(BUG_COUNT)
        FROM (
            SELECT SOFTWARE_APP_ID, COUNT(BUG_REPORT_ID) AS BUG_COUNT
            FROM PR_BUG_REPORTS
            GROUP BY SOFTWARE_APP_ID
        ) sub2
    )
) sub1
ON sa.SOFTWARE_APP_ID = sub1.SOFTWARE_APP_ID;


-- endregion

-- endregion