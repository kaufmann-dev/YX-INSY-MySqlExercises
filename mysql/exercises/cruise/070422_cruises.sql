use cruise;

-- Geben Sie alle Häfen aus, die nicht auf einer Route liegen
select *
from HARBORS H
where not exists(select *
                 from ROUTES_JT RJT
                 where H.HARBOR_ID = RJT.ARRIVAL_HARBOR_ID
                    or H.HARBOR_ID = RJT.DEPARTURE_HARBOR_ID);

-- Längste Route
select *
from ROUTES_JT bruh
where NOT EXISTS(select * from ROUTES_JT RJT where bruh.DISTANCE < RJT.DISTANCE);

-- Berechne die Kreuzfahrt welche die längste Strecke zurücklegt
-- kein min und max

with Report as (select c.CRUISE_ID, sum(rj.DISTANCE) DISTANCE
                from CRUISES c
                         join CRUISE_HAS_ROUTES_JT chrj on c.CRUISE_ID = chrj.CRUISE_ID
                         join ROUTES_JT rj on chrj.DEPARTURE_HARBOR_ID = rj.DEPARTURE_HARBOR_ID and
                                              chrj.ARRIVAL_HARBOR_ID = rj.ARRIVAL_HARBOR_ID
                group by c.CRUISE_ID)
select *
from Report r where NOT EXISTS(select * from Report re where r.DISTANCE < re.DISTANCE);