-- ---------------------------------------------------------------------- -
-- 1. Beispiel: Abfragen (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie fuer jede Produktkategorie alle möglichen Subkategorien aus.

-- z.B.: PROD_CATEGORY | PROD_SUBCATEGORY
--       Photo            Cameras
--       Photo            Camcorders
--       ...              ...


-- Sortieren Sie das Ergebnis nach der PROD_CATEGORY

-- Tabellen: PRODUCTS
-- User: SH

-- Geben Sie die ersten 100 ersten Datentypen aus

select PROD_CATEGORY, PROD_SUBCATEGORY
from PRODUCTS
order by PROD_CATEGORY
fetch first 100 rows only;


-- endregion

-- ---------------------------------------------------------------------- -
-- 2. Beispiel: inner join, natural join (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie fuer Kunden die folgenden Werte aus: CUST_FIRST_NAME,
-- CUST_LAST_NAME, PROD_NAME, PROD_CATEGORY

-- Sortieren Sie das Ergebnis nach dem CUST_LAST_NAME, CUST_FIRST_NAME aufsteigend.
-- Geben Sie nur die ersten 20 Datensaetze aus.

-- Formulieren Sie die Abfrage einmal mit einem inner join und einmal mit einem
-- natural join

-- Tabellen: CUSTOMERS, SALES, PRODUCTS
-- User: SH

select CUST_FIRST_NAME, CUST_LAST_NAME, PROD_NAME, PROD_CATEGORY
from CUSTOMERS natural join SALES natural join PRODUCTS
order by CUST_LAST_NAME, CUST_FIRST_NAME
fetch first 20 rows only;

select CUST_FIRST_NAME, CUST_LAST_NAME, PROD_NAME, PROD_CATEGORY
from CUSTOMERS inner join SALES S on CUSTOMERS.CUST_ID = S.CUST_ID inner join PRODUCTS P on P.PROD_ID = S.PROD_ID
order by CUST_LAST_NAME, CUST_FIRST_NAME
fetch first 20 rows only;

-- endregion


-- ---------------------------------------------------------------------- -
-- 3. Beispiel: join Typen (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie alle möglichen Kombinationen der Produktkategorie und
-- und Produktsubkategorie aus.

-- Geben Sie folgende Spalten aus: PROD_CATEGORY, PROD_SUBCATEGORY

-- Sortieren Sie das Ergebnis nach folgenden Spalten: PROD_CATEGORY

-- Geben Sie die ersten 400 Datensaetze aus.

-- Tabellen: PRODUCTS
-- User: SH

select e.PROD_CATEGORY, s.PROD_SUBCATEGORY
from PRODUCTS e cross join PRODUCTS s
order by e.PROD_CATEGORY
fetch first 400 rows only;

-- endregion

-- ---------------------------------------------------------------------- -
-- 4. Beispiel: join Typen (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Vergleichen Sie die beiden Abfragen. Liefern Sie immer das gleiche Ergebnis?
-- Begruenden Sie Ihre Antwort!

-- Tabellen: PRODUCTS, COSTS, PROMOTIONS
-- User: SH

SELECT p.PROD_NAME, p.PROD_CATEGORY, c.UNIT_PRICE, pro.PROMO_NAME
FROM PRODUCTS p
         left join COSTS c on p.PROD_ID = c.PROD_ID
         inner join PROMOTIONS pro on pro.PROMO_ID = c.PROMO_ID;

SELECT p.PROD_NAME, p.PROD_CATEGORY, c.UNIT_PRICE, pro.PROMO_NAME
FROM PRODUCTS p
         left join COSTS c on p.PROD_ID = c.PROD_ID
         left join PROMOTIONS pro on pro.PROMO_ID = c.PROMO_ID;

-- endregion
