-- ---------------------------------------------------------------------- -
-- 1. Beispiel: Gruppenfunktionen (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Welches Ergebnis berechnet Abfrage 1?

-- Tabellen: DISH_INGREDIENTS
-- User: SH

-- Abfrage 1)

select DISH_ID, count(INGREDIENT_ID)
from DISH_INGREDIENTS
group by DISH_ID;

-- ANSWER: Es berechnet, wie viele Zutaten man für ein Gericht braucht --

-- endregion

-- ---------------------------------------------------------------------- -
-- 2. Beispiel: Gruppenfunktionen (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie fuer jede Bestellung die Anzahl von Gerichten an die bestellt
-- wurden.

-- Geben Sie die folgenden Spalten aus: ORDER_ID, DISH_COUNT

-- Tabellen: ORDER_ITEMS
-- User: SH

select ORDER_ID, count(DISH_ID) as dish_count
from ORDER_ITEMS
group by ORDER_ID;

-- endregion

-- ---------------------------------------------------------------------- -
-- 3. Beispiel: Gruppenfunktionen (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie fuer die im System gespeicherten Koeche die folgenden Spalten
-- aus: EMPLOYEE_ID, LAST_NAME, DISH_COUNT

-- Verwendent Sie eine INNER JOIN.

-- Sortieren Sie das Ergebnis nach den Namen der Koeche.

-- Tabellen: EMPLOYEES_ST, COOKS_DISHES
-- User: SH

select e.EMPLOYEE_ID, e.LAST_NAME, count(cd.DISH_ID) as dish_count
from EMPLOYEES_ST e
         inner join COOKS_DISHES CD on e.EMPLOYEE_ID = CD.EMPLOYEE_ID
group by e.EMPLOYEE_ID, e.LAST_NAME
order by e.LAST_NAME;

-- endregion

-- ---------------------------------------------------------------------- -
-- 4. Beispiel: Gruppenfunktionen (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie fuer jeden Kellner die Anzahl von Tischen aus fuer die Sie
-- verantwortlich sind.

-- Geben Sie die folgenden Spalten aus:
-- EMPLOYEE_ID, LAST_NAME, FIRST_NAME, TABLE_COUNT

-- Geben Sie nur Kellner sein die mehr als 2 Tische betreuen.

-- Sortieren Sie das Ergebnis nach den Nachnamen der Kellner.

-- Tabellen: EMPLOYEES_ST, WAITER_HAS_TABLES
-- User: SH

select WHT.EMPLOYEE_ID, LAST_NAME, FIRST_NAME, count(table_id) as table_count from EMPLOYEES_ST inner join WAITER_HAS_TABLES WHT on EMPLOYEES_ST.EMPLOYEE_ID = WHT.EMPLOYEE_ID
group by wht.EMPLOYEE_ID, LAST_NAME, FIRST_NAME
having count(TABLE_ID) > 2;
-- endregion

-- ---------------------------------------------------------------------- -
-- 5. Beispiel: Gruppenfunktionen (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Beim Ausführen der folgenden Abfrage kommt es zu einem Fehler. Erklaeren
-- Sie warum.

-- Tabellen: DISHES
-- User: SH

SELECT DISH_ID, MAX(price)
from DISHES;

-- ANSWER: Eine Gruppenfunktion wird auf Gruppen von Zeilen bezogen, es ist nicht möglich sie auf eine Einzelgruppe anzuwenden --
-- Wir beziehen MAX(price) jedoch auf eine Einzelgruppe, was einen Fehler verursacht --
-- Damit es funktioniert müssen wir gruppieren (mit group by) --

-- endregion
