-- ---------------------------------------------------------------------- -
-- 1. Beispiel: Textfunktionen (1.Punkte)
-- ---------------------------------------------------------------------- -
-- region

-- Textfunktionen: ||, concat

-- Geben Sie fuer CUSTOMERS Datensaetze die folgendne Spalten aus:
-- CUST_FIRST_NAME, CUST_LAST_NAME, CUST_ADDRESS

-- @CUST_ADDRESS: Die Werte der CUST_ADDRESS Spalte setzen sich aus den
--                Werten der folgenden Spalten zusammen:

-- COUNTRY_REGION, COUNTRY_NAME, CUST_POSTAL_CODE, CUST_CITY, CUST_STREET_ADDRESS -> CUST_ADDRESS
-- Europe, Italy, 60332, Ede, North Sagadahoc Boulevard ->
-- Italy - 60332 Ede, North Sagadahoc Boulevard. Europe

-- Verwenden Sie zur Loesung der Aufgabe einen INNER JOIN

-- Sortieren Sie die Ausgabe nach den Werten der CUST_LAST_NAME Spalte
-- aufsteigend

-- Geben Sie nur die ersten 100 Werte aus

-- Tabellen: CUSTOMERS, COUNTRIES
-- User: SH

-- Hinweis: Loesen sie die Aufgabe einmal mit dem || Operator und einmal mit
--          der concat Funktion.

select CUST_FIRST_NAME,
       CUST_LAST_NAME,
       COUNTRY_NAME || ' - ' || CUST_POSTAL_CODE || ' ' || CUST_CITY || ', ' || CUST_STREET_ADDRESS || '. ' ||
       COUNTRY_REGION
           as cust_address
from CUSTOMERS
         INNER JOIN COUNTRIES C2 on C2.COUNTRY_ID = CUSTOMERS.COUNTRY_ID
order by CUST_LAST_NAME
    fetch first 100 rows only;



select CUST_FIRST_NAME,
       CUST_LAST_NAME,
       concat(concat(concat(concat(COUNTRY_NAME, ' - '), concat(CUST_POSTAL_CODE, ' ')),
                     concat(concat(CUST_CITY, ', '), concat(CUST_STREET_ADDRESS, '. '))),
              COUNTRY_REGION)
           as cust_address
from CUSTOMERS
         INNER JOIN COUNTRIES C2 on C2.COUNTRY_ID = CUSTOMERS.COUNTRY_ID
order by CUST_LAST_NAME
    fetch first 100 rows only;

-- endregion

