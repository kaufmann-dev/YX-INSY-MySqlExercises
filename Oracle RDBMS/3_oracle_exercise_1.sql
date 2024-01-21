-- Beispiel 1 --
select COUNTRY_ISO_CODE,
       COUNTRY_NAME,
       COUNTRY_REGION
from COUNTRIES
where COUNTRY_REGION != 'Middle East' and COUNTRY_REGION != 'Africa'
order by COUNTRY_NAME ASC;

-- Beispiel 2 --
select CUST_FIRST_NAME,
       CUST_LAST_NAME,
       CUST_MARITAL_STATUS,
       CUST_FIRST_NAME || '.' || CUST_LAST_NAME || '@INFO' as info
from CUSTOMERS
where CUST_MARITAL_STATUS is not null and (CUST_LAST_NAME like 'A%' or CUST_LAST_NAME like 'B%' or CUST_LAST_NAME like 'C%')
order by CUST_LAST_NAME ASC;

-- Beispiel 3 --
select PROD_ID,
       UNIT_COST,
       UNIT_PRICE,
       UNIT_PRICE - UNIT_COST as profit,
       round((UNIT_PRICE / UNIT_COST - 1) * 100, 0) as stat
from COSTS
where UNIT_COST is not null and UNIT_COST > 0 and UNIT_PRICE > UNIT_COST
order by stat DESC, profit desc;

-- Beispiel 4 --
SELECT PROD_ID,
       UNIT_COST,
       UNIT_PRICE,
       case
            when round((UNIT_PRICE / UNIT_COST - 1) * 100, 0) between 0 and 19 then 'loss'
            when round((UNIT_PRICE / UNIT_COST - 1) * 100, 0) between 20 and 50 then 'lost_leader'
            when round((UNIT_PRICE / UNIT_COST - 1) * 100, 0) between 51 and 65 then 'profit'
            else 'high_profit'
        end  as company_profit,
       round((UNIT_PRICE / UNIT_COST - 1) * 100, 0) as stat
from COSTS
where UNIT_COST is not null and UNIT_COST > 0 and UNIT_PRICE > UNIT_COST
order by stat DESC;