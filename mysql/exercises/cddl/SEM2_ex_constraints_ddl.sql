use cddl;

-- ----------------------------------------------------------- --
--  1. Beispiel) Constraints, DDL Statements
-- ----------------------------------------------------------- --
-- Legen Sie die Tabelle PRODUCER AN:
drop table if exists BEVERAGES;
drop table if exists PRODUCER;
drop table if exists PRODUCERS;
CREATE TABLE PRODUCER
(
    PRODUCER_LABEL VARCHAR(100),
    PRIMARY KEY (PRODUCER_LABEL)
);

-- region 1.1) ALTER TABLE

-- Bennen Sie die Tabelle in PRODUCERS um:
ALTER TABLE PRODUCER RENAME TO PRODUCERS;

-- FÜgen Sie folgende Spalte zur Tabelle hinzu:
-- CODE VARCHAR(5) NOT NULL UNIQUE
ALTER TABLE PRODUCERS
    ADD CODE VARCHAR(5) NOT NULL UNIQUE;

-- endregion

-- region 1.2) USER_CONSTRAINTS

-- Fragen Sie die Constraints der PRODUCERS Tabelle ab:

-- C    Check on a table           Column
-- O    Read Only on a view        Object
-- P    Primary Key                Object
-- R    Referential (Foreign Key)  Column
-- U    Unique Key                 Column
-- V    Check Option on a view     Object

-- der PRODUCER_LABEL soll einen NOT NULL Constraint bekommen:
alter table PRODUCERS
    modify PRODUCER_LABEL VARCHAR(100) NOT NULL;

-- endregion

-- region 1.3) INSERT INTO

-- FÜgen Sie 3 Datensatze in die Tablle ein:
INSERT INTO PRODUCERS(PRODUCER_LABEL, CODE)
values (
    'DJ_AIDS_HAVER', '306'
), (
    'MC_RETAR_DDD', '65005'
);

-- endregion
-- ----------------------------------------------------------- --
--  2. Beispiel) DDL Statements
-- ----------------------------------------------------------- --
-- Legen Sie die folgende Tabelle an.

CREATE TABLE BEVERAGES
(
    BEVERAGE_ID INT AUTO_INCREMENT,
    LABEL       VARCHAR(50) NOT NULL,
    PRIMARY KEY (BEVERAGE_ID)
);

-- region 2.1) ALTER TABLE

-- Fügen Sie einen UNIQUE Constraint auf die LABEL Spalte hinzu:
ALTER TABLE BEVERAGES
    ADD CONSTRAINT UK_BEVERAGES_LABLE UNIQUE (LABEL);

-- Fügen Sie eine Fremdschlüssel auf die PRODUCERS Tabelle ein:
    -- ALTER TABLE BEVERAGES DROP PRODUCER_LABEL;
    ALTER TABLE BEVERAGES
        ADD PRODUCER_LABEL VARCHAR(100);

    -- Schalten Sie den referentiellen Constraint  ab:
    ALTER TABLE BEVERAGES
        ADD CONSTRAINT FK_BEVERAGES_PL FOREIGN KEY (PRODUCER_LABEL) REFERENCES PRODUCERS (PRODUCER_LABEL);

-- Pruefen Sie den Status der Constraints fuer die Tabelle:
show create table BEVERAGES;

-- endregion

-- region 2.2) DDL Statements

-- Legen Sie eine Sequenz und einen Trigger fuer die ID an.

CREATE TRIGGER T_B_BID
    before insert on BEVERAGES
    for each row
    set new.BEVERAGE_ID = UPPER(NEW.BEVERAGE_ID);

-- Schalten Sie den Trigger aus und schreiben Sie die folgende Daten in
-- die Tabelle:

DROP TRIGGER IF EXISTS ID_TRIGGER;

SELECT *
FROM PRODUCERS;

INSERT INTO PRODUCERS (PRODUCER_LABEL, CODE) VALUE ('COCA COLA COMPANY', 'CCC');

INSERT INTO BEVERAGES (BEVERAGE_ID, LABEL, PRODUCER_LABEL)
VALUES (1, 'Coca Cola', 'COCA COLA COMPANY');
INSERT INTO BEVERAGES (BEVERAGE_ID, LABEL, PRODUCER_LABEL)
VALUES (2, 'Coca Cola Classic', 'COCA COLA COMPANY');
INSERT INTO BEVERAGES (BEVERAGE_ID, LABEL, PRODUCER_LABEL)
VALUES (3, 'Coca Cola Vanille', 'COCA COLA COMPANY');


-- Erhohen Sie sequenz entsprechend:


-- endregion

SELECT *
FROM BEVERAGES;
-- ----------------------------------------------------------- --
--  3. Beispiel) SOFT_DRINKS
-- ----------------------------------------------------------- --

-- region 3.1) ALTER TABLE

-- Benennen Sie die BEVERAGES Tabelle in BEVERAGES_BT um.
ALTER TABLE BEVERAGES RENAME TO BEVERAGES_BT;

-- endregion

-- region 3.2) ALTER TABLE

-- Legen Sie die folgenden Tabllen an:

CREATE TABLE SOFT_DRINKS
(
    BEVERAGE_ID   INT NOT NULL,
    SUGAR_CONTENT INT,
    PRIMARY KEY (BEVERAGE_ID)
);

-- Definieren Sie folgenden Constraint fÜr die SUGAR_CONTENT
-- Spalte: SUGAR_CONTENT NUMBER(3) NOT NULL
ALTER TABLE SOFT_DRINKS
    MODIFY SUGAR_CONTENT DECIMAL(3) NOT NULL;


-- Definieren Sie eine referentiellen Constraint auf die BEVERAGES_BT
-- Tabelle
ALTER TABLE SOFT_DRINKS
    ADD CONSTRAINT FK_SD_BEVERAGE_ID FOREIGN KEY (BEVERAGE_ID) REFERENCES BEVERAGES_BT (BEVERAGE_ID);


-- endregion

-- region 3.3 ALTER TABLE

-- Fuegen Sie die folgenden Werte in die Tablle ein:

INSERT INTO PRODUCERS (PRODUCER_LABEL, CODE)
VALUES ('Radlberger Inc.', 'RADL');

insert into BEVERAGES_BT (BEVERAGE_ID, LABEL, PRODUCER_LABEL)
values (5, 'Ice Tea Zitron', 'Radlberger Inc.');
insert into BEVERAGES_BT (BEVERAGE_ID, LABEL, PRODUCER_LABEL)
values (6, 'Ice Tea Pfirsich', 'Radlberger Inc.');

SELECT *
FROM BEVERAGES_BT;



-- endregion

-- region 3.3) ALTER TABLE

-- SUGAR_CONTENT Werte muessen zwischen 0 und 100 liegen
ALTER TABLE SOFT_DRINKS
    ADD CONSTRAINT CK_SD_SUGAR_CONTENT CHECK ( SUGAR_CONTENT BETWEEN 0 AND 100);


INSERT INTO SOFT_DRINKS (BEVERAGE_ID, SUGAR_CONTENT)
VALUES (3, 11);
INSERT INTO SOFT_DRINKS (BEVERAGE_ID, SUGAR_CONTENT)
VALUES (5, 7);
INSERT INTO SOFT_DRINKS (BEVERAGE_ID, SUGAR_CONTENT)
VALUES (6, 99);
-- endregion

-- ----------------------------------------------------------- --
--  4. Beispiel) BEER
-- ----------------------------------------------------------- --

-- region 4.1) CREATE TABLE, ALTER TABLE

CREATE TABLE BEER
(
    BEVERAGE_ID       INT NOT NULL,
    ALCOHOLIC_CONTENT INT NOT NULL,
    PRIMARY KEY (BEVERAGE_ID),
    CONSTRAINT FK_BEER_BEVERAGE_ID FOREIGN KEY (BEVERAGE_ID)
        REFERENCES BEVERAGES_BT (BEVERAGE_ID)
        ON DELETE CASCADE
);

-- ALCOHOLIC_CONTENT Werte muessen zwischen 4 und 15 liegen.
ALTER TABLE BEER
    ADD CONSTRAINT CK_BEER_ALC_CONTENT CHECK ( ALCOHOLIC_CONTENT BETWEEN 4 AND 15);
-- ALTER TABLE BEER DROP CONSTRAINT CK_BEER_ALC_CONTENT;

-- Wird ein beverage Datensatz geloescht soll der entsprechende
-- BEER Datensatz automatisch geloescht werden.
--  haben wir schon (ON DELETE CASCADE)

-- endregion

-- region 4.2)
-- Fuegen Sie folgende Werte ein:

INSERT INTO PRODUCERS (PRODUCER_LABEL, CODE)
VALUES ('Zwettler Brauerei Inc.', 'ZBI');

INSERT INTO BEVERAGES_BT (BEVERAGE_ID, LABEL, PRODUCER_LABEL)
values (9, 'Zwettler Bier', 'Zwettler Brauerei Inc.');
INSERT INTO BEER (BEVERAGE_ID, ALCOHOLIC_CONTENT)
VALUES (9, 12);
INSERT INTO BEVERAGES_BT (BEVERAGE_ID, LABEL, PRODUCER_LABEL)
values (8, 'Zwettler Bier Geisterbräu', 'Zwettler Brauerei Inc.');
INSERT INTO BEER (BEVERAGE_ID, ALCOHOLIC_CONTENT)
VALUES (8, 14);

-- endregion

-- region 4.3) TRUNCATE TABLE, DELETE
-- Loeschen Sie die Bier Datensaetze bei denen der Alk wert unter 9 liegt.

DELETE
FROM BEER
WHERE ALCOHOLIC_CONTENT < 9;
SELECT *
FROM BEER;

-- truncate table BEER;

-- endregion

-- ----------------------------------------------------------- --
--  5. Beispiel) CUSTOMERS
-- ----------------------------------------------------------- --

-- region 5.1) CREATE TABLE

-- Legen Sie die folgende Tabelle an

CREATE TABLE CUSTOMERS
(
    CUSTOMER_ID INT,
    FIRST_NAME  VARCHAR(50) DEFAULT 'MAX'         NOT NULL,
    LAST_NAME   VARCHAR(50) DEFAULT 'MUSTERMANN'  NOT NULL,
    PRIMARY KEY (CUSTOMER_ID)
);

CREATE TABLE EMPLOYEES
(
    EMPLOYEE_ID INT AUTO_INCREMENT,
    FIRST_NAME  VARCHAR(50) DEFAULT 'MAX'         NOT NULL,
    LAST_NAME   VARCHAR(50) DEFAULT 'MUSTERMANN'  NOT NULL,
    PRIMARY KEY (EMPLOYEE_ID)
);

insert into EMPLOYEES(FIRST_NAME, LAST_NAME)
VALUES (
    'David', 'Kaufmann'
), (
    'Elliot', 'Rodger'
);


-- Aktivieren Sie das AUTO_INCREMENT
alter table CUSTOMERS
modify CUSTOMER_ID int auto_increment;

-- Alle Employees in Customers einspielen
INSERT INTO CUSTOMERS (CUSTOMER_ID, FIRST_NAME, LAST_NAME)
SELECT employee_id, first_name, last_name
FROM EMPLOYEES;

SELECT *
FROM CUSTOMERS;
-- endregion

-- region 5.2) DML Statements

-- Loeschen Sie alle Customer deren Nachname mit einem "F" beginnt.
DELETE
FROM CUSTOMERS
WHERE UPPER(SUBSTR(LAST_NAME, 1, 1)) = 'F';


-- Fuegen Sie der Tabelle die folgende Spalte hinzu:
-- JOINED_AT DATE not null
ALTER TABLE CUSTOMERS
    ADD JOINED_AT DATETIME DEFAULT CURRENT_TIMESTAMP
        NOT NULL;

SELECT *
FROM CUSTOMERS;
-- Loeschen Sie alle Datensaetze
DELETE
FROM CUSTOMERS
WHERE 1 = 1;

TRUNCATE table CUSTOMERS;
-- endregion

-- ----------------------------------------------------------- --
--  6. Beispiel) ORDERS
-- ----------------------------------------------------------- --

-- region 6.1) DDL Statements
-- Legen Sie die folgenden Datenbankobjkete an:

CREATE TABLE ORDERS
(
    ORDER_ID INT AUTO_INCREMENT,
    ORDER_DATE DATE NOT NULL,
    PRIMARY KEY (ORDER_ID)
);

SELECT * From ORDERS;
insert into ORDERS (order_id, order_date)
values (1, STR_TO_DATE('21.12.2020', '%d.%m.%Y'));
insert into ORDERS (order_id, order_date)
values (2, STR_TO_DATE('22.12.2020', '%d.%m.%Y'));
insert into ORDERS (order_id, order_date)
values (3, STR_TO_DATE('23.12.2020', '%d.%m.%Y'));
insert into ORDERS (order_id, order_date)
values (4, STR_TO_DATE('24.12.2020', '%d.%m.%Y'));
insert into ORDERS (order_id, order_date)
values (5, STR_TO_DATE('25.12.2020', '%d.%m.%Y'));
insert into ORDERS (order_id, order_date)
values (6, STR_TO_DATE('26.12.2020', '%d.%m.%Y'));
insert into ORDERS (order_id, order_date)
values (7, STR_TO_DATE('27.12.2020', '%d.%m.%Y'));
insert into ORDERS (order_id, order_date)
values (8, STR_TO_DATE('28.12.2020', '%d.%m.%Y'));

CREATE TABLE CUSTOMER_HAS_ORDERS_JT(
    CUSTOMER_ID INT NOT NULL,
    ORDER_ID INT NOT NULL,
    BEVERAGE_ID INT NOT NULL,
    PRICE DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (CUSTOMER_ID, ORDER_ID, BEVERAGE_ID),
    CONSTRAINT FK_CHOJT_CUSTOMER_ID FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID),
    CONSTRAINT FK_CHOJT_ORDER_ID FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ORDER_ID),
    CONSTRAINT FK_CHOJT_BEVERAGE_ID FOREIGN KEY (BEVERAGE_ID) REFERENCES BEVERAGES_BT(BEVERAGE_ID)
);
ALTER TABLE CUSTOMER_HAS_ORDERS_JT ADD AMOUNT INT DEFAULT 1 NOT NULL;
ALTER TABLE CUSTOMER_HAS_ORDERS_JT ADD CONSTRAINT CK_CHOJT_AMOUNT CHECK ( AMOUNT > 0 );

SELECT * from CUSTOMERS;
insert into CUSTOMER_HAS_ORDERS_JT (customer_id, order_id, beverage_id, price)
values (10, 1, 1, 1.25);
insert into CUSTOMER_HAS_ORDERS_JT (customer_id, order_id, beverage_id, price)
values (10, 1, 2, 1.30);
insert into CUSTOMER_HAS_ORDERS_JT (customer_id, order_id, beverage_id, price)
values (10, 1, 3, 1.30);

SELECT * FROM CUSTOMER_HAS_ORDERS_JT;
-- endregion

