use restaurant;

# Geben Sie für jede Filiale das am öftesten bestellte Gericht aus.

# Ausgabe: BRANCH_ID, DISH_ID
# Tables: BRANCHES, TABLES, ORDER_ITEMS_JT

select * from BRANCHES;
select * from TABLES;
select * from ORDER_ITEMS_JT;


select TABLE_ID, DISH_ID, sum(amount) summ
from ORDER_ITEMS_JT
group by TABLE_ID, DISH_ID
having (TABLE_ID, summ) in
(select TABLE_ID, max(summ) from
(select TABLE_ID, DISH_ID, sum(amount) summ
from ORDER_ITEMS_JT
group by TABLE_ID, DISH_ID) s1
    group by s1.TABLE_ID);

select DISH_ID, sum(AMOUNT) orders
from TABLES t join ORDER_ITEMS_JT OIJ on t.table_id = OIJ.TABLE_ID
group by DISH_ID;



select b.BRANCH_ID, t.TABLE_ID, DISH_ID, ORDER_ID
from ORDER_ITEMS_JT oi
join TABLES T on T.table_id = oi.TABLE_ID
join BRANCHES B on T.branch_id = B.BRANCH_ID;


select t.TABLE_ID, s1.DISH_ID, s1.orders from
(select DISH_ID, sum(AMOUNT) orders
from TABLES t join ORDER_ITEMS_JT OIJ on t.table_id = OIJ.TABLE_ID
group by DISH_ID) s1
join TABLES t on DISH_ID
having (s1.DISH_ID, s1.orders) in (select DISH_ID, sum(AMOUNT) orders
from TABLES t join ORDER_ITEMS_JT OIJ on t.table_id = OIJ.TABLE_ID
group by DISH_ID);




select oi.TABLE_ID, max(dish_order_sum) dish_order_sum from
(select sum(amount) dish_order_sum, dish_id
from ORDER_ITEMS_JT
group by dish_id) s1
join ORDER_ITEMS_JT oi on s1.DISH_ID = oi.DISH_ID
group by TABLE_ID;

select sum(sub1.order_sum), t.branch_id
from
(select sum(amount) order_sum, table_id
from ORDER_ITEMS_JT
group by table_id) sub1
join TABLES t on t.table_id = sub1.table_id
group by t.branch_id;