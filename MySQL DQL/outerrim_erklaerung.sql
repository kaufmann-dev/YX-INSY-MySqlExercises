-- Outerrim Schema Erklärung

-- characters und aircrafts können keywords haben, wie zb DOCTOR, CREATURE, BOMBER etc
select * from CHARACTERS;
select * from KEYWORD_ENTITIES_BT;
select * from KEYWORDS;
select * from AIRCRAFTS;

-- Brand des Aircrafts und weitere Spezifikationen des Aircrafts stehen drinnen
select * from AIRCRAFTS;
select * from AIRCRAFT_SPECIFICATIONS;

-- n:m Beziehung zwischen Character und Crew
-- Character können Crews joinen und wieder verlassen, das steht in CREW_MEMBERS_JT
select * from CHARACTERS;
select * from CREW_MEMBERS_JT;
select * from CREWS;

-- REPUTATION_CHANGE_ENTITIES_BT
-- EVENTS und JOBS Verbindung --> JOBS und EVENTS verändern REPUTATION (JOBS: Rettungsmission oder Mord), EVENTS (entweder COMBAT oder NAVIGATION)
-- in FACTION_REPUTATION_CHANGES_JT werden die REPUTATION CHANGES die durch die EVENTS oder JOBS ausgelöst werden für jede FACTION gespeichert
select * from REPUTATION_CHANGE_ENTITIES_BT;
select * from FACTION_REPUTATION_CHANGES_JT;
select * from COMBAT_EVENTS;
select * from NAVIGATION_EVENTS;
select * from JOBS;

-- Zu jedem Zeiptunk ein LOG erstellt
-- -> SPACE (wo befindet man sich), entweder ist man auf dem Navigationspunkt im All oder auf einem Planeten, zwei Spaces sind eine Route (Reisen, wie bei CRUISES ROUTES)
-- also mit welchen Schiff man wo mit welcher Crew ist und was passiert ist (das steht in LOG_HAS_EVENTS)
select * from LOGS;
select * from LOG_HAS_EVENTS_JT;

-- SPACES_BT, kann ein NAVIGATION_POINT oder ein PLANET sein, hat mit ROUTES_JT eine Verbindung (dort steht eine Verbindung zwischen 2 Spaces, zb 2 navigation punkten)
-- Vergleichbar mit Routes vom CRUISES Schema
select * from SPACES_BT;
select * from E_SECTORS; -- SECTOR ist wie eine Region (bsp Waldviertel) es gibt mehrere Planeten die in einem Sector sind
select * from ROUTES_JT;

-- FACTIONS, Factions besetzen Planeten. Es können auch mehrere oder keine Fraktionen einen Planeten besetzen
select * from FACTIONS;
select * from PLANET_HAS_FACTIONS_JT;

-- JOBS (nur Status des Jobs), in JOB_DESCRIPTION werden weitere Daten wie die Planeten, JOB_TYPE und REWARD angegeben
select * from JOBS;
select * from JOB_DESCRIPTIONS_ST;

-- EVENTS, kann in COMBAT und NAVIGATION EVENTS unterteilt werden, sind verschiedene Ereignisse die passieren. Werden in Logs gespeichert
select * from EVENTS_BT;
select * from NAVIGATION_EVENTS;
select * from COMBAT_EVENTS;