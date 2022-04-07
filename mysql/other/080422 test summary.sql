-- CREATE TABLE
-- region

-- UNIQUE, PRIMARY KEY, FOREGIN KEY, CHECK: constraints
-- können in column oder am Schluss definiert werden
-- außnahme: es existieren mehrere primary keys

-- 1:1
CREATE TABLE SOFT_DRINKS (
    DRINK_ID      INT NOT NULL,
    SUGAR_CONTENT INT,
    PRIMARY KEY (DRINK_ID)
);
CREATE TABLE BEER (
    DRINK_ID          INT NOT NULL,
    ALCOHOLIC_CONTENT INT NOT NULL,
    PRIMARY KEY (DRINK_ID),
    CONSTRAINT FK_BEER_DRINK_ID
        FOREIGN KEY (DRINK_ID)
            REFERENCES SOFT_DRINKS (DRINK_ID)
);

-- 1:n
create table CONTINENTS (
    CONTINENT_ID INT AUTO_INCREMENT,
    NAME         VARCHAR(45) UNIQUE NOT NULL,
    POPULATION   INT                NOT NULL,
    SIZE         INT                NOT NULL,
    PRIMARY KEY (CONTINENT_ID)
);
create table COUNTRIES (
    COUNTRY_ID   INT,
    CONTINENT_ID INT,
    PRIMARY KEY(COUNTRY_ID),
    FOREIGN KEY (CONTINENT_ID) REFERENCES CONTINENTS (CONTINENT_ID)
);

-- n:m
create table classes(
    CLASS_ID INT auto_increment,
    LABEL    VARCHAR(6) not null,
    primary key(CLASS_ID),
    unique(LABEL)
);
create table teachers(
    TEACHER_ID int auto_increment,
    first_name varchar(45) not null,
    last_name  varchar(45) not null,
    primary key(TEACHER_ID),
    unique(first_name, last_name)
);
create table class_has_teachers(
    teacher_id int,
    class_id   int,
    hours      int not null,
    primary key(teacher_id, class_id),
    check ( hours between 0 and 6),
    CONSTRAINT FK_CHT_TID FOREIGN KEY (teacher_id) references teachers(TEACHER_ID),
    constraint FK_CHT_CID foreign key (class_id) references classes(CLASS_ID)
);

-- endregion

-- ALTER TABLE
-- region

-- NOT NULL, DEFAULT, AUTO_INCREMENT: keine constraint
-- müssen bei alter jedes mal neu gesetzt erden

-- UNIQUE, PRIMARY KEY, FOREGIN KEY, CHECK: constraints
-- bleiben bestehen, auf Duplikate achten

-- rename
alter table COUNTRYS RENAME COUNTRIES;

-- modify column
alter table COUNTRIES
    MODIFY COUNTRY_ID INT AUTO_INCREMENT;

-- add constraint
alter table COUNTRIES
    add constraint pk_c_cid primary key(COUNTRY_ID);

-- trigger
CREATE TRIGGER T_B_BID
    before insert on BEVERAGES
    for each row
    set new.BEVERAGE_ID = UPPER(NEW.BEVERAGE_ID);

-- insert
INSERT INTO PRODUCERS (PRODUCER_LABEL, CODE)
VALUES
       ('COCA COLA COMPANY', 'CCC'),
       ('PEPSI', 'PPS');

-- drop if exists
drop table if exists PRODUCERS;

-- delete values from table
truncate table PRODUCERS;

-- endregion

-- WITH CLAUSEL
-- region

with Report as (select c.CRUISE_ID, sum(rj.DISTANCE) DISTANCE
                from CRUISES c
                         join CRUISE_HAS_ROUTES_JT chrj on c.CRUISE_ID = chrj.CRUISE_ID
                         join ROUTES_JT rj on chrj.DEPARTURE_HARBOR_ID = rj.DEPARTURE_HARBOR_ID and
                                              chrj.ARRIVAL_HARBOR_ID = rj.ARRIVAL_HARBOR_ID
                group by c.CRUISE_ID)
select *
from Report r where NOT EXISTS(select * from Report re where r.DISTANCE < re.DISTANCE);

-- endregion

-- UNION CLAUSEL
-- region

SELECT CODE, 'WAGGON'
FROM WAGGONS
        join CONVOYCOMPONETS_BT cb on cb.ID = WAGGONS.ID
union
SELECT CODE, 'TRUCK'
FROM TRUCKS
         join CONVOYCOMPONETS_BT c on c.ID = TRUCKS.ID;

-- endregion

-- EXISTS CONDITION
-- region

select *
from ROUTES_JT bruh
where NOT EXISTS(select * from ROUTES_JT RJT where bruh.DISTANCE < RJT.DISTANCE);

-- endregion