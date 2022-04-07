use restaurant;

select * from DISHES;

select label, dish_type, price
from DISHES
having (price, dish_type)
in(
    select max(price), dish_type
    from DISHES
    group by dish_type
  );

