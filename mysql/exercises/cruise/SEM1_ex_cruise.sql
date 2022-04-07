use cruise;

-- ------------------------------------------------------------------------
-- 1.1) SQL Klauseln
-- ------------------------------------------------------------------------
-- region

-- Geben Sie für Routen die fogenden Spalten aus: NAME, DISTANCE, TYPE.

-- @TYPE: Abhaengig vom Gehalt des Angestellten wird ein bestimmter
-- Wert ausgegeben.

-- Table: ROUTES_JT

-- Legende:
-- 0 <= DISTANCE <= 200      -> 'SHORT DISTANCE'
-- 201 <= DISTANCE  <= 999   -> 'MEDIUM DISTANCE'
-- 1000 <= DISTANCE <= ...   -> 'LONG DISTANCE'

select case
           when DISTANCE between 0 and 200 then 'SHORT DISTANCE'
           when DISTANCE between 201 and 999 then 'MEDIUM DISTANCE'
           else 'LONG DISTANCE'
           end type
from ROUTES_JT;

-- endregion

-- ------------------------------------------------------------------------
-- 1.2) SQL Klauseln
-- ------------------------------------------------------------------------
-- region

-- Geben Sie für Cruise Datensätze folgende Spalten aus:
-- LABEL, DAYS_SPEND

-- @DAYS_SPEND: Vergangene Zeit in Tagen

-- Sortieren Sie die das Ergebnis nach dem Label.
-- Geben Sie nur 5 der Datensaetze aus.

-- INNER JOIN

select LABEL, datediff(DATE_OF_ARRIVAL, DATE_OF_DAPARTURE)
from CRUISES
order by LABEL
limit 5;

-- endregion

-- ------------------------------------------------------------------------
-- 1.3) Textfunktionen: UPPER, LOWER, SUBSTR
-- ------------------------------------------------------------------------
-- region

-- Geben Sie alle Länder der E_COUNTRIES Tabelle aus. Adaptieren Sie die
-- Ausgabe folgendermassen: Brazil, France, usw...

-- Sortieren Sie das Ergebnis nach dem NAME

select concat(upper(substr(NAME, 1, 1)), lower(substr(NAME, 2))) countries
from E_COUNTRIES;

-- endregion

-- ------------------------------------------------------------------------
-- 2.4) Datumsfunktionen: to_date, round, extract
-- ------------------------------------------------------------------------
-- region

-- Finden Sie alle Cruises die im ersten Quartal eines Jahres
-- durchgeführt wurden.

-- Geben Sie alle Werte der Cruise an.

-- Geben Sie die folgenden Spalten aus: LABEL, LAST_DAY

select LABEL, last_day(DATE_OF_DAPARTURE) last_day
from CRUISES
where quarter(DATE_OF_DAPARTURE) = 1;

-- endregion

-- ------------------------------------------------------------------------
-- 4.3) Subselect
-- ------------------------------------------------------------------------
-- region

-- Ermitteln Sie die Angestelltengruppe in der zur Zeit die meisten
-- Angestellten beschaeftigt sind.

-- Ausgabe: EMPLOYEE_TYPE, EMPLOYEE_COUNT

-- Tabellen: EMPLOYEE_ST

select EMPLOYEE_TYPE, count(EMPLOYEE_ID) employee_count
from EMPLOYEE_ST
group by EMPLOYEE_TYPE
having count(EMPLOYEE_ID) =
       (select max(sub.employee_count) employee_count
        from (select EMPLOYEE_TYPE, count(EMPLOYEE_ID) EMPLOYEE_COUNT
              from EMPLOYEE_ST
              group by EMPLOYEE_TYPE) sub);

-- endregion

-- ------------------------------------------------------------------------
-- 4.4) Subselect
-- ------------------------------------------------------------------------
-- region

-- Fuer welches Land werden die meisten Haefen gespeichert. Geben Sie die
-- folgenden Spalten aus:

-- Ausgabe: COUNTRY, HARBOR_COUNT

-- Tabellen: HARBORS

select COUNTRY, COUNT(HARBOR_ID) HARBOR_COUNT
from HARBORS
group by COUNTRY
having count(HARBOR_ID) =
       (select max(sub.count) from (select COUNT(HARBOR_ID) count, COUNTRY from HARBORS group by COUNTRY) sub);

-- endregion

-- ------------------------------------------------------------------------
-- 4.11) Subselect
-- ------------------------------------------------------------------------
-- region

-- Geben Sie die umsatzhoechste Buchung aus. Beruecksichtigen Sie nur
-- Buchungen die zwischen 2007 und 2020 abgeschlossen wurden.

-- Ausgabe: BOOKING_ID, TURNOVER

-- @TURNOVER: Beschreibt den gesamten Umsatz fuer eine Buchung.

-- Hinweis: Jeder CRUISE_HAS_BOOKINGS_JT Datensatz beschreibt welcher
--          Reisende, welche Kabine fuer welche Kreuzfahrt zu welchem
--          Preis erstanden im Rahmen welcher Buchung erstanden hat.

--          Eine Buchung kann aus mehreren CRUISE_HAS_BOOKING_JT
--          Datensaetzen bestehen!

-- Tabellen: CRUISE_HAS_BOOKINGS_JT, BOOKINGS

