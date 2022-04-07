use cruise;

-- Aufgabe 1
select
       CRUISE_ID,
       sum(abs(datediff(DATE_OF_ARRIVAL, DATE_OF_DEPARTURE))) CRUISE_TIME
from CRUISE_HAS_ROUTES_JT
group by CRUISE_ID;

select
       CRUISE_ID,
       sum(DISTANCE) CRUISE_LENGTH
from CRUISE_HAS_ROUTES_JT ch
join ROUTES_JT RJ on RJ.DEPARTURE_HARBOR_ID = ch.DEPARTURE_HARBOR_ID and RJ.ARRIVAL_HARBOR_ID = ch.ARRIVAL_HARBOR_ID
group by CRUISE_ID;

-- Aufgabe 2 (meine Aufgabe)
select EMPLOYEE_TYPE, count(EMPLOYEE_TYPE) EMP_COUNT
from EMPLOYEE_ST
group by EMPLOYEE_TYPE
having EMP_COUNT =
(select max(EMP_COUNT) from(
select EMPLOYEE_TYPE, count(EMPLOYEE_TYPE) EMP_COUNT
from EMPLOYEE_ST
group by EMPLOYEE_TYPE) sub);