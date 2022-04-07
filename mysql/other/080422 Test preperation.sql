use test080422;

-- CREATE TABLE STMTS
drop table if exists CITIES;
drop table if exists COUNTRIES;
drop table if exists CONTINENTS;
create table CONTINENTS
(
    CONTINENT_ID INT PRIMARY KEY AUTO_INCREMENT,
    NAME         VARCHAR(45) UNIQUE NOT NULL,
    POPULATION   INT                NOT NULL check ( POPULATION between 0 and 4),
    SIZE         INT                NOT NULL check ( SIZE between 0 and 4)
);
-- can only be used if primary key is single column, otherwise:

drop table if exists CONTINENTS;
create table CONTINENTS
(
    CONTINENT_ID INT AUTO_INCREMENT,
    NAME         VARCHAR(45) UNIQUE NOT NULL,
    POPULATION   INT                NOT NULL,
    SIZE         INT                NOT NULL,
    PRIMARY KEY (CONTINENT_ID)
);

drop table if exists COUNTRYS;
drop table if exists COUNTRIES;
create table COUNTRYS
(
    COUNTRY_ID   INT PRIMARY KEY,
    CONTINENT_ID INT,
    FOREIGN KEY (CONTINENT_ID) REFERENCES CONTINENTS (CONTINENT_ID) on delete cascade
);

drop table if exists CITIES;
create table CITIES
(
    CITY_ID INT PRIMARY KEY AUTO_INCREMENT,
    NAME    VARCHAR(45)
);

-- ALTER TABLE STMTS
-- rename table
alter table COUNTRYS RENAME COUNTRIES;

-- modify column
alter table COUNTRIES
    MODIFY COUNTRY_ID INT AUTO_INCREMENT;

show create table COUNTRIES;
show create table CONTINENTS;
show create table CITIES;

alter table COUNTRIES
    drop constraint COUNTRIES_ibfk_1;
alter table COUNTRIES
    add constraint fk_lol FOREIGN KEY(CONTINENT_ID) REFERENCES CONTINENTS(CONTINENT_ID) on delete cascade;
-- fk constraint
alter table CITIES
    add COUNTRY_ID INT;
alter table CITIES
    add constraint FK_CITIES_COUNTRY_ID
        foreign key (COUNTRY_ID)
            REFERENCES COUNTRIES (COUNTRY_ID)
                ON DELETE cascade
                ON UPDATE CASCADE;

-- uq constraint
alter table CITIES
    add constraint UQ_CITIES_NAME
        unique (NAME);

-- see constraints
show create table CITIES;

create table lol(
    haha int not null
);

show create table lol;
drop table lol;

alter table lol
drop constraint haha_3;

alter table lol
modify haha int default 4 not null ;

alter table lol
modify haha int default null;