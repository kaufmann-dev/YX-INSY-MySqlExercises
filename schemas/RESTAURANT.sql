drop database if exists RESTAURANTS;
create database RESTAURANTS;
use RESTAURANTS;

  CREATE TABLE BRANCHES
(
    BRANCH_ID int not null auto_increment,
    DISTRICT  VARCHAR(40)   NOT NULL,
    ADDRESS   VARCHAR(200)  NOT NULL,
    NAME      VARCHAR(200)  NOT NULL UNIQUE,
    PRIMARY KEY (BRANCH_ID)
);

INSERT INTO BRANCHES (branch_id, district, address, name)
VALUES (1, 'Kirchberg am Wagram', 'Am Tobel', 'Pizzeria Miam Miam');
INSERT INTO BRANCHES (branch_id, district, address, name)
VALUES (2, 'Zwettl', 'Niederstrahlbach 36', 'Wirtshaus Im Demutsgraben');
INSERT INTO BRANCHES (branch_id, district, address, name)
VALUES (3, 'Zwettl', 'Moidrams 1', 'Bergwirt Schrammel');
INSERT INTO BRANCHES (branch_id, district, address, name)
VALUES (4, 'Zwettl', 'Dreifaltigkeitsplatz 3', 'Gasthaus zur Goldenen Rose');


-- ------------------------------------------------------------------------------------------------------------------ --
-- TABLE: EMPLOYEES_ST
-- ------------------------------------------------------------------------------------------------------------------ --

CREATE TABLE E_EMPLOYEE_TYPES
(
    LABEL VARCHAR(10) NOT NULL,
    PRIMARY KEY (LABEL)
);

INSERT INTO E_EMPLOYEE_TYPES
VALUES ('WAITER');
INSERT INTO E_EMPLOYEE_TYPES
VALUES ('COOK');


CREATE TABLE EMPLOYEES_ST
(
    employee_id   int not null  auto_increment,
    first_name    varchar(50)   not null,
    last_name     varchar(50)   not null,
    social_sec_nr varchar(10)   not null unique,
    employee_type varchar(10)   not null,
    primary key (employee_id),
    constraint fk_employee_type foreign key (employee_type)
        references E_EMPLOYEE_TYPES (label)
);

INSERT INTO EMPLOYEES_ST (employee_id, first_name, last_name, social_sec_nr, employee_type)
VALUES (1, 'Adrian', 'Karl', '18011999', 'WAITER');
INSERT INTO EMPLOYEES_ST (employee_id, first_name, last_name, social_sec_nr, employee_type)
VALUES (2, 'Riccardo', 'Kropik', '07121890', 'WAITER');
INSERT INTO EMPLOYEES_ST (employee_id, first_name, last_name, social_sec_nr, employee_type)
VALUES (3, 'Simon ', 'Garschall', '28111998', 'WAITER');
INSERT INTO EMPLOYEES_ST (employee_id, first_name, last_name, social_sec_nr, employee_type)
VALUES (4, 'Jakob', 'Graser', '12031999', 'COOK');
INSERT INTO EMPLOYEES_ST (employee_id, first_name, last_name, social_sec_nr, employee_type)
VALUES (5, 'Bernhard', 'Traschl', '26061999', 'WAITER');
INSERT INTO EMPLOYEES_ST (employee_id, first_name, last_name, social_sec_nr, employee_type)
VALUES (6, 'Julia ', 'Almeder', '16041999', 'COOK');
INSERT INTO EMPLOYEES_ST (employee_id, first_name, last_name, social_sec_nr, employee_type)
VALUES (7, 'Jasmin', 'Köck', '13101999', 'WAITER');
INSERT INTO EMPLOYEES_ST (employee_id, first_name, last_name, social_sec_nr, employee_type)
VALUES (8, 'Stefan', 'Mayer', '13101998', 'COOK');
INSERT INTO EMPLOYEES_ST (employee_id, first_name, last_name, social_sec_nr, employee_type)
VALUES (9, 'Nico ', 'Windtner', '04081999', 'COOK');
INSERT INTO EMPLOYEES_ST (employee_id, first_name, last_name, social_sec_nr, employee_type)
VALUES (10, 'Niklas', 'Mödlagl', '05031999', 'WAITER');
INSERT INTO EMPLOYEES_ST (employee_id, first_name, last_name, social_sec_nr, employee_type)
VALUES (11, 'Thomas', 'Himmer', '11111998', 'COOK');
INSERT INTO EMPLOYEES_ST (employee_id, first_name, last_name, social_sec_nr, employee_type)
VALUES (12, 'Patrick', 'Leister', '05071999', 'COOK');
INSERT INTO EMPLOYEES_ST (employee_id, first_name, last_name, social_sec_nr, employee_type)
VALUES (13, 'Nikolaus ', 'Draeger', '17091999', 'COOK');

-- ------------------------------------------------------------------------------------------------------------------ --
-- TABLE: EMPLOYEES
-- ------------------------------------------------------------------------------------------------------------------ --

create table TABLES
(
    table_id  INT NOT NULL AUTO_INCREMENT,
    table_nr  integer       not null,
    branch_id INT not null,
    primary key (table_id),
    constraint fk_tables_branch_id foreign key (branch_id)
        references BRANCHES (branch_id)
            ON DELETE CASCADE,
    constraint ck_tables_table_nr check ( table_nr > 0 and table_nr < 300)
);

INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (1, 1, 1);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (2, 2, 1);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (3, 3, 1);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (4, 4, 1);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (5, 1, 2);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (6, 2, 2);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (7, 3, 2);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (8, 4, 2);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (9, 1, 3);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (10, 2, 3);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (11, 3, 3);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (12, 4, 3);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (13, 5, 3);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (14, 1, 4);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (15, 2, 4);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (16, 3, 4);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (17, 4, 4);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (18, 5, 4);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (19, 5, 1);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (20, 6, 1);
INSERT INTO TABLES (table_id, table_nr, branch_id)
VALUES (21, 6, 4);

-- ------------------------------------------------------------------------------------------------------------------ --
-- TABLE: DISHES
-- ------------------------------------------------------------------------------------------------------------------ --

CREATE table INGREDIENTS
(
    ingredient_id INT NOT NULL AUTO_INCREMENT,
    label         varchar(50)   not null unique,
    stored_amount integer       not null,
    primary key (ingredient_id),
    constraint fk_ingredients_stored_amount check ( stored_amount > 0 )
);

INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (1, 'Kase', 20);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (2, 'Milch', 60);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (3, 'Cola', 1000);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (4, 'Mehl', 5000);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (5, 'Kartoffeln', 30);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (6, 'Karotten', 1000);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (7, 'Schokolade', 30);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (8, 'Cobe Rind', 30);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (9, 'Pute Brust', 40);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (10, 'Pute - Keule', 60);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (11, 'Reis', 80);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (12, 'Eier', 100);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (13, 'Gewuerzmischung', 40);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (14, 'Tomaten', 1000);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (15, 'Soja Souce', 30);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (16, 'Rind - Zunge', 50);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (17, 'Schweinsmedallion', 20);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (18, 'Zuccini', 3000);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (19, 'Zwiebeln', 200);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (20, 'Salat', 200);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (21, 'Chinakohl', 100);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (22, 'Schafkäse', 50);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (23, 'Maiskörner', 300);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (24, 'Tunfisch', 200);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (25, 'Panierpulver', 300);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (26, 'Faschiertes', 400);
INSERT INTO INGREDIENTS (ingredient_id, label, stored_amount)
VALUES (27, 'Huhn ', 500);

create table E_DISH_TYPES
(
    label varchar(15) not null,
    primary key (label)
);

insert into E_DISH_TYPES
values ('VORSPEISE');
insert into E_DISH_TYPES
values ('ZUSPEISE');
insert into E_DISH_TYPES
values ('HAUPTSPEISE');


create table DISHES
(
    dish_id   INT NOT NULL auto_increment,
    dish_type VARCHAR(15)   NOT NULL,
    label     varchar(50)   not null,
    price     DECIMAL(5, 2)  not null,
    primary key (dish_id),
    constraint fk_dishes_dish_type foreign key (dish_type)
        references E_DISH_TYPES (label),
    constraint ck_dishes_price check ( price >= 0 )
);

INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (1, 'VORSPEISE', 'Zuccinisuppe', 3);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (2, 'VORSPEISE', 'Tomatensuppe', 3);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (3, 'VORSPEISE', 'Klare Suppe', 2);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (4, 'VORSPEISE', 'Gulaschsuppe', 4);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (5, 'VORSPEISE', 'Fruehlingsrollen', 3);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (6, 'VORSPEISE', 'ungarischer Eiaufstrich', 2);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (10, 'ZUSPEISE', 'griechischer Salat', 3);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (11, 'ZUSPEISE', 'Bauernsalat', 3);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (12, 'ZUSPEISE', 'Zuccinisalat', 3);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (13, 'ZUSPEISE', 'Tunfischsalat', 4);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (14, 'HAUPTSPEISE', 'Wienerschnitzel', 7);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (15, 'HAUPTSPEISE', 'Rindsbraten', 10);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (16, 'HAUPTSPEISE', 'Rindsgulasch', 8);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (17, 'HAUPTSPEISE', 'Rindsroulade', 8);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (18, 'HAUPTSPEISE', 'Krautrollen', 9);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (19, 'HAUPTSPEISE', 'gebackenes Haendel', 10);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (20, 'HAUPTSPEISE', 'Huhngeschnetzeltes', 7);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (21, 'HAUPTSPEISE', 'Pizza Tonno', 8);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (22, 'HAUPTSPEISE', 'Pizza Neopoliatano', 8);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (23, 'HAUPTSPEISE', 'Pizza Margerita', 6);
INSERT INTO DISHES (dish_id, dish_type, label, price)
VALUES (24, 'HAUPTSPEISE', 'Pizza Salami', 6);


create table DISH_INGREDIENTS_JT
(
    dish_id       INT not null,
    ingredient_id INT not null,
    amount        integer       not null,
    primary key (dish_id, ingredient_id),
    constraint fk_di_dish_id foreign key (dish_id)
        references DISHES (dish_id),
    constraint fk_di_ingredient_id foreign key (ingredient_id)
        references INGREDIENTS (ingredient_id),
    constraint ck_dish_ingredient_amount check ( amount >= 0 )
);

INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (3, 4, 1);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 5, 1);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 13, 1);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 19, 1);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (5, 14, 2);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 15, 2);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 19, 2);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (2, 5, 3);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 16, 3);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 18, 3);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 19, 3);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 4, 4);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 13, 4);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 19, 4);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 2, 5);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 4, 5);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 9, 5);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 13, 5);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 18, 5);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 26, 5);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 1, 6);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 2, 6);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 4, 6);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 5, 6);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 12, 6);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 18, 6);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 19, 6);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 21, 6);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 12, 10);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 14, 10);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 18, 10);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 20, 10);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (2, 22, 10);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 23, 10);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 6, 11);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 19, 11);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 20, 11);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 22, 11);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 23, 11);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 1, 12);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 6, 12);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (2, 12, 12);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 13, 12);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 18, 12);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 1, 13);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 15, 13);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 20, 13);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 22, 13);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 2, 14);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 4, 14);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (3, 5, 14);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 9, 14);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 11, 14);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (2, 12, 14);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 25, 14);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 4, 15);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 8, 15);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 19, 15);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 6, 16);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 8, 16);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 13, 16);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 15, 16);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 1, 17);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 6, 17);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 8, 17);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 12, 17);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 15, 17);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 11, 18);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 13, 18);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (2, 14, 18);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 21, 18);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 26, 18);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 2, 19);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 4, 19);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 12, 19);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 13, 19);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 27, 19);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 4, 20);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 13, 20);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 19, 20);
INSERT INTO DISH_INGREDIENTS_JT (amount, ingredient_id, dish_id)
VALUES (1, 27, 20);

-- ------------------------------------------------------------------------------------------------------------------ --
-- TABLE: COOKS_DISHES
-- ------------------------------------------------------------------------------------------------------------------ --

CREATE TABLE COOK_HAS_DISHES_JT
(
    employee_id INT not null,
    dish_id     INT not null,
    primary key (employee_id, dish_id),
    constraint fk_cd_employee_id foreign key (employee_id)
        references EMPLOYEES_ST (employee_id),
    constraint fk_cd_dish_id foreign key (dish_id) references DISHES (dish_id)
);

INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (4, 2);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (4, 5);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (4, 14);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (4, 17);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (6, 18);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (6, 19);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (6, 20);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (8, 1);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (8, 2);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (8, 3);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (8, 4);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (9, 20);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (9, 19);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (11, 11);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (11, 13);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (11, 14);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (11, 18);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (11, 20);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (11, 1);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (12, 2);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (12, 3);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (12, 4);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (13, 5);
INSERT INTO COOK_HAS_DISHES_JT(employee_id, dish_id)
VALUES (13, 6);

-- ------------------------------------------------------------------------------------------------------------------ --
-- TABLE: BRANCH_EMPLOYEES
-- ------------------------------------------------------------------------------------------------------------------ --

CREATE TABLE BRANCH_EMPLOYEES_JT
(
    employee_id INT not null,
    branch_id INT not null,
    primary key (employee_id, branch_id),
    constraint fk_be_employee_id foreign key (employee_id)
        references EMPLOYEES_ST (employee_id),
    constraint fk_be_branch_id foreign key (branch_id)
        references BRANCHES (branch_id)
);

INSERT INTO BRANCH_EMPLOYEES_JT (employee_id, branch_id)
VALUES (1, 1);
INSERT INTO BRANCH_EMPLOYEES_JT (employee_id, branch_id)
VALUES (2, 1);
INSERT INTO BRANCH_EMPLOYEES_JT (employee_id, branch_id)
VALUES (3, 1);
INSERT INTO BRANCH_EMPLOYEES_JT (employee_id, branch_id)
VALUES (2, 2);
INSERT INTO BRANCH_EMPLOYEES_JT (employee_id, branch_id)
VALUES (4, 2);
INSERT INTO BRANCH_EMPLOYEES_JT (employee_id, branch_id)
VALUES (5, 2);
INSERT INTO BRANCH_EMPLOYEES_JT (employee_id, branch_id)
VALUES (6, 2);
INSERT INTO BRANCH_EMPLOYEES_JT (employee_id, branch_id)
VALUES (1, 3);
INSERT INTO BRANCH_EMPLOYEES_JT (employee_id, branch_id)
VALUES (4, 3);
INSERT INTO BRANCH_EMPLOYEES_JT (employee_id, branch_id)
VALUES (7, 3);
INSERT INTO BRANCH_EMPLOYEES_JT (employee_id, branch_id)
VALUES (2, 4);
INSERT INTO BRANCH_EMPLOYEES_JT (employee_id, branch_id)
VALUES (13, 4);
INSERT INTO BRANCH_EMPLOYEES_JT (employee_id, branch_id)
VALUES (9, 4);


-- ------------------------------------------------------------------------------------------------------------------ --
-- TABLE: ORDERS
-- ------------------------------------------------------------------------------------------------------------------ --

CREATE TABLE E_ORDER_TYPE
(
    LABEL varchar(20) not null,
    primary key (LABEL)
);

insert into E_ORDER_TYPE
values ('GUEST');
insert into E_ORDER_TYPE
values ('BIRTHDAY_CELEBRATION');
insert into E_ORDER_TYPE
values ('COMPANY_MEETING');
insert into E_ORDER_TYPE
values ('TRIP');
insert into E_ORDER_TYPE
values ('TOURISTS');
insert into E_ORDER_TYPE
values ('PUBLIC_HOLIDAY');

CREATE TABLE CUSTOMER_ORDERS
(
    ORDER_ID   INT NOT NULL AUTO_INCREMENT,
    CREATED_AT DATE          NOT NULL,
    ORDER_TYPE VARCHAR(20)   NOT NULL,
    PRIMARY KEY (ORDER_ID),
    CONSTRAINT FK_ORDERS_ORDER_TYPE FOREIGN KEY (ORDER_TYPE)
        REFERENCES E_ORDER_TYPE (LABEL)
);

-- 03.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (1, timestamp '2020-01-03 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (2, timestamp '2020-01-03 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (3, timestamp '2020-01-03 18:00:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (4, timestamp '2020-01-03 18:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (5, timestamp '2020-01-03 18:45:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (6, timestamp '2020-01-03 19:10:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (7, timestamp '2020-01-03 19:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (8, timestamp '2020-01-03 20:26:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (9, timestamp '2020-01-03 20:30:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (10, timestamp '2020-01-03 21:00:00', 'GUEST');
-- 04.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (11, timestamp '2020-01-04 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (12, timestamp '2020-01-04 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (13, timestamp '2020-01-04 18:00:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (14, timestamp '2020-01-04 18:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (15, timestamp '2020-01-04 18:45:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (16, timestamp '2020-01-04 19:10:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (17, timestamp '2020-01-04 19:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (18, timestamp '2020-01-04 20:26:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (19, timestamp '2020-01-04 20:30:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (20, timestamp '2020-01-04 21:00:00', 'GUEST');
-- 08.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (21, timestamp '2020-01-08 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (22, timestamp '2020-01-08 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (23, timestamp '2020-01-08 18:00:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (24, timestamp '2020-01-08 18:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (25, timestamp '2020-01-08 18:45:00', 'GUEST');
-- 09.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (26, timestamp '2020-01-10 14:15:00', 'COMPANY_MEETING');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (27, timestamp '2020-01-10 14:23:00', 'COMPANY_MEETING');
-- 10.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (28, timestamp '2020-01-10 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (29, timestamp '2020-01-10 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (30, timestamp '2020-01-10 18:00:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (31, timestamp '2020-01-10 18:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (32, timestamp '2020-01-10 18:45:00', 'GUEST');
-- 11.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (33, timestamp '2020-01-11 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (34, timestamp '2020-01-11 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (35, timestamp '2020-01-11 18:00:00', 'GUEST');
-- 15.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (36, timestamp '2020-01-15 17:15:00', 'TRIP');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (37, timestamp '2020-01-15 17:23:00', 'TRIP');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (38, timestamp '2020-01-15 18:00:00', 'GUEST');
-- 17.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (39, timestamp '2020-01-17 17:15:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (41, timestamp '2020-01-17 17:23:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (42, timestamp '2020-01-17 18:00:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (43, timestamp '2020-01-17 18:15:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (44, timestamp '2020-01-17 18:45:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (45, timestamp '2020-01-17 19:10:00', 'PUBLIC_HOLIDAY');
-- 01.02.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (46, timestamp '2020-02-01 17:15:00', 'TRIP');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (47, timestamp '2020-02-01 17:23:00', 'TRIP');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (48, timestamp '2020-02-01 18:00:00', 'GUEST');
-- 14.02.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (49, timestamp '2020-02-14 17:15:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (50, timestamp '2020-02-14 17:23:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (51, timestamp '2020-02-14 18:00:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (52, timestamp '2020-02-14 18:15:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (53, timestamp '2020-02-14 18:45:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (54, timestamp '2020-02-14 19:10:00', 'PUBLIC_HOLIDAY');
-- 15.02.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (55, timestamp '2020-02-15 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (56, timestamp '2020-02-15 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (57, timestamp '2020-02-15 18:00:00', 'GUEST');
-- 07.03.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (58, timestamp '2020-03-07 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (59, timestamp '2020-03-07 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (60, timestamp '2020-03-07 18:00:00', 'GUEST');
-- 08.03.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (61, timestamp '2020-03-08 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (62, timestamp '2020-03-08 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (63, timestamp '2020-03-08 18:00:00', 'GUEST');
-- 12.03.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (64, timestamp '2020-03-12 17:15:00', 'BIRTHDAY_CELEBRATION');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (65, timestamp '2020-03-12 17:23:00', 'BIRTHDAY_CELEBRATION');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (67, timestamp '2020-03-12 18:00:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (68, timestamp '2020-03-12 18:15:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (69, timestamp '2020-03-12 18:45:00', 'GUEST');
-- 21.03.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (70, timestamp '2020-03-21 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (71, timestamp '2020-03-21 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (72, timestamp '2020-03-21 18:00:00', 'GUEST');
-- 02.04.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (73, timestamp '2020-02-04 17:15:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (74, timestamp '2020-02-04 17:23:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (75, timestamp '2020-02-04 18:00:00', 'PUBLIC_HOLIDAY');
-- 25.05.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (76, timestamp '2020-05-25 17:15:00', 'TOURISTS');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (77, timestamp '2020-05-25 17:23:00', 'TOURISTS');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (78, timestamp '2020-05-25 18:00:00', 'TOURISTS');

-- 03.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (79, timestamp '2020-01-03 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (80, timestamp '2020-01-03 18:00:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (81, timestamp '2020-01-03 18:15:00', 'GUEST');
-- 04.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (82, timestamp '2020-01-04 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (83, timestamp '2020-01-04 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (84, timestamp '2020-01-04 18:00:00', 'GUEST');
-- 08.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (85, timestamp '2020-01-08 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (86, timestamp '2020-01-08 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (87, timestamp '2020-01-08 18:00:00', 'GUEST');
-- 09.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (88, timestamp '2020-01-10 14:15:00', 'COMPANY_MEETING');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (89, timestamp '2020-01-10 14:23:00', 'COMPANY_MEETING');
-- 10.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (90, timestamp '2020-01-10 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (91, timestamp '2020-01-10 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (92, timestamp '2020-01-10 18:00:00', 'GUEST');
-- 11.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (93, timestamp '2020-01-11 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (94, timestamp '2020-01-11 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (95, timestamp '2020-01-11 18:00:00', 'GUEST');
-- 15.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (96, timestamp '2020-01-15 17:15:00', 'TRIP');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (97, timestamp '2020-01-15 17:23:00', 'TRIP');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (98, timestamp '2020-01-15 18:00:00', 'GUEST');
-- 17.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (99, timestamp '2020-01-17 17:15:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (101, timestamp '2020-01-17 18:00:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (102, timestamp '2020-01-17 18:15:00', 'PUBLIC_HOLIDAY');
-- 01.02.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (103, timestamp '2020-02-01 17:15:00', 'TRIP');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (104, timestamp '2020-02-01 17:23:00', 'TRIP');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (105, timestamp '2020-02-01 18:00:00', 'GUEST');
-- 14.02.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (106, timestamp '2020-02-14 17:15:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (107, timestamp '2020-02-14 17:23:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (108, timestamp '2020-02-14 18:45:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (109, timestamp '2020-02-14 19:10:00', 'PUBLIC_HOLIDAY');
-- 15.02.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (111, timestamp '2020-02-15 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (112, timestamp '2020-02-15 18:00:00', 'GUEST');
-- 07.03.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (113, timestamp '2020-03-07 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (114, timestamp '2020-03-07 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (115, timestamp '2020-03-07 18:00:00', 'GUEST');
-- 08.03.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (116, timestamp '2020-03-08 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (117, timestamp '2020-03-08 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (118, timestamp '2020-03-08 18:00:00', 'GUEST');
-- 12.03.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (119, timestamp '2020-03-12 17:15:00', 'BIRTHDAY_CELEBRATION');
-- 21.03.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (121, timestamp '2020-03-21 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (122, timestamp '2020-03-21 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (123, timestamp '2020-03-21 18:00:00', 'GUEST');
-- 02.04.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (124, timestamp '2020-02-04 17:15:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (125, timestamp '2020-02-04 17:23:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (126, timestamp '2020-02-04 18:00:00', 'PUBLIC_HOLIDAY');
-- 25.05.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (127, timestamp '2020-05-25 17:15:00', 'TOURISTS');


-- 03.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (130, timestamp '2020-01-03 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (131, timestamp '2020-01-03 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (132, timestamp '2020-01-03 18:00:00', 'GUEST');
-- 04.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (133, timestamp '2020-01-04 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (134, timestamp '2020-01-04 17:23:00', 'GUEST');
-- 08.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (135, timestamp '2020-01-08 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (136, timestamp '2020-01-08 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (137, timestamp '2020-01-08 18:00:00', 'GUEST');
-- 09.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (138, timestamp '2020-01-10 14:15:00', 'COMPANY_MEETING');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (139, timestamp '2020-01-10 14:23:00', 'COMPANY_MEETING');
-- 10.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (140, timestamp '2020-01-10 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (141, timestamp '2020-01-10 17:23:00', 'GUEST');
-- 11.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (142, timestamp '2020-01-11 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (143, timestamp '2020-01-11 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (144, timestamp '2020-01-11 18:00:00', 'GUEST');
-- 15.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (145, timestamp '2020-01-15 17:15:00', 'TRIP');
-- 17.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (146, timestamp '2020-01-17 17:15:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (147, timestamp '2020-01-17 17:23:00', 'PUBLIC_HOLIDAY');
-- 01.02.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (148, timestamp '2020-02-01 17:15:00', 'TRIP');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (149, timestamp '2020-02-01 17:23:00', 'TRIP');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (150, timestamp '2020-02-01 18:00:00', 'GUEST');
-- 14.02.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (151, timestamp '2020-02-14 17:15:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (152, timestamp '2020-02-14 17:23:00', 'PUBLIC_HOLIDAY');
-- 15.02.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (153, timestamp '2020-02-15 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (154, timestamp '2020-02-15 17:23:00', 'GUEST');
-- 07.03.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (155, timestamp '2020-03-07 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (156, timestamp '2020-03-07 17:23:00', 'GUEST');
-- 08.03.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (157, timestamp '2020-03-08 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (158, timestamp '2020-03-08 17:23:00', 'GUEST');
-- 12.03.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (159, timestamp '2020-03-12 17:15:00', 'BIRTHDAY_CELEBRATION');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (160, timestamp '2020-03-12 17:23:00', 'BIRTHDAY_CELEBRATION');
-- 21.03.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (161, timestamp '2020-03-21 17:15:00', 'GUEST');
-- 02.04.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (162, timestamp '2020-02-04 17:15:00', 'PUBLIC_HOLIDAY');
-- 25.05.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (163, timestamp '2020-05-25 17:15:00', 'TOURISTS');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (164, timestamp '2020-05-25 17:23:00', 'TOURISTS');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (165, timestamp '2020-05-25 18:00:00', 'TOURISTS');

-- 03.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (171, timestamp '2020-01-03 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (172, timestamp '2020-01-03 18:00:00', 'GUEST');
-- 04.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (173, timestamp '2020-01-04 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (174, timestamp '2020-01-04 18:00:00', 'GUEST');
-- 08.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (175, timestamp '2020-01-08 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (176, timestamp '2020-01-08 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (177, timestamp '2020-01-08 18:00:00', 'GUEST');
-- 09.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (178, timestamp '2020-01-10 14:15:00', 'COMPANY_MEETING');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (179, timestamp '2020-01-10 14:23:00', 'COMPANY_MEETING');
-- 10.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (180, timestamp '2020-01-10 18:00:00', 'GUEST');
-- 11.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (181, timestamp '2020-01-11 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (182, timestamp '2020-01-11 18:00:00', 'GUEST');
-- 15.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (183, timestamp '2020-01-15 17:15:00', 'TRIP');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (184, timestamp '2020-01-15 17:23:00', 'TRIP');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (185, timestamp '2020-01-15 18:00:00', 'GUEST');
-- 17.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (186, timestamp '2020-01-17 17:15:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (187, timestamp '2020-01-17 18:00:00', 'PUBLIC_HOLIDAY');
-- 01.02.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (188, timestamp '2020-02-01 17:15:00', 'TRIP');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (189, timestamp '2020-02-01 17:23:00', 'TRIP');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (190, timestamp '2020-02-01 18:00:00', 'GUEST');
-- 14.02.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (191, timestamp '2020-02-14 17:15:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (192, timestamp '2020-02-14 17:23:00', 'PUBLIC_HOLIDAY');
-- 15.02.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (193, timestamp '2020-02-15 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (194, timestamp '2020-02-15 18:00:00', 'GUEST');
-- 07.03.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (195, timestamp '2020-03-07 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (196, timestamp '2020-03-07 17:23:00', 'GUEST');
-- 08.03.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (197, timestamp '2020-03-08 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (198, timestamp '2020-03-08 17:23:00', 'GUEST');
-- 12.03.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (199, timestamp '2020-03-12 17:15:00', 'BIRTHDAY_CELEBRATION');
-- 21.03.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (201, timestamp '2020-03-21 17:15:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (202, timestamp '2020-03-21 17:23:00', 'GUEST');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (203, timestamp '2020-03-21 18:00:00', 'GUEST');
-- 02.04.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (204, timestamp '2020-02-04 17:15:00', 'PUBLIC_HOLIDAY');
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (205, timestamp '2020-02-04 17:23:00', 'PUBLIC_HOLIDAY');
-- 25.05.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDERS (order_id, CREATED_AT, ORDER_TYPE)
VALUES (206, timestamp '2020-05-25 17:15:00', 'TOURISTS');

create table E_ORDER_STATUS
(
    label varchar(10) not null,
    primary key (label)
);

insert into E_ORDER_STATUS
values ('ORDERED');
insert into E_ORDER_STATUS
values ('SERVED');
insert into E_ORDER_STATUS
values ('PAID');
insert into E_ORDER_STATUS
values ('CANCLED');
insert into E_ORDER_STATUS
values ('RE_ORDERED');
insert into E_ORDER_STATUS
values ('UPDATED');

CREATE TABLE CUSTOMER_ORDER_STATUS_JT
(
    ORDER_ID          INT NOT NULL,
    ORDER_STATUS      VARCHAR(10)   NOT NULL,
    STATUS_CHANGED_AT timestamp    NOT NULL,
    PRIMARY KEY (ORDER_ID, ORDER_STATUS, STATUS_CHANGED_AT),
    CONSTRAINT FK_COS_ORDER_ID FOREIGN KEY (ORDER_ID)
        REFERENCES CUSTOMER_ORDERS (ORDER_ID),
    CONSTRAINT FK_COS_ORDER_STATUS FOREIGN KEY (ORDER_STATUS)
        REFERENCES E_ORDER_STATUS (LABEL)
);

-- 03.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (1, timestamp '2020-01-03 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (1, timestamp '2020-01-03 17:40:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (1, timestamp '2020-01-03 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (2, timestamp '2020-01-03 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (2, timestamp '2020-01-03 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (2, timestamp '2020-01-03 18:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (3, timestamp '2020-01-03 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (3, timestamp '2020-01-03 18:30:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (3, timestamp '2020-01-03 19:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (4, timestamp '2020-01-03 18:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (4, timestamp '2020-01-03 18:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (4, timestamp '2020-01-03 20:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (5, timestamp '2020-01-03 18:45:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (5, timestamp '2020-01-03 19:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (5, timestamp '2020-01-03 20:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (6, timestamp '2020-01-03 19:10:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (6, timestamp '2020-01-03 19:30:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (6, timestamp '2020-01-03 20:30:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (7, timestamp '2020-01-03 19:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (7, timestamp '2020-01-03 20:23:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (7, timestamp '2020-01-03 21:10:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (8, timestamp '2020-01-03 20:26:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (8, timestamp '2020-01-03 21:00:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (8, timestamp '2020-01-03 22:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (9, timestamp '2020-01-03 20:30:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (9, timestamp '2020-01-03 21:00:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (9, timestamp '2020-01-03 22:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (10, timestamp '2020-01-03 21:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (10, timestamp '2020-01-03 21:29:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (10, timestamp '2020-01-03 22:15:00', 'PAID');

-- 04.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (11, timestamp '2020-01-04 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (11, timestamp '2020-01-04 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (11, timestamp '2020-01-04 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (12, timestamp '2020-01-04 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (12, timestamp '2020-01-04 17:30:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (12, timestamp '2020-01-04 18:30:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (13, timestamp '2020-01-04 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (13, timestamp '2020-01-04 18:25:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (13, timestamp '2020-01-04 19:20:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (14, timestamp '2020-01-04 18:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (14, timestamp '2020-01-04 18:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (14, timestamp '2020-01-04 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (15, timestamp '2020-01-04 18:45:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (15, timestamp '2020-01-04 19:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (15, timestamp '2020-01-04 20:05:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (16, timestamp '2020-01-04 19:10:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (16, timestamp '2020-01-04 19:30:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (16, timestamp '2020-01-04 20:10:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (17, timestamp '2020-01-04 19:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (17, timestamp '2020-01-04 20:00:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (17, timestamp '2020-01-04 20:50:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (18, timestamp '2020-01-04 20:26:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (18, timestamp '2020-01-04 21:00:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (18, timestamp '2020-01-04 22:0:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (19, timestamp '2020-01-04 20:30:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (19, timestamp '2020-01-04 20:50:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (19, timestamp '2020-01-04 22:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (20, timestamp '2020-01-04 21:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (20, timestamp '2020-01-04 21:20:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (20, timestamp '2020-01-04 22:00:00', 'PAID');

-- 08.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (21, timestamp '2020-01-08 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (21, timestamp '2020-01-08 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (21, timestamp '2020-01-08 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (22, timestamp '2020-01-08 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (22, timestamp '2020-01-08 18:00:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (22, timestamp '2020-01-08 19:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (23, timestamp '2020-01-08 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (23, timestamp '2020-01-08 18:30:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (23, timestamp '2020-01-08 19:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (24, timestamp '2020-01-08 18:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (24, timestamp '2020-01-08 18:55:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (24, timestamp '2020-01-08 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (25, timestamp '2020-01-08 18:45:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (25, timestamp '2020-01-08 19:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (25, timestamp '2020-01-08 20:45:00', 'PAID');

-- 09.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (26, timestamp '2020-01-10 14:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (26, timestamp '2020-01-10 14:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (26, timestamp '2020-01-10 15:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (27, timestamp '2020-01-10 14:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (27, timestamp '2020-01-10 14:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (27, timestamp '2020-01-10 15:23:00', 'PAID');

-- 10.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (28, timestamp '2020-01-10 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (28, timestamp '2020-01-10 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (28, timestamp '2020-01-10 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (29, timestamp '2020-01-10 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (29, timestamp '2020-01-10 17:38:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (29, timestamp '2020-01-10 18:05:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (30, timestamp '2020-01-10 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (30, timestamp '2020-01-10 18:20:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (30, timestamp '2020-01-10 19:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (31, timestamp '2020-01-10 18:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (31, timestamp '2020-01-10 18:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (31, timestamp '2020-01-10 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (32, timestamp '2020-01-10 18:45:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (32, timestamp '2020-01-10 19:05:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (32, timestamp '2020-01-10 20:00:00', 'PAID');

-- 11.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (33, timestamp '2020-01-11 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (33, timestamp '2020-01-11 17:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (33, timestamp '2020-01-11 17:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (34, timestamp '2020-01-11 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (34, timestamp '2020-01-11 17:23:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (34, timestamp '2020-01-11 17:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (35, timestamp '2020-01-11 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (35, timestamp '2020-01-11 18:00:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (35, timestamp '2020-01-11 18:00:00', 'PAID');

-- 15.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (36, timestamp '2020-01-15 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (36, timestamp '2020-01-15 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (36, timestamp '2020-01-15 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (37, timestamp '2020-01-15 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (37, timestamp '2020-01-15 17:50:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (37, timestamp '2020-01-15 19:0:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (38, timestamp '2020-01-15 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (38, timestamp '2020-01-15 18:20:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (38, timestamp '2020-01-15 19:10:00', 'PAID');

-- 17.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (39, timestamp '2020-01-17 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (39, timestamp '2020-01-17 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (39, timestamp '2020-01-17 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (41, timestamp '2020-01-17 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (41, timestamp '2020-01-17 17:53:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (41, timestamp '2020-01-17 19:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (42, timestamp '2020-01-17 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (42, timestamp '2020-01-17 18:20:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (42, timestamp '2020-01-17 19:20:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (43, timestamp '2020-01-17 18:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (43, timestamp '2020-01-17 18:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (43, timestamp '2020-01-17 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (44, timestamp '2020-01-17 18:45:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (44, timestamp '2020-01-17 19:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (44, timestamp '2020-01-17 20:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (45, timestamp '2020-01-17 19:10:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (45, timestamp '2020-01-17 19:30:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (45, timestamp '2020-01-17 20:10:00', 'PAID');

-- 01.02.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (46, timestamp '2020-02-01 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (46, timestamp '2020-02-01 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (46, timestamp '2020-02-01 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (47, timestamp '2020-02-01 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (47, timestamp '2020-02-01 17:25:00', 'CANCLED');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (48, timestamp '2020-02-01 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (48, timestamp '2020-02-01 18:20:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (48, timestamp '2020-02-01 19:00:00', 'PAID');

-- 14.02.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (49, timestamp '2020-02-14 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (49, timestamp '2020-02-14 17:25:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (49, timestamp '2020-02-14 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (50, timestamp '2020-02-14 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (50, timestamp '2020-02-14 18:00:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (50, timestamp '2020-02-14 19:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (51, timestamp '2020-02-14 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (51, timestamp '2020-02-14 18:05:00', 'CANCLED');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (52, timestamp '2020-02-14 18:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (52, timestamp '2020-02-14 18:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (52, timestamp '2020-02-14 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (53, timestamp '2020-02-14 18:45:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (53, timestamp '2020-02-14 19:05:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (53, timestamp '2020-02-14 20:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (54, timestamp '2020-02-14 19:10:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (54, timestamp '2020-02-14 19:18:00', 'CANCLED');

-- 15.02.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (55, timestamp '2020-02-15 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (55, timestamp '2020-02-15 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (55, timestamp '2020-02-15 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (56, timestamp '2020-02-15 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (56, timestamp '2020-02-15 17:50:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (56, timestamp '2020-02-15 19:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (57, timestamp '2020-02-15 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (57, timestamp '2020-02-15 18:07:00', 'CANCLED');

-- 07.03.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (58, timestamp '2020-03-07 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (58, timestamp '2020-03-07 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (58, timestamp '2020-03-07 19:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (59, timestamp '2020-03-07 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (59, timestamp '2020-03-07 17:55:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (59, timestamp '2020-03-07 18:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (60, timestamp '2020-03-07 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (60, timestamp '2020-03-07 18:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (60, timestamp '2020-03-07 19:00:00', 'PAID');

-- 08.03.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (61, timestamp '2020-03-08 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (61, timestamp '2020-03-08 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (61, timestamp '2020-03-08 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (62, timestamp '2020-03-08 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (62, timestamp '2020-03-08 18:00:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (62, timestamp '2020-03-08 18:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (63, timestamp '2020-03-08 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (63, timestamp '2020-03-08 18:07:00', 'CANCLED');

-- 12.03.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (64, timestamp '2020-03-12 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (64, timestamp '2020-03-12 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (64, timestamp '2020-03-12 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (65, timestamp '2020-03-12 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (65, timestamp '2020-03-12 18:23:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (65, timestamp '2020-03-12 19:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (67, timestamp '2020-03-12 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (67, timestamp '2020-03-12 18:07:00', 'CANCLED');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (68, timestamp '2020-03-12 18:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (68, timestamp '2020-03-12 18:20:00', 'CANCLED');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (69, timestamp '2020-03-12 18:45:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (69, timestamp '2020-03-12 19:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (69, timestamp '2020-03-12 20:05:00', 'PAID');

-- 21.03.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (70, timestamp '2020-03-21 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (70, timestamp '2020-03-21 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (70, timestamp '2020-03-21 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (71, timestamp '2020-03-21 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (71, timestamp '2020-03-21 18:00:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (71, timestamp '2020-03-21 19:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (72, timestamp '2020-03-21 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (72, timestamp '2020-03-21 18:04:00', 'CANCLED');

-- 02.04.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (73, timestamp '2020-02-04 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (73, timestamp '2020-02-04 17:25:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (73, timestamp '2020-02-04 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (74, timestamp '2020-02-04 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (74, timestamp '2020-02-04 18:00:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (74, timestamp '2020-02-04 19:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (75, timestamp '2020-02-04 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (75, timestamp '2020-02-04 18:07:00', 'CANCLED');

-- 25.05.2018
-- 'Pizzeria Miam Miam'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (76, timestamp '2020-05-25 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (76, timestamp '2020-05-25 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (76, timestamp '2020-05-25 17:40:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (76, timestamp '2020-05-25 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (77, timestamp '2020-05-25 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (77, timestamp '2020-05-25 17:30:00', 'CANCLED');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (78, timestamp '2020-05-25 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (78, timestamp '2020-05-25 18:07:00', 'CANCLED');

-- 03.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (79, timestamp '2020-01-03 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (79, timestamp '2020-01-03 17:30:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (79, timestamp '2020-01-03 18:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (80, timestamp '2020-01-03 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (80, timestamp '2020-01-03 18:07:00', 'CANCLED');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (81, timestamp '2020-01-03 18:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (81, timestamp '2020-01-03 18:30:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (81, timestamp '2020-01-03 18:40:00', 'RE_ORDERED');

-- 04.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (82, timestamp '2020-01-04 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (82, timestamp '2020-01-04 17:25:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (82, timestamp '2020-01-04 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (83, timestamp '2020-01-04 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (83, timestamp '2020-01-04 17:48:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (83, timestamp '2020-01-04 19:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (84, timestamp '2020-01-04 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (84, timestamp '2020-01-04 18:04:00', 'CANCLED');

-- 08.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (85, timestamp '2020-01-08 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (85, timestamp '2020-01-08 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (85, timestamp '2020-01-08 19:35:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (86, timestamp '2020-01-08 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (86, timestamp '2020-01-08 17:30:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (86, timestamp '2020-01-08 17:40:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (86, timestamp '2020-01-08 17:50:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (86, timestamp '2020-01-08 18:10:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (86, timestamp '2020-01-08 18:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (86, timestamp '2020-01-08 19:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (87, timestamp '2020-01-08 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (87, timestamp '2020-01-08 18:08:00', 'CANCLED');

-- 09.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (88, timestamp '2020-01-10 14:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (88, timestamp '2020-01-10 14:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (88, timestamp '2020-01-10 14:45:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (88, timestamp '2020-01-10 15:00:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (88, timestamp '2020-01-10 16:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (89, timestamp '2020-01-10 14:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (89, timestamp '2020-01-10 14:40:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (89, timestamp '2020-01-10 15:23:00', 'PAID');

-- 10.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (90, timestamp '2020-01-10 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (90, timestamp '2020-01-10 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (90, timestamp '2020-01-10 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (91, timestamp '2020-01-10 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (91, timestamp '2020-01-10 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (91, timestamp '2020-01-10 17:55:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (91, timestamp '2020-01-10 18:10:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (91, timestamp '2020-01-10 19:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (92, timestamp '2020-01-10 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (92, timestamp '2020-01-10 18:04:00', 'CANCLED');

-- 11.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (93, timestamp '2020-01-11 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (93, timestamp '2020-01-11 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (93, timestamp '2020-01-11 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (94, timestamp '2020-01-11 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (94, timestamp '2020-01-11 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (94, timestamp '2020-01-11 19:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (95, timestamp '2020-01-11 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (95, timestamp '2020-01-11 18:34:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (95, timestamp '2020-01-11 19:20:00', 'PAID');

-- 15.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (96, timestamp '2020-01-15 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (96, timestamp '2020-01-15 17:32:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (96, timestamp '2020-01-15 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (97, timestamp '2020-01-15 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (97, timestamp '2020-01-15 17:30:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (97, timestamp '2020-01-15 18:03:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (98, timestamp '2020-01-15 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (98, timestamp '2020-01-15 18:09:00', 'CANCLED');

-- 17.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (99, timestamp '2020-01-17 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (99, timestamp '2020-01-17 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (99, timestamp '2020-01-17 17:45:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (99, timestamp '2020-01-17 18:00:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (99, timestamp '2020-01-17 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (101, timestamp '2020-01-17 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (101, timestamp '2020-01-17 18:03:00', 'CANCLED');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (102, timestamp '2020-01-17 18:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (102, timestamp '2020-01-17 18:20:00', 'CANCLED');

-- 01.02.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (103, timestamp '2020-02-01 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (103, timestamp '2020-02-01 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (103, timestamp '2020-02-01 17:45:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (103, timestamp '2020-02-01 18:10:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (103, timestamp '2020-02-01 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (104, timestamp '2020-02-01 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (104, timestamp '2020-02-01 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (104, timestamp '2020-02-01 19:00:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (105, timestamp '2020-02-01 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (105, timestamp '2020-02-01 18:03:00', 'CANCLED');

-- 14.02.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (106, timestamp '2020-02-14 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (106, timestamp '2020-02-14 17:25:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (106, timestamp '2020-02-14 17:35:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (106, timestamp '2020-02-14 18:00:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (106, timestamp '2020-02-14 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (107, timestamp '2020-02-14 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (107, timestamp '2020-02-14 18:01:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (107, timestamp '2020-02-14 19:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (108, timestamp '2020-02-14 18:45:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (108, timestamp '2020-02-14 19:03:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (108, timestamp '2020-02-14 20:24:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (109, timestamp '2020-02-14 19:10:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (109, timestamp '2020-02-14 19:15:00', 'CANCLED');

-- 15.02.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (111, timestamp '2020-02-15 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (111, timestamp '2020-02-15 17:34:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (111, timestamp '2020-02-15 18:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (112, timestamp '2020-02-15 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (112, timestamp '2020-02-15 18:23:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (112, timestamp '2020-02-15 19:18:00', 'PAID');

-- 07.03.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (113, timestamp '2020-03-07 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (113, timestamp '2020-03-07 17:36:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (113, timestamp '2020-03-07 18:09:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (113, timestamp '2020-03-07 18:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (113, timestamp '2020-03-07 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (114, timestamp '2020-03-07 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (114, timestamp '2020-03-07 17:28:00', 'CANCLED');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (115, timestamp '2020-03-07 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (115, timestamp '2020-03-07 18:28:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (115, timestamp '2020-03-07 19:20:00', 'PAID');

-- 08.03.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (116, timestamp '2020-03-08 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (116, timestamp '2020-03-08 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (116, timestamp '2020-03-08 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (117, timestamp '2020-03-08 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (117, timestamp '2020-03-08 17:54:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (117, timestamp '2020-03-08 19:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (118, timestamp '2020-03-08 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (118, timestamp '2020-03-08 18:04:00', 'CANCLED');

-- 12.03.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (119, timestamp '2020-03-12 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (119, timestamp '2020-03-12 17:28:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (119, timestamp '2020-03-12 17:35:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (119, timestamp '2020-03-12 17:55:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (119, timestamp '2020-03-12 18:15:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (119, timestamp '2020-03-12 18:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (119, timestamp '2020-03-12 18:55:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (119, timestamp '2020-03-12 19:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (119, timestamp '2020-03-12 21:15:00', 'PAID');

-- 21.03.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (121, timestamp '2020-03-21 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (121, timestamp '2020-03-21 17:28:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (121, timestamp '2020-03-21 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (122, timestamp '2020-03-21 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (122, timestamp '2020-03-21 17:30:00', 'CANCLED');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (123, timestamp '2020-03-21 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (123, timestamp '2020-03-21 18:07:00', 'CANCLED');

-- 02.04.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (124, timestamp '2020-02-04 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (124, timestamp '2020-02-04 17:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (124, timestamp '2020-02-04 17:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (125, timestamp '2020-02-04 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (125, timestamp '2020-02-04 17:23:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (125, timestamp '2020-02-04 17:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (126, timestamp '2020-02-04 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (126, timestamp '2020-02-04 18:00:00', 'CANCLED');

-- 25.05.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (127, timestamp '2020-05-25 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (127, timestamp '2020-05-25 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (127, timestamp '2020-05-25 18:15:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (127, timestamp '2020-05-25 18:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (127, timestamp '2020-05-25 19:05:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (127, timestamp '2020-05-25 19:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (127, timestamp '2020-05-25 19:35:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (127, timestamp '2020-05-25 19:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (127, timestamp '2020-05-25 20:05:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (127, timestamp '2020-05-25 20:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (127, timestamp '2020-05-25 21:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (130, timestamp '2020-01-03 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (130, timestamp '2020-01-03 17:23:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (130, timestamp '2020-01-03 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (131, timestamp '2020-01-03 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (131, timestamp '2020-01-03 17:38:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (131, timestamp '2020-01-03 19:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (132, timestamp '2020-01-03 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (132, timestamp '2020-01-03 18:05:00', 'CANCLED');

-- 04.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (133, timestamp '2020-01-04 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (133, timestamp '2020-01-04 17:28:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (133, timestamp '2020-01-04 18:45:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (134, timestamp '2020-01-04 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (134, timestamp '2020-01-04 17:53:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (134, timestamp '2020-01-04 19:23:00', 'PAID');

-- 08.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (135, timestamp '2020-01-08 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (135, timestamp '2020-01-08 17:24:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (135, timestamp '2020-01-08 18:45:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (136, timestamp '2020-01-08 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (136, timestamp '2020-01-08 17:30:00', 'CANCLED');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (137, timestamp '2020-01-08 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (137, timestamp '2020-01-08 18:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (137, timestamp '2020-01-08 18:40:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (137, timestamp '2020-01-08 19:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (137, timestamp '2020-01-08 20:00:00', 'PAID');

-- 09.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (138, timestamp '2020-01-10 14:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (138, timestamp '2020-01-10 14:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (138, timestamp '2020-01-10 15:35:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (139, timestamp '2020-01-10 14:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (139, timestamp '2020-01-10 14:28:00', 'CANCLED');

-- 10.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (140, timestamp '2020-01-10 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (140, timestamp '2020-01-10 17:43:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (140, timestamp '2020-01-10 18:35:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (141, timestamp '2020-01-10 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (141, timestamp '2020-01-10 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (141, timestamp '2020-01-10 18:23:00', 'PAID');

-- 11.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (142, timestamp '2020-01-11 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (142, timestamp '2020-01-11 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (142, timestamp '2020-01-11 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (143, timestamp '2020-01-11 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (143, timestamp '2020-01-11 17:37:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (143, timestamp '2020-01-11 18:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (144, timestamp '2020-01-11 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (144, timestamp '2020-01-11 18:04:00', 'CANCLED');

-- 15.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (145, timestamp '2020-01-15 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (145, timestamp '2020-01-15 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (145, timestamp '2020-01-15 19:15:00', 'PAID');

-- 17.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (146, timestamp '2020-01-17 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (146, timestamp '2020-01-17 17:28:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (146, timestamp '2020-01-17 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (147, timestamp '2020-01-17 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (147, timestamp '2020-01-17 17:34:00', 'CANCLED');

-- 01.02.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (148, timestamp '2020-02-01 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (148, timestamp '2020-02-01 17:32:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (148, timestamp '2020-02-01 18:18:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (149, timestamp '2020-02-01 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (149, timestamp '2020-02-01 17:46:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (149, timestamp '2020-02-01 19:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (150, timestamp '2020-02-01 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (150, timestamp '2020-02-01 18:40:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (150, timestamp '2020-02-01 21:00:00', 'PAID');

-- 14.02.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (151, timestamp '2020-02-14 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (151, timestamp '2020-02-14 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (151, timestamp '2020-02-14 19:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (152, timestamp '2020-02-14 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (152, timestamp '2020-02-14 17:32:00', 'CANCLED');

-- 15.02.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (153, timestamp '2020-02-15 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (153, timestamp '2020-02-15 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (153, timestamp '2020-02-15 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (154, timestamp '2020-02-15 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (154, timestamp '2020-02-15 17:32:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (154, timestamp '2020-02-15 18:23:00', 'PAID');

-- 07.03.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (155, timestamp '2020-03-07 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (155, timestamp '2020-03-07 17:25:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (155, timestamp '2020-03-07 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (156, timestamp '2020-03-07 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (156, timestamp '2020-03-07 17:32:00', 'CANCLED');

-- 08.03.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (157, timestamp '2020-03-08 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (157, timestamp '2020-03-08 17:25:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (157, timestamp '2020-03-08 17:55:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (158, timestamp '2020-03-08 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (158, timestamp '2020-03-08 17:46:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (158, timestamp '2020-03-08 19:13:00', 'PAID');

-- 12.03.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (159, timestamp '2020-03-12 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (159, timestamp '2020-03-12 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (159, timestamp '2020-03-12 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (160, timestamp '2020-03-12 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (160, timestamp '2020-03-12 17:38:00', 'CANCLED');

-- 21.03.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (161, timestamp '2020-03-21 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (161, timestamp '2020-03-21 17:32:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (161, timestamp '2020-03-21 17:45:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (161, timestamp '2020-03-21 18:11:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (161, timestamp '2020-03-21 18:15:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (161, timestamp '2020-03-21 18:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (161, timestamp '2020-03-21 18:55:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (161, timestamp '2020-03-21 19:14:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (161, timestamp '2020-03-21 19:55:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (161, timestamp '2020-03-21 20:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (161, timestamp '2020-03-21 22:15:00', 'PAID');

-- 02.04.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (162, timestamp '2020-02-04 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (162, timestamp '2020-02-04 17:19:00', 'CANCLED');

-- 25.05.2018
-- 'Bergwirt Schrammel'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (163, timestamp '2020-05-25 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (163, timestamp '2020-05-25 17:43:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (163, timestamp '2020-05-25 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (164, timestamp '2020-05-25 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (164, timestamp '2020-05-25 17:31:00', 'CANCLED');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (165, timestamp '2020-05-25 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (165, timestamp '2020-05-25 18:30:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (165, timestamp '2020-05-25 19:21:00', 'PAID');

-- 03.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (171, timestamp '2020-01-03 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (171, timestamp '2020-01-03 17:38:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (171, timestamp '2020-01-03 18:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (172, timestamp '2020-01-03 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (172, timestamp '2020-01-03 18:42:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (172, timestamp '2020-01-03 19:20:00', 'PAID');
-- 04.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (173, timestamp '2020-01-04 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (173, timestamp '2020-01-04 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (173, timestamp '2020-01-04 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (174, timestamp '2020-01-04 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (174, timestamp '2020-01-04 18:05:00', 'CANCLED');

-- 08.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (175, timestamp '2020-01-08 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (175, timestamp '2020-01-08 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (175, timestamp '2020-01-08 18:38:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (176, timestamp '2020-01-08 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (176, timestamp '2020-01-08 17:46:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (176, timestamp '2020-01-08 18:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (177, timestamp '2020-01-08 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (177, timestamp '2020-01-08 18:04:00', 'CANCLED');
-- 09.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (178, timestamp '2020-01-10 14:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (178, timestamp '2020-01-10 14:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (178, timestamp '2020-01-10 15:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (179, timestamp '2020-01-10 14:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (179, timestamp '2020-01-10 14:38:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (179, timestamp '2020-01-10 15:23:00', 'PAID');

-- 10.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (180, timestamp '2020-01-10 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (180, timestamp '2020-01-10 18:21:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (180, timestamp '2020-01-10 18:42:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (180, timestamp '2020-01-10 19:00:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (180, timestamp '2020-01-10 19:10:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (180, timestamp '2020-01-10 19:24:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (180, timestamp '2020-01-10 19:40:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (180, timestamp '2020-01-10 20:00:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (180, timestamp '2020-01-10 21:00:00', 'PAID');

-- 11.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (181, timestamp '2020-01-11 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (181, timestamp '2020-01-11 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (181, timestamp '2020-01-11 18:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (182, timestamp '2020-01-11 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (182, timestamp '2020-01-11 18:09:00', 'CANCLED');

-- 15.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (183, timestamp '2020-01-15 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (183, timestamp '2020-01-15 17:25:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (183, timestamp '2020-01-15 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (184, timestamp '2020-01-15 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (184, timestamp '2020-01-15 17:31:00', 'CANCLED');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (185, timestamp '2020-01-15 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (185, timestamp '2020-01-15 18:04:00', 'CANCLED');

-- 17.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (186, timestamp '2020-01-17 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (186, timestamp '2020-01-17 17:19:00', 'CANCLED');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (187, timestamp '2020-01-17 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (187, timestamp '2020-01-17 18:23:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (187, timestamp '2020-01-17 19:00:00', 'PAID');

-- 01.02.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (188, timestamp '2020-02-01 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (188, timestamp '2020-02-01 17:32:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (188, timestamp '2020-02-01 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (189, timestamp '2020-02-01 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (189, timestamp '2020-02-01 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (189, timestamp '2020-02-01 18:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (190, timestamp '2020-02-01 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (190, timestamp '2020-02-01 18:23:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (190, timestamp '2020-02-01 19:20:00', 'PAID');

-- 14.02.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (191, timestamp '2020-02-14 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (191, timestamp '2020-02-14 17:34:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (191, timestamp '2020-02-14 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (192, timestamp '2020-02-14 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (192, timestamp '2020-02-14 17:28:00', 'CANCLED');

-- 15.02.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (193, timestamp '2020-02-15 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (193, timestamp '2020-02-15 17:32:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (193, timestamp '2020-02-15 19:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (194, timestamp '2020-02-15 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (194, timestamp '2020-02-15 18:10:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (194, timestamp '2020-02-15 19:02:00', 'PAID');

-- 07.03.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (195, timestamp '2020-03-07 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (195, timestamp '2020-03-07 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (195, timestamp '2020-03-07 17:45:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (195, timestamp '2020-03-07 17:50:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (195, timestamp '2020-03-07 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (196, timestamp '2020-03-07 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (196, timestamp '2020-03-07 17:41:00', 'CANCLED');
-- 08.03.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (197, timestamp '2020-03-08 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (197, timestamp '2020-03-08 17:35:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (197, timestamp '2020-03-08 18:25:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (198, timestamp '2020-03-08 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (198, timestamp '2020-03-08 17:24:00', 'CANCLED');
-- 12.03.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (199, timestamp '2020-03-12 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (199, timestamp '2020-03-12 17:25:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (199, timestamp '2020-03-12 17:35:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (199, timestamp '2020-03-12 17:45:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (199, timestamp '2020-03-12 19:15:00', 'PAID');
-- 21.03.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (201, timestamp '2020-03-21 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (201, timestamp '2020-03-21 17:43:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (201, timestamp '2020-03-21 19:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (202, timestamp '2020-03-21 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (202, timestamp '2020-03-21 17:51:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (202, timestamp '2020-03-21 19:23:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (203, timestamp '2020-03-21 18:00:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (203, timestamp '2020-03-21 18:15:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (203, timestamp '2020-03-21 20:00:00', 'PAID');

-- 02.04.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (204, timestamp '2020-02-04 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (204, timestamp '2020-02-04 17:21:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (204, timestamp '2020-02-04 18:15:00', 'PAID');

INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (205, timestamp '2020-02-04 17:23:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (205, timestamp '2020-02-04 17:28:00', 'CANCLED');

-- 25.05.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (206, timestamp '2020-05-25 17:15:00', 'ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (206, timestamp '2020-05-25 17:34:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (206, timestamp '2020-05-25 17:45:00', 'RE_ORDERED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (206, timestamp '2020-05-25 18:05:00', 'SERVED');
INSERT INTO CUSTOMER_ORDER_STATUS_JT (order_id, STATUS_CHANGED_AT, ORDER_STATUS)
VALUES (206, timestamp '2020-05-25 19:15:00', 'PAID');


CREATE TABLE ORDER_ITEMS_JT
(
    ORDER_ID int NOT NULL,
    DISH_ID  int NOT NULL,
    TABLE_ID int NOT NULL,
    AMOUNT   INTEGER       NOT NULL,
    PRIMARY KEY (ORDER_ID, DISH_ID, TABLE_ID),
    CONSTRAINT FK_OI_ORDER_ID FOREIGN KEY (ORDER_ID)
        REFERENCES CUSTOMER_ORDERS (ORDER_ID),
    CONSTRAINT FK_OI_DISH_ID FOREIGN KEY (DISH_ID)
        REFERENCES DISHES (DISH_ID),
    CONSTRAINT FK_OI_TABLE_ID FOREIGN KEY (TABLE_ID)
        REFERENCES TABLES (TABLE_ID),
        CONSTRAINT CK_ORDER_ITEMS_AMOUNT CHECK ( AMOUNT > 0 )
);

-- 03.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (1, 21, 1, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (1, 22, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (1, 23, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (2,  21, 2, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (3,  22, 2, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (4,  21, 3, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (4,  22, 3, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (4,  23, 3, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (5,  21, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (6,  22, 4, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (7,  21, 4, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (8, 21, 1, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (9,  21, 2, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (9,  22, 2, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (10,  21, 1, 1);
-- 04.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (11, 21, 1, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (12,21,2,1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (13, 21, 4, 4);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (13, 22, 4, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (13, 23, 4, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (13, 24, 4, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (14, 21, 3, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (15, 21, 2, 4);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (16, 21, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (16, 22, 1, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (16, 23, 1, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (17, 21, 3, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (18, 21, 4, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (19, 23, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (20, 24, 4, 1);
-- 08.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (21, 21, 3, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (21, 22, 3, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (21, 23, 3, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (22, 21, 1, 4);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (23, 21, 4, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (24, 22, 3, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (25, 21, 1, 2);
-- 09.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (26, 21, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (27, 21, 3, 3);
-- 10.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (28, 22, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (29, 23, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (30, 21, 3, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (31, 23, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (32, 21, 1, 3);
-- 11.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (33, 21, 4, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (34, 22, 2, 4);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (35, 21, 2, 2);
-- 15.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (36,22, 3,2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (37, 24, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (38, 21, 1, 2);
-- 17.01.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (39, 21, 3, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (41, 22, 2, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (42,21,1,1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (43, 24, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (44, 22, 2, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (45, 21, 1, 1);
-- 01.02.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (46, 21, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (47, 21, 2, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (48, 23, 2, 2);
-- 14.02.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (49, 21, 1,1 );
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (50,21,3,3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (50,22,2,2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (50,24,4,1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (50,21,2,2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (50,23,3,3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (51, 21, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (52, 21, 2, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (53, 22, 3, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (54, 24, 3, 4);
-- 15.02.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (55, 21, 3, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (55, 24, 4, 4);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (56, 21, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (57, 21, 2, 2);
-- 07.03.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (58, 21, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (59, 21, 2, 4);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (60, 22, 3, 1);
-- 08.03.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (61, 21, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (62, 24, 4, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (63, 22, 2, 2);
-- 12.03.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (64, 21, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (65, 21, 4, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (67, 22, 1, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (68, 23, 3, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (69, 21, 4, 1);
-- 21.03.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (70, 21, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (71, 23, 2, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (72, 21, 1, 4);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (72, 22, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (72, 22, 2, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (72, 23, 2, 4);
-- 02.04.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (73, 21, 1, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (74, 22, 3, 4);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (75, 21, 3, 2);
-- 25.05.2018
-- 'Pizzeria Miam Miam'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (76,21, 1,1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (77, 22, 3, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (78, 21, 1, 1);

-- 03.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (79, 1, 5, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (79, 4, 5, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (79, 14, 5, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (79, 16, 5, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (79, 19, 5, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (80, 1, 6, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (80, 18, 6, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (81, 3, 7, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (81, 17, 7, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (81, 10, 7, 2);
-- 04.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (82, 1, 5, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (82, 18, 5, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (82, 20, 5, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (83, 14, 7, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (83, 11, 7, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (83, 1, 7, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (84, 4, 8, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (84, 19, 8, 1);
-- 08.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (85, 2, 5, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (85, 5, 5, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (85, 18, 5, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (86, 4, 7, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (86, 14, 7, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (87, 19, 5, 1);
-- 09.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (88, 5, 7, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (88, 18, 7, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (89, 14, 5, 2);
-- 10.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (90, 1, 5, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (90, 5, 5, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (90, 17, 5, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (90, 11, 6, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (91, 14, 7, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (92, 18, 7, 1);
-- 11.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (93, 1, 7, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (93, 18, 7, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (94, 14, 5, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (95, 4, 6, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (95, 17, 6, 1);
-- 15.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (96, 1, 7, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (96, 14, 7, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (97, 16, 5, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (98, 17, 6, 1);
-- 17.01.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (99, 14, 6, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (101, 17, 5, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (102, 18, 7, 1);
-- 01.02.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (103, 14, 7, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (104, 14, 6, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (105, 18, 7, 1);
-- 14.02.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (106, 14, 7, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (107, 18, 7, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (108, 1, 7, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (109, 13, 5, 2);
-- 15.02.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (111, 14, 5, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (112, 18, 7, 1);
-- 07.03.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (113, 2, 7, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (114, 2, 7, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (115, 14, 5, 1);
-- 08.03.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (116, 1, 7, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (117, 14, 7, 4);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (118, 10, 5, 3);
-- 12.03.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (119, 14,7 , 4);
-- 21.03.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (121, 17, 5, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (122, 17, 5, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (123, 18, 7, 5);
-- 02.04.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (124, 14, 5, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (125, 18, 5, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (126, 14, 7, 2);
-- 25.05.2018
-- 'Gasthaus im Demutsgraben'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (127, 14, 7, 1);


-- 03.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (130, 5, 13, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (131, 18, 13, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (132, 14, 9, 4);
-- 04.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (133, 14, 9, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (134, 18, 9, 1);
-- 08.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (135, 16, 13, 4);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (136, 20, 12, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (137, 20, 12, 1);
-- 09.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (138, 20, 12, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (139, 19, 13, 1);
-- 10.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (140, 20, 13, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (141, 14, 12, 3);
-- 11.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (142, 20, 12, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (143, 19, 13, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (144, 14, 11, 2);
-- 15.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (145, 20, 12, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (145, 19, 12, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (145, 14, 12, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (145, 11, 12, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (145, 10, 12, 2);
-- 17.01.2018
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (146, 14, 13, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (147, 18, 11, 2);
-- 01.02.2018
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (148, 20, 12, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (149, 11, 12, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (150, 10, 13, 2);
-- 14.02.2018
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (151, 14, 9, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (152, 18, 10, 4);
-- 15.02.201
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (153, 1, 10, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (154, 11, 11, 2);
-- 07.03.2018
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (155, 2, 12, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (156, 14, 13, 3);
-- 08.03.2018
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (157, 4, 13, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (158, 3, 12, 1);
-- 12.03.2018
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (159, 14, 12, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (160, 18, 9, 4);
-- 21.03.2018
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (161, 20, 9, 1);
-- 02.04.2018
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (162, 19, 12, 1);
-- 25.05.2018
-- 'Bergwirt Schrammel'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (163, 14, 13, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (164, 18, 9, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (165, 13, 12, 2);

-- 03.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (171, 14, 14, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (172, 18, 18, 4);
-- 04.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (173, 11, 15, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (174, 19, 15, 2);
-- 08.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (175, 19, 16, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (176, 18, 16, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (177, 14, 18, 4);
-- 09.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (178, 13, 14, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (179,19,15,2);
-- 10.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (180, 18, 14, 2);
-- 11.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (181, 14, 17, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (182, 17, 18, 1);
-- 15.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (183, 17, 15, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (184, 15, 15, 4);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (185, 15, 16, 3);
-- 17.01.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (186, 14, 17,1 );
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (187, 15, 18, 2);
-- 01.02.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (188,11,14,1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (189, 14, 18, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (190, 18, 17, 2);
-- 14.02.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (191, 3, 14, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (192, 6, 15, 1);
-- 15.02.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (193, 14, 17, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (194, 18, 16, 1);
-- 07.03.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (195, 14, 14, 3);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (196, 16, 15, 1);
-- 08.03.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (197, 17, 15, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (198, 17, 18, 1);
-- 12.03.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (199, 18, 14, 2);
-- 21.03.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (201, 14, 14, 1);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (202, 18, 14, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (203, 11, 17, 3);
-- 02.04.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (204, 20, 18, 2);
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (205, 14, 17, 1);
-- 25.05.2018
-- 'Gasthaus zur goldenen Rose'
INSERT INTO ORDER_ITEMS_JT (order_id, dish_id, table_id, amount)
VALUES (206, 18, 15, 2);

-- ------------------------------------------------------------------------------------------------------------------ --
-- TABLE: ORDERS
-- ------------------------------------------------------------------------------------------------------------------ --

create table WAITER_HAS_TABLES_JT
(
    employee_id INT not null,
    table_id    INT not null,
    primary key (employee_id, table_id),
    constraint fk_wht_employee_id foreign key (employee_id)
        references EMPLOYEES_ST (employee_id),
    constraint fk_wht_table_id foreign key (table_id)
        references TABLES (table_id)
);


INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (1, 1);
INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (1, 2);
INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (1, 3);
INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (1, 4);
INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (2, 5);
INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (2, 6);
INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (2, 7);
INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (2, 8);
INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (3, 9);
INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (3, 10);
INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (3, 11);
INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (3, 12);
INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (3, 13);
INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (5, 14);
INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (5, 15);
INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (5, 16);
INSERT INTO WAITER_HAS_TABLES_JT (employee_id, table_id)
VALUES (5, 17);

commit;