-- ---------------------------------------------------------------------- -
-- 2. Beispiel: Textfunktionen (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Textfunktionen: substr, instr

-- Geben Sie fuer Promotion Datensaetze die folgenden Spalten aus:
-- PROMO_NAME, PROMO_CATEGORY, PROMOTION

-- @PROMOTION: Die Werte der PROMOTION Spalte berechnen sich aus den Werten
--             der folgenden Spalten: PROMO_CATEGORY, PROMO_NAME

--             PROMO_CATEGROY, PROMO_NAME -> PROMOTION
--             z.B.: newspaper, newspaper promotion #16-108 -> newspaper #16-108
--                   post, post promotion #20-232 -> post #20-232

-- Sortieren Sie das Ergebnis nach den Werten der PROMO_NAME spalte aufsteigend.
-- Geben Sie nur die ersten 50 Werte aus.

-- Tabellen: PROMOTIONS
-- User: SH

select PROMO_NAME,
       PROMO_CATEGORY,
       PROMO_CATEGORY || ' ' || substr(PROMO_NAME, instr(PROMO_NAME, '#')) as promotion
from PROMOTIONS
order by PROMO_NAME
    fetch first 50 rows only;

-- endregion


-- ---------------------------------------------------------------------- -
-- 3. Beispiel: Textfunktionen (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Textfunktionen: length, replace

-- Geben Sie fuer PRODUCTS Datensaetze die folgenden Spalten aus:
-- PROD_ID, PROD_NAME, PROD_DESC, DESC_DETAIL

-- @DESC_DETAIL: Die DESC_DETAIL Spalte gibt die Anzahl der Woerter in der
--               PROD_DESC Spalte aus.

-- Sortieren Sie das Ergebnis nach den Werten der PROD_NAME Spalte.


-- Tabellen: PRODUCTS
-- User: SH

select PROD_ID,
       PROD_NAME,
       PROD_DESC,
       SUM(LENGTH(PROD_DESC) - LENGTH(REPLACE(PROD_DESC, ' ', '')) + 1) as desc_detail
from PRODUCTS
group by PROD_ID, PROD_NAME, PROD_DESC
order by PROD_NAME;

-- endregion

-- ---------------------------------------------------------------------- -
-- 4. Beispiel: Textfunktionen (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Textfunktionen: lower, instr, substr

-- Geben Sie fuer COUNTRIES Datensaetze die folgenden Werte aus:
-- COUNTRY_ISO_CODE, COUNTRY_NAME, CONTAINS_ISO_CODE

-- @CONTAINS_ISO_CODE: Pruefen Sie ob die einzelnen Buchstaben des COUNTRY_ISO_CODES
--                     getrennt im COUNTRY_NAME vorkommen. Geben Sie 'y' aus
--                     falls sie vorkommen, andernfalls 'n'


-- Sortieren Sie das Ergebnis nach den Werten der COUNTRY_NAME Spalte

-- Tabellen: COUNTRIES
-- User: SH

select COUNTRY_ISO_CODE,
       COUNTRY_NAME,

       case
           when (instr(COUNTRY_NAME, substr(COUNTRY_ISO_CODE, 1, 1)) != 0 and
                instr(COUNTRY_NAME, substr(COUNTRY_ISO_CODE, 2, 1)) != 0)
               then 'y'
           else 'n' end as contains_iso_dso

from COUNTRIES
order by COUNTRY_NAME;

--substr(COUNTRY_ISO_CODE, 1,1), substr(COUNTRY_ISO_CODE, 2,1), instr(COUNTRY_ISO_CODE, 2, 1),
--instr(COUNTRY_NAME, substr(COUNTRY_ISO_CODE, 1, 1)) as contains_iso_dso,
--instr(COUNTRY_ISO_CODE, COUNTRY_NAME) as contains_iso_code

-- endregion

-- ---------------------------------------------------------------------- -
-- 5. Beispiel: Datumsfunktionen (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Datumsfunktionen: round

-- Geben Sie fuer jeden SALES Datensatz folgende Werte aus:
-- CUST_LAST_NAME, CUST_FIRST_NAME, PROD_NAME, TIME_ID, QUARTER

-- @QUARTER: Geben Sie das Datum des ersten Tages des Quartals aus in den
--           die TIME_ID faellt

-- Sortieren Sie das Ergebnis nach den Werten der QUARTER Spalte.

-- Tabellen: CUSTOMERS, PRODUCTS, SALES
-- User: SH

-- Hinweise: Verwenden Sie zur Loesung der Aufgabe inner jons

select CUST_LAST_NAME, CUST_FIRST_NAME, PROD_NAME, TIME_ID, trunc(to_date(TIME_ID), 'q') as quarter
from CUSTOMERS
         inner join SALES S on CUSTOMERS.CUST_ID = S.CUST_ID
         inner join PRODUCTS x on s.prod_id = x.prod_id
order by quarter;

-- endregion

-- ---------------------------------------------------------------------- -
-- 6. Beispiel: Datumsfunktionen (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie aus wieviele Monate von heute weg seit Ihrer Geburt
-- vergangen sind. Runden Sie den Wert.

-- Tabellen: DUAL
-- User: SH

select trunc(months_between(SYSDATE, to_date('28.11.2003', 'dd.mm.yyyy')))
from dual;

-- endregion