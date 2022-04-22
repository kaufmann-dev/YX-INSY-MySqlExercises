use restaurant;

-- ---------------------------------------------------------------------- -
-- 1. Beispiel: WITH Klausel (3.Punkte)
-- ---------------------------------------------------------------------- -
-- region

-- Zur Erstellung der jaehrlichen Bilanz soll fuer jede gastronomische
-- Einrichtung ein Report erstellt werden.

-- Geben Sie fuer jede gastronomische Einrichtung die folgenden Daten aus:
-- Ausgabe: BRANCH_ID, NAME, TURNOVER, TURNOVER_PEAK
--          ORDER_COUNT, TABLE_COUNT, FAVORITE_DISH

-- @TURNOVER: Der Umsatz jeder Einrichtung berechnet sich aus den Verkaeufen
--            der Gerichte (BRANCHES, TABLES, ORDER_ITEMS, DISHES)

-- @TURNOVER_PEAK: Der Tag an dem der hoechste Umsatz erziehlt worden ist.
--                 Verwenden Sie die trunc('...', 'DD') Funktion zum Runden
--                 auf einen Tag. (BRANCHES, TABLES, ORDER_ITEMS, CUSTOMER_ORDERS,
--                 DISHES)
--
--                 Hinweis: Geben Sie den Tag im folgenden Format aus: dd.mm.yyyy

-- @ORDER_COUNT: Anzahl der Bestellungen (BRANCHES, TABLES, ORDER_ITEMS, DISHES)

-- @TABLE_COUNT: Anzahl der Tische (BRANCHES, TABLES, ORDER_ITEMS, DISHES)

-- @FAVORITE_DISH: Das in einer Einrichtung am oeftesten bestellte Gericht
--                 (BRANCHES, TABLES, ORDER_ITEMS, DISHES)


-- Tabellen: BRANCHES, TABLES, ORDER_ITEMS, DISHES, CUSTOMER_ORDERS
-- User: OE

with TURNOVER as (
select x.BRANCH_ID, sum(x.PRICE_C) SUM
from (select OIJ.TABLE_ID, T.BRANCH_ID, D.price * OIJ.AMOUNT PRICE_C
    from DISHES D
    join ORDER_ITEMS_JT OIJ on D.dish_id = OIJ.DISH_ID
    join TABLES T on T.table_id = OIJ.TABLE_ID
    join BRANCHES B on T.branch_id = B.BRANCH_ID
    group by OIJ.TABLE_ID, OIJ.DISH_ID, OIJ.AMOUNT) x
group by BRANCH_ID)
select * from TURNOVER;
-- endregion

-- ---------------------------------------------------------------------- -
-- 2. Beispiel: EXISTS Klausel (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie alle Bestellungen aus die nicht bezahlt wurden.

-- Ausgabe: ORDER_ID, ORDER_TYPE

-- Hinweis: Der Status einer Bestellung wird in der CUSTOMER_ORDER_STATUS Tabelle
--          gespeichert. Eine Bestellung aendert ihren Status wenn das Essen
--          bestellt (ORDERED), serviert (SERVED), bezahlt (PAID) bzw. wenn das Essen
--          abgebrochen (CANCLED) wird.

--          Pruefen Sie dazu ob der Status PAID fuer eine Bestellung nicht vorhanden ist.

-- Hinweis: Verwenden Sie die EXISTS Klausel zur Loesung der Aufgabe

-- Tabellen: CUSTOMER_ORDERS, CUSTOMER_ORDER_STATUS
-- User: OE


-- endregion

-- ---------------------------------------------------------------------- -
-- 3. Beispiel: EXISTS Klausel (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Pruefen Sie fuer jede gastronomischen Einrichtung ob es einen Tisch gibt
-- der nicht Teil einer Bestellung ist.

-- Ausgabe: NAME, TABLE_ID, TABLE_NR

-- Tabellen: BRANCHES, TABLES, ORDER_ITEMS
-- User: OE
with ola as (
select OIJ.TABLE_ID he, B.BRANCH_ID
from ORDER_ITEMS_JT OIJ
join TABLES T on T.table_id = OIJ.TABLE_ID
join BRANCHES B on B.BRANCH_ID = T.branch_id)

select B.NAME, T.table_id, T.table_nr
from BRANCHES B
join TABLES T on B.BRANCH_ID = T.branch_id
join ORDER_ITEMS_JT OIJ on T.table_id = OIJ.TABLE_ID
WHERE exists(select T2.table_id from (select B.NAME, T.table_id, T.table_nr
from BRANCHES B
join TABLES T on B.BRANCH_ID = T.branch_id
join ORDER_ITEMS_JT OIJ on T.table_id = OIJ.TABLE_ID) T2 where T2.table_id = ola.he);

-- endregion