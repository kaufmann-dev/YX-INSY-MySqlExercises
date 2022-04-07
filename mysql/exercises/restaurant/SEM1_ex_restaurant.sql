use restaurant;

-- ---------------------------------------------------------------------- -
-- 1. Beispiel: Unterabfragen (1.Punkte)
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie das teuerste Gericht aus. Geben Sie die folgenden Spalten
-- aus: LABEL, PRICE

-- Formulieren Sie die Abfrage einmal als INNERE VIEW und einmal als
-- Konditionale Unterabfrage.

-- Tabellen: DISHES
-- User: SH

-- Abfrage 1)

select LABEL, PRICE
from DISHES
where PRICE =
      (select max(PRICE) from DISHES);

select LABEL, PRICE
from DISHES
where PRICE =
      (select max(PRICE) from DISHES);

-- Abfrage 2)

select d.LABEL, d.price
from (select max(PRICE) max_price from DISHES) sub
         join DISHES d on d.price = sub.max_price;

select LABEL, MAX_PRICE PRICE
from (select max(PRICE) MAX_PRICE from DISHES) sub
         join DISHES d on d.PRICE = sub.MAX_PRICE;

-- endregion

-- ---------------------------------------------------------------------- -
-- 2. Beispiel: Unterabfragen (1.Punkte)
-- ---------------------------------------------------------------------- -
-- region

-- Ermitteln Sie welcher Berufsgruppe (COOK bzw. WAITER) die meisten Angestellten
-- zugeordnet sind. Geben Sie die Berufsgruppe und die der Berufsgruppe
-- zugeordnete Zahl an Angestellten aus.

-- Spalten: EMPLOYEE_TYPE, EMPLOYEE_COUNT

-- Tabellen: EMPLOYEES_ST
-- User: SH

select employee_type, count(employee_id) count
from EMPLOYEES_ST
group by employee_type
having count(employee_id) =
       (select max(sub.count)
        from (select count(employee_id) count
              from EMPLOYEES_ST
              group by employee_type) sub);

select employee_type, count(employee_id) EMPLOYEE_COUNT
from EMPLOYEES_ST
group by employee_type
having EMPLOYEE_COUNT in
       (select max(EMPLOYEE_COUNT)
        from (select employee_type, count(employee_id) EMPLOYEE_COUNT from EMPLOYEES_ST group by employee_type) sub);

-- endregion

-- ---------------------------------------------------------------------- -
-- 3. Beispiel: Unterabfragen (1.Punkte)
-- ---------------------------------------------------------------------- -
-- region

-- Welches Gericht kann von den meisten Koechen zubereitet werden? Geben
-- Sie folgende Spalten aus:

-- LABEL, COOK_COUNT

-- @COOK_COUNT: Anzahl der Koeche die das Gericht zubereiten koennen.


-- Tabellen: DISHES, COOKS_DISHES
-- User: SH

select D.LABEL, count(C.employee_id) COOK_COUNT
from COOK_HAS_DISHES_JT C
         join DISHES D on D.dish_id = C.dish_id
group by C.dish_id
having COOK_COUNT =
       (select max(COOK_COUNT)
        from (select count(employee_id) COOK_COUNT
              from COOK_HAS_DISHES_JT
              group by dish_id) X);

select label, count(employee_id) COOK_COUNT
from COOK_HAS_DISHES_JT chs
         join DISHES D on chs.dish_id = D.dish_id
group by chs.dish_id
having COOK_COUNT in
       (select max(COOK_COUNT)
        from (select dish_id, count(employee_id) COOK_COUNT
              from COOK_HAS_DISHES_JT
              group by dish_id) sub);

-- endregion

-- ---------------------------------------------------------------------- -
-- 4. Beispiel: Unterabfragen (1.Punkt)
-- ---------------------------------------------------------------------- -
-- region

-- Finden Sie die Bestellung mit dem hoechsten Umsatz.

-- Hinweis: Ein ORDER_ITEMS Datensatz beschreibt welche Anzahl eines bestimmten
--          Gerichts an welchem Tisch, Teil welcher Bestellung ist.

-- Ausgabe: ORDER_ID, ORDER_AMOUNT

-- @ORDER_AMOUNT: ORDER_AMOUNT entspricht der Summe der Preise aller Gerichte
--                einer Bestellung.

-- Tabellen: ORDER_ITEMS, DISHES
-- User: SH



select OI.ORDER_ID, sum(D.price * OI.AMOUNT) sales
from ORDER_ITEMS_JT OI
         join DISHES D on OI.DISH_ID = D.dish_id
group by OI.ORDER_ID
having sum(D.price * OI.AMOUNT) =
       (select max(sales)
        from (select OI.ORDER_ID, sum(D.price * OI.AMOUNT) sales
              from ORDER_ITEMS_JT OI
                       join DISHES D on OI.DISH_ID = D.dish_id
              group by OI.ORDER_ID) c);

select sub.ORDER_ID, sum(sub.AMOUNT * sub.price) ORDER_AMOUNT
from (select oi.ORDER_ID, oi.DISH_ID, d.price, oi.AMOUNT
      from ORDER_ITEMS_JT oi
               join DISHES d on oi.DISH_ID = d.dish_id) sub
group by sub.ORDER_ID
having ORDER_AMOUNT = (select max(ORDER_AMOUNT)
                       from (select sum(sub.AMOUNT * sub.price) ORDER_AMOUNT
                             from (select oi.ORDER_ID, oi.DISH_ID, d.price, oi.AMOUNT
                                   from ORDER_ITEMS_JT oi
                                            join DISHES d on oi.DISH_ID = d.dish_id) sub
                             group by sub.ORDER_ID) sub);

-- endregion

-- ---------------------------------------------------------------------- -
-- 5. Beispiel: Unterabfragen (1.Punkte)
-- ---------------------------------------------------------------------- -
-- region

-- Ermitteln Sie fuer jede Geschaeftsstelle (BRANCHES) in welcher Rolle (WAITER, COOK)
-- die meisten Angestellten beschaefigt sind.

-- Hinweis: Ein BRANCH_EMPLOYEES Datensatz beschreibt welcher Angestellter in welcher
--          Geschaeftsstelle beschaeftigt ist.

-- Ausgabe: BRANCH_ID, EMPLOYEE_TYPE, EMPLOYEE_COUNT

-- @EMPLOYEE_COUNT: Gibt an wieviele der Mitarbeiter in einer Geschaeftsstellte
--                  in einer bestimmten Rolle beschaeftigt sind.

-- Sortieren Sie das Ergebnis nach der BRANCH_ID

-- Tabellen: BRANCHES, EMPLOYEES_ST, BRANCH_EMPLOYEES
-- User: SH

select * from

select BE.branch_id, employee_type, count(BE.employee_id) emp_count
from BRANCH_EMPLOYEES_JT BE
         join EMPLOYEES_ST ES on ES.employee_id = BE.employee_id
group by ES.employee_type, BE.branch_id
having (emp_count, branch_id) in (SELECT max(emp_count), branch_id
                                  from (select count(BE.employee_id) emp_count, BE.branch_id
                                        from BRANCH_EMPLOYEES_JT BE
                                                 join EMPLOYEES_ST ES on ES.employee_id = BE.employee_id
                                        group by ES.employee_type, BE.branch_id) sub
                                  group by sub.branch_id);

-- endregion

-- ---------------------------------------------------------------------- -
-- 6. Beispiel: Unterabfragen (1.Punkte)
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie fuer Geschaeftsstellen das am oeftesten bestellte Gericht
-- an.

-- Hinweis: Ein OREDER_ITEMS Datensatz beschreibt welche Anzahl eines bestimmten
--          Gerichts an welchem Tisch, Teil welcher Bestellung ist.

-- Hinweis: Ein TABLES Datensatz speichert in welcher Geschaeftsstelle er steht.

-- Ausgabe: NAME, LABEL, DISH_COUNT

-- @NAME: Der Name der Geschaeftsstelle
-- @LABEL: Der Name des Gerichts
-- @DISH_COUNT: Die Anzahl der verkauften Gerichte

-- Tabellen: ORDER_ITEMS, DISHES, TABLES, BRANCHES
-- User: SH

select b.NAME NAME, d.label LABEL, sub1.sum_amount DISH_COUNT
from DISHES d
         join
     (select b.BRANCH_ID, sum(oi.AMOUNT) sum_amount, oi.DISH_ID
      from ORDER_ITEMS_JT oi
               join TABLES t on t.table_id = oi.TABLE_ID
               join BRANCHES b on t.branch_id = b.BRANCH_ID
      group by b.BRANCH_ID, oi.DISH_ID
      having (sum(oi.AMOUNT), b.BRANCH_ID) in
             (select max(sub.sum_amount), BRANCH_ID
              from (select b.BRANCH_ID, sum(oi.AMOUNT) sum_amount, oi.DISH_ID
                    from ORDER_ITEMS_JT oi
                             join TABLES t on t.table_id = oi.TABLE_ID
                             join BRANCHES b on t.branch_id = b.BRANCH_ID
                    group by b.BRANCH_ID, oi.DISH_ID) sub
              group by BRANCH_ID)) sub1 on sub1.DISH_ID = d.dish_id
         join BRANCHES b on b.BRANCH_ID = sub1.BRANCH_ID;

-- endregion