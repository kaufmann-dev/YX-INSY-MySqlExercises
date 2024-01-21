use insy0804test;
SHOW TABLES;

-- --------------------------------------------------------------------- -
-- 1. Beispiel) DDL Befehle - CREATE TABLE, ALTER TABLE       (40.Punkte)
-- ---------------------------------------------------------------------- -
-- region

-- Führen Sie die folgenden 3 CREATE TABLE Befehle aus. Adaptieren Sie
-- nachfolgend die Struktur der Tabellen  entsprechend der Beschreibung
-- mit ALTER TABLE Befehlen.

-- Hinweis: Achten Sie auf die korrekte Bezeichnung für Tabellen- und
--          Spaltenbezeichner

-- region convoy-schema)

-- CONVOY_ELEMENTS: Ein Konvoielement wird eindeutig identifiziert durch
-- eine id ELEMENT_ID (NUMBER(19,0) - NOT NULL, UNIQUE). Zusätzlich
-- wird ein Bezeichnung CODE (VARCHAR(32) NOT NULL) und ein Preis PRICE
-- (INTEGER - NOT NULL, DEFAULT 0) gespeichert. Trucks und Waggone sind
-- Konvoielemente.

drop TABLE if EXISTS BT_CONVOY_ELEMENTS;
drop TABLE if EXISTS CONVOY_ELEMENTS;
CREATE TABLE CONVOY_ELEMENTS
(
    ELEMENT_ID INT AUTO_INCREMENT,
    CODE       VARCHAR(100) NOT NULL,
    PRICE      INTEGER      NOT NULL,
    PRIMARY KEY (ELEMENT_ID)
);

alter table CONVOY_ELEMENTS
modify CODE varchar(32) not null;

alter table CONVOY_ELEMENTS
modify PRICE INT NOT NULL DEFAULT 0;

alter table CONVOY_ELEMENTS rename BT_CONVOY_ELEMENTS;

commit;

-- TRUCKS: Ein Truck wird eindeutig identifiziert durch ein id ELEMENT_ID
-- (NUMBER(19,0) - NOT NULL, UNIQUE). Zusätzlich wird die Zugkraft
-- CARRYING_CAPACITY (INTEGER - NOT NULL, DEFAULT 0, MIN(0), MAX(10))
-- des Trucks gespeichert. Ein Truck kann mehrere Anhänger ziehen. Ein
-- Anhänger kann nur von einem Truck gezogen werden.

  CREATE TABLE TRUCKS
  (
      ELEMENT_ID int,
      PRIMARY KEY (ELEMENT_ID)
  );

alter table TRUCKS
add constraint FK_TRUCKS_EID
    FOREIGN KEY(ELEMENT_ID)
        REFERENCES BT_CONVOY_ELEMENTS(ELEMENT_ID);

alter table TRUCKS
add CARRYING_CAPACITY INT NOT NULL DEFAULT 0;

alter TABLE TRUCKS
add CONSTRAINT CK_TRUCKS_CC check ( TRUCKS.CARRYING_CAPACITY between 0 and 10);

-- INSERT Statements: Fügen Sie 2 Trucks in die Datenbank ein.

insert into BT_CONVOY_ELEMENTS(ELEMENT_ID, CODE, PRICE)
VALUES (1, 'BMW Truck', 400000),
       (2, 'Ferrari Truck', 80000),
       (3, 'Cooler Waggon', 30000),
       (4, 'Cooler Waggon 2', 40000),
       (5, 'Cooler Waggon 3', 50000);

INSERT INTO TRUCKS(ELEMENT_ID, CARRYING_CAPACITY)
values (1, 4),
       (2, 8);

commit;

-- WAGGONS: Ein Anhänger wird eindeutig identifiziert durch eine id
-- ELEMENT_ID

  CREATE TABLE WAGGONS
  (
      ELEMENT_ID  int,
      PRIMARY KEY (ELEMENT_ID)
  );

alter table WAGGONS
add constraint FK_WAGGONS_EID FOREIGN KEY(ELEMENT_ID)references BT_CONVOY_ELEMENTS(ELEMENT_ID);

-- INSERT Statements: Fügen sie 3 Waggons in die Datenbank ein.

insert into WAGGONS(ELEMENT_ID)
values(3),(4),(5);

commit;
-- endregion
-- endregion

-- --------------------------------------------------------------------- -
-- 2. Beispiel) DQL Befehle                                    (20.Punkte)
-- ---------------------------------------------------------------------- -
use RESTAURANTS;
-- Welche Zutat wird in den meisten Gerichten verarbeitet?

-- Hinweis: Sie dürfen nicht den max Operator verwenden.

-- Ausgabe: INGREDIENT_ID, LABEL
-- Tabellen: DISH_INGREDIENTS, INGREDIENTS
with report as(
        select
            I.ingredient_id,
            I.label,
            count(DIJ.ingredient_id) count
        from DISHES D
            join DISH_INGREDIENTS_JT DIJ on D.dish_id = DIJ.dish_id
            join INGREDIENTS I on DIJ.ingredient_id = I.ingredient_id
        group by I.ingredient_id
    )
select ingredient_id, label
from report h1
where not exists(
        select *
        from report h2
        where h2.count > h1.count
    );
;

-- endregion



-- ---------------------------------------------------------------------- -
-- 3. Beispiel: DQL Befehle                                    (20.Punkte)
-- ---------------------------------------------------------------------- -
-- region

-- Geben Sie fuer jeden Bestellungsvorgang (CUSTOMER_ORDER_STATUS_JT) aus, wieviel
-- Zeit zwischen der ersten Bestellung (ORDERED) und dem letzten Serviervorgang
-- (SERVED) vergeht.

-- Hinweis: Ein Bestellvorgang kann mehrere Zustandswechsel haben:

--          z.B.: ORDERED->SERVED->PAID
--          z.B.: ORDERED->SERVED->RE_ORDERED->SERVED->RE_ORDERED->SERVED->PAID

-- Ausgabe: ORDER_ID, PROCESSING_TIME

-- @PROCESSING_TIME: Gibt an wieviel Zeit zwischen der ersten Bestellung und dem
--                   letzten Serviervorgang vergeht. Geben Sie die Zeit in Minuten an.
--                   Runden Sie kaufmaenisch.

--                   Hinweis: Die Differenz 2er Zeitangaben wird immer als Anteil
--                            von Tagen angegeben.

--                   z.B.: round((cos2.STATUS_CHANGED_AT - cos.STATUS_CHANGED_AT) * 60 * 24)

-- Tabellen: CUSTOMER_ORDER_STATUS

WITH LST AS (
  SELECT `ORDER_ID`, max(`STATUS_CHANGED_AT`) as SERVED
  FROM `CUSTOMER_ORDER_STATUS_JT`
  WHERE `ORDER_STATUS` = 'SERVED'
  GROUP BY `ORDER_ID`
)
SELECT COS.`ORDER_ID`, round((LST.SERVED - COS.`STATUS_CHANGED_AT`)/24/60, 1) as PROCESSING_TIME_HOURS
FROM `CUSTOMER_ORDER_STATUS_JT` COS
JOIN LST ON LST.ORDER_ID = COS.`ORDER_ID`
WHERE COS.`ORDER_STATUS` = 'ORDERED';


-- endregion

-- ---------------------------------------------------------------------- -
-- 4. Beispiel: Theorie                                        (20.Punkte)
-- ---------------------------------------------------------------------- -
-- a) Welche Constraintarten gibt es in einer relationalen Datenbank.

-- b) Welche Bedeutung hat die folgende Abfrage. Geben Sie eine alternative SQL
-- Abfrage an, die dasselbe Ergebnis berechnet.

SELECT * FROM BRANCHES B JOIN TABLES T ON B.BRANCH_ID = T.BRANCH_ID;

-- a)
-- Es gibt:
-- unique constraint
-- primary key constraint
-- check constraint
-- foregin key constraint


--  b)
-- Die beiden Tabellen haben eine relationale 1:n Verbindung
-- Daher kann man mit dieser Abfrage beide Tabellen in einer neuen Tabelle ausgeben
select B.BRANCH_ID, B.DISTRICT, B.ADDRESS, B.NAME, T.table_id, T.table_nr, T.branch_id
from BRANCHES B join TABLES T on B.BRANCH_ID = T.branch_id;