select BOOKING_ID, sum(PRICE) summ
from CRUISE_HAS_BOOKINGS_JT
group by BOOKING_ID
having sum(PRICE) =
       (select max(sub.summ) maxx
        from (select chbt.BOOKING_ID, sum(PRICE) summ
              from CRUISE_HAS_BOOKINGS_JT chbt
                       join BOOKINGS B on chbt.BOOKING_ID = B.BOOKING_ID
              where EXTRACT(YEAR from BOOKED_AT) between 2007 and 2020
              group by BOOKING_ID) sub);

-- endregion

-- ------------------------------------------------------------------------
-- 4.12) Subselect
-- ------------------------------------------------------------------------
-- region

-- Welcher Hafen liegt auf den meisten Routen? Geben Sie folgende Spaltenwerte
-- aus: NAME, ROUTE_COUNT

-- @ROUTE_COUNT: Anzahl der Routen auf denen der Hafen liegt.
-- @NAME: Name des Hafens

-- Hinweis: Ein ROUTES_JT Datensatz beschreibt von welchem
-- (DEPARTURE_HARBOR_ID) zu welchem Hafen (ARRIVAL_HARBOR_ID) eine Route fuehrt.

-- Tabellen: ROUTES_JT, HARBOR

select h.Name, sub_3.HARBOR_COUNT
from (select p_1.COUNT_ARRIVAL + p_2.COUNT_DEPARTURE HARBOR_COUNT, p_1.DEPARTURE_HARBOR_ID
      from (select count(DEPARTURE_HARBOR_ID) COUNT_ARRIVAL, DEPARTURE_HARBOR_ID
            from ROUTES_JT
            group by DEPARTURE_HARBOR_ID) p_1
               join
           (select count(ARRIVAL_HARBOR_ID) COUNT_DEPARTURE, ARRIVAL_HARBOR_ID
            from ROUTES_JT
            group by ARRIVAL_HARBOR_ID) p_2 on p_1.DEPARTURE_HARBOR_ID = p_2.ARRIVAL_HARBOR_ID) sub_3
         join HARBORS h on HARBOR_ID = sub_3.DEPARTURE_HARBOR_ID
where HARBOR_COUNT =
      (select max(p_1.COUNT_ARRIVAL + p_2.COUNT_DEPARTURE) HARBOR_COUNT
       from (select count(DEPARTURE_HARBOR_ID) COUNT_ARRIVAL, DEPARTURE_HARBOR_ID
             from ROUTES_JT
             group by DEPARTURE_HARBOR_ID) p_1
                join
            (select count(ARRIVAL_HARBOR_ID) COUNT_DEPARTURE, ARRIVAL_HARBOR_ID
             from ROUTES_JT
             group by ARRIVAL_HARBOR_ID) p_2 on p_1.DEPARTURE_HARBOR_ID = p_2.ARRIVAL_HARBOR_ID);

-- endregion

-- ------------------------------------------------------------------------
-- 4.13) Subselect
-- ------------------------------------------------------------------------
-- region

-- In welcher Rolle arbeiten die meisten Mitarbeiter auf der Kreuzfahrt mit
-- den meisten Mitarbeitern?

-- Geben Sie folgenden Spaltenwerte aus: CRUISE_id, EMPLOYEE_ROLE, EMPLOYEE_COUNT

-- @EMPLOYEE_COUNT: Anzahl der Angestellten die in der entsprechenden Rolle
--                  beschaeftigt sind.

-- Tabellen: CRUISE_HAS_EMPLOYEES

select che.CRUISE_ID, che.EMPLOYEE_ROLE, count(che.EMPLOYEE_ID) EMP_COUNT
from (select CRUISE_ID
      from CRUISE_HAS_EMPLOYEES_JT
      group by CRUISE_ID
      having count(EMPLOYEE_ID) =
             (select max(sub1.emp_count) MAX_EMP_COUNT
              from (select count(EMPLOYEE_ID) emp_count
                    from CRUISE_HAS_EMPLOYEES_JT
                    group by CRUISE_ID) sub1)) sub2
         join CRUISE_HAS_EMPLOYEES_JT che
              on che.CRUISE_ID = sub2.CRUISE_ID
group by che.CRUISE_ID, che.EMPLOYEE_ROLE
having (che.CRUISE_ID, count(che.EMPLOYEE_ID))
           in
       (select sub3.CRUISE_ID, max(sub3.EMP_COUNT)
        from (select che.CRUISE_ID, count(che.EMPLOYEE_ID) EMP_COUNT
              from (select CRUISE_ID
                    from CRUISE_HAS_EMPLOYEES_JT
                    group by CRUISE_ID
                    having count(EMPLOYEE_ID) =
                           (select max(sub1.emp_count)
                            from (select count(EMPLOYEE_ID) emp_count
                                  from CRUISE_HAS_EMPLOYEES_JT
                                  group by CRUISE_ID) sub1)) sub2
                       join CRUISE_HAS_EMPLOYEES_JT che
                            on che.CRUISE_ID = sub2.CRUISE_ID
              group by che.CRUISE_ID, che.EMPLOYEE_ROLE) sub3
        group by sub3.CRUISE_ID);

-- endregion