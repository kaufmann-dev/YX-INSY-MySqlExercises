drop database if exists CRUISES;
create database CRUISES;
use CRUISES;

CREATE TABLE E_CONTINENTS
(
    NAME VARCHAR(20) NOT NULL,
    PRIMARY KEY (NAME)
);

insert into E_CONTINENTS
values ('EUROPE');
insert into E_CONTINENTS
values ('ASIA');
insert into E_CONTINENTS
values ('ANTARCTICA');
insert into E_CONTINENTS
values ('AFRICA');
insert into E_CONTINENTS
values ('AMERICA');
insert into E_CONTINENTS
values ('AUSTRALIA');

CREATE TABLE E_COUNTRIES
(
    NAME VARCHAR(20) NOT NULL,
    PRIMARY KEY (NAME)
);

insert into E_COUNTRIES
values ('ITALY');
insert into E_COUNTRIES
values ('KROATIA');
insert into E_COUNTRIES
values ('TURKEY');
insert into E_COUNTRIES
values ('SICILY');
insert into E_COUNTRIES
values ('FRANCE');
insert into E_COUNTRIES
values ('SPAIN');
insert into E_COUNTRIES
values ('NORWAY');
insert into E_COUNTRIES
values ('JAPAN');
insert into E_COUNTRIES
values ('KOREA');
insert into E_COUNTRIES
values ('SOUTH_AFRICA');
insert into E_COUNTRIES
values ('UNITED_STATES');
insert into E_COUNTRIES
values ('BRAZIL');
insert into E_COUNTRIES
values ('MEXICO');

CREATE TABLE HARBORS
(
    HARBOR_ID   INT AUTO_INCREMENT,
    NAME        VARCHAR(50)   NOT NULL UNIQUE,
    LOCATION    VARCHAR(100)  NOT NULL,
    POSTAL_CODE VARCHAR(8)    NOT NULL,
    STREET      VARCHAR(100)  NOT NULL,
    COUNTRY     VARCHAR(20)   NOT NULL,
    CONTINENT   VARCHAR(20)   NOT NULL,
    PRIMARY KEY (HARBOR_ID),
    CONSTRAINT FK_HARBORS_COUNTRY FOREIGN KEY (COUNTRY)
        REFERENCES E_COUNTRIES (NAME),
    CONSTRAINT FK_HARBORS_CONTINENT FOREIGN KEY (CONTINENT)
        REFERENCES E_CONTINENTS (NAME)
);

insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (1, 'Ostia Harbor', 'Ostia', 'I-2315', 'la strada romana', 'ITALY', 'EUROPE');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (2, 'Rimini Harbor', 'Rimini', 'I-3154', 'la strada de fransecso 23', 'ITALY', 'EUROPE');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (3, 'Palermo Harbor', 'Palerma', 'S-2124', 'palace la corupti 31', 'SICILY', 'EUROPE');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (4, 'Venecia Harbor', 'Venecia', 'I-2123', 'Palzo Martino', 'ITALY', 'EUROPE');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (5, 'Marseille Harbor', 'Marseille', 'F-2153', 'la rui de gag', 'FRANCE', 'EUROPE');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (6, 'Montpellier Harbor', 'Montpellier', 'F-9812', 'la plaza de bonaparte', 'FRANCE', 'EUROPE');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (7, 'Barcelona Harbor', 'Barcelona', 'S-1125', 'playa de la barcelona', 'SPAIN', 'EUROPE');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (8, 'Tarragona Harbor', 'Tarragona', 'S-3154', 'circ roma de tarragona', 'SPAIN', 'EUROPE');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (9, 'Valencia Harbor', 'Valencia', 'S-3754', 'playa de las arenas', 'SPAIN', 'EUROPE');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (10, 'Osaka Harbor', 'Osaka', 'J-3219', 'maishima casmo', 'JAPAN', 'ASIA');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (11, 'Kobe Harbor', 'Kobe', 'J-0932', 'port island', 'JAPAN', 'ASIA');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (12, 'Hiroshima Harbor', 'Hiroshima', 'J-8301', 'minami ku', 'JAPAN', 'ASIA');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (13, 'Busan Harbor', 'Busan', 'K-3215', 'cheonghak', 'KOREA', 'ASIA');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (14, 'Gunsan Harbor', 'Gunsan', 'K-3312', 'byeonsanbando d2', 'KOREA', 'ASIA');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (15, 'Kapstadt Harbor', 'Kapstadt', 'SA-321', 'paarden eiland', 'SOUTH_AFRICA', 'AFRICA');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (16, 'Port Elisabeth Harbor', 'Port Elisabeth', 'SA-524', 'humewood extention', 'SOUTH_AFRICA', 'AFRICA');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (17, 'New York Harbor', 'New York', 'USA-23', 'long beach harbor', 'UNITED_STATES', 'AMERICA');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (18, 'Miami Harbor', 'Miami', 'USA-12', 'Miami Beach harbor', 'UNITED_STATES', 'AMERICA');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (19, 'Corpus Christi Harbor', 'Corpus Christi', 'USA-36', 'padre island', 'UNITED_STATES', 'AMERICA');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (20, 'Triest Harbor', 'Triest', 'I-3251', 'placa de concorde', 'ITALY', 'EUROPE');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (21, 'Pula Harbor', 'Pula', 'K-4285', 'Amfiteartu u puli', 'KROATIA', 'EUROPE');
insert into HARBORS (harbor_id, name, location, postal_code, street, country, continent)
values (22, 'Split Harbor', 'Split', 'K-3763', 'Republic square', 'KROATIA', 'EUROPE');


CREATE TABLE ROUTES_JT
(
    DEPARTURE_HARBOR_ID INT NOT NULL,
    ARRIVAL_HARBOR_ID   INT NOT NULL,
    NAME                VARCHAR(100)  NOT NULL UNIQUE,
    DISTANCE            INTEGER       NOT NULL,
    PRIMARY KEY (DEPARTURE_HARBOR_ID, ARRIVAL_HARBOR_ID),
    CONSTRAINT FK_ROUTES_ARRIVAL_HARBOR_ID FOREIGN KEY (ARRIVAL_HARBOR_ID)
        REFERENCES HARBORS (HARBOR_ID),
    CONSTRAINT FK_ROUTES_DEPARTURE_HARBOR_ID FOREIGN KEY (DEPARTURE_HARBOR_ID)
        REFERENCES HARBORS (HARBOR_ID)
);


insert into ROUTES_JT
values (2, 4, 'ITALY_ROUTE_1', 200);
insert into ROUTES_JT
values (4, 20, 'ITALY_ROUTE_2', 130);
insert into ROUTES_JT
values (20, 21, 'ITALY_ROUTE_3', 120);
insert into ROUTES_JT
values (21, 22, 'ITALY_ROUTE_4', 310);
insert into ROUTES_JT
values (4, 2, 'ITALY_ROUTE_REV_1', 200);
insert into ROUTES_JT
values (20, 4, 'ITALY_ROUTE_REV_2', 130);
insert into ROUTES_JT
values (21, 20, 'ITALY_ROUTE_REV_3', 120);
insert into ROUTES_JT
values (22, 21, 'ITALY_ROUTE_REV_4', 310);
insert into ROUTES_JT
values (1, 3, 'ITALY_ROUTE_5', 610);
insert into ROUTES_JT
values (3, 1, 'ITALY_ROUTE_REV_5', 610);
insert into ROUTES_JT
values (1, 5, 'FRANCE_ROUTE_1', 850);
insert into ROUTES_JT
values (5, 1, 'FRANCE_ROUTE_REV_1', 850);
insert into ROUTES_JT
values (5, 6, 'FRANCE_ROUTE_2', 120);
insert into ROUTES_JT
values (6, 5, 'FRANCE_ROUTE_REV_2', 120);
insert into ROUTES_JT
values (6, 7, 'SPAIN_ROUTE_1', 346);
insert into ROUTES_JT
values (7, 6, 'SPAIN_ROUTE_REV_1', 346);
insert into ROUTES_JT
values (7, 8, 'SPAIN_ROUTE_2', 100);
insert into ROUTES_JT
values (8, 7, 'SPAIN_ROUTE_REV_2', 100);
insert into ROUTES_JT
values (8, 9, 'SPAIN_ROUTE_3', 259);
insert into ROUTES_JT
values (9, 8, 'SPAIN_ROUTE_REV_3', 259);
insert into ROUTES_JT
values (10, 11, 'JAPAN_ROUTE_1', 33);
insert into ROUTES_JT
values (11, 10, 'JAPAN_ROUTE_REV_1', 33);
insert into ROUTES_JT
values (11, 12, 'JAPAN_ROUTE_2', 298);
insert into ROUTES_JT
values (12, 11, 'JAPAN_ROUTE_REV_2', 298);
insert into ROUTES_JT
values (12, 13, 'JAPAN_ROUTE_3', 405);
insert into ROUTES_JT
values (13, 12, 'JAPAN_ROUTE_REV_3', 405);
insert into ROUTES_JT
values (13, 14, 'KOREA_ROUTE_1', 525);
insert into ROUTES_JT
values (14, 13, 'KOREA_ROUTE_REV_1', 525);
insert into ROUTES_JT
values (15, 16, 'SOUTH_AFRICA_ROUTE_1', 1000);
insert into ROUTES_JT
values (16, 15, 'SOUTH_AFRICA_ROUTE_REV_1', 1000);
insert into ROUTES_JT
values (17, 18, 'US_ROUTE_1', 1278);
insert into ROUTES_JT
values (18, 17, 'US_ROUTE_REV_1', 1278);
insert into ROUTES_JT
values (18, 19, 'US_ROUTE_2', 1398);
insert into ROUTES_JT
values (19, 18, 'US_ROUTE_REV_2', 1398);
insert into ROUTES_JT
values (7, 17, 'ATLANTIC_ROUTE_1', 6162);
insert into ROUTES_JT
values (17, 7, 'ATLANTIC_ROUTE_REV_1', 6162);
insert into ROUTES_JT
values (9, 17, 'ATLANTIC_ROUTE_2', 6065);
insert into ROUTES_JT
values (17, 9, 'ATLANTIC_ROUTE_REV_2', 6065);
insert into ROUTES_JT
values (9, 15, 'ATLANTIC_ROUTE_3', 14500);
insert into ROUTES_JT
values (15, 9, 'ATLANTIC_ROUTE_REV_3', 14500);
insert into ROUTES_JT
values (16, 13, 'PACIFIC_ROUTE_1', 13791);
insert into ROUTES_JT
values (13, 16, 'PACIFIC_ROUTE_REV_1', 13791);
insert into ROUTES_JT
values (16, 12, 'PACIFIC_ROUTE_2', 14051);
insert into ROUTES_JT
values (12, 16, 'PACIFIC_ROUTE_REV_2', 14051);

CREATE TABLE E_SHIP_CLASSIFICATION
(
    TYPE VARCHAR(25) NOT NULL,
    PRIMARY KEY (TYPE)
);

insert into E_SHIP_CLASSIFICATION
values ('AIRCRAFT_CARRIER');
insert into E_SHIP_CLASSIFICATION
values ('SUBMARINE');
insert into E_SHIP_CLASSIFICATION
values ('CRUISER');
insert into E_SHIP_CLASSIFICATION
values ('DESTORYER');
insert into E_SHIP_CLASSIFICATION
values ('SAILING_SHIP');
insert into E_SHIP_CLASSIFICATION
values ('BATTLE_SHIP');
insert into E_SHIP_CLASSIFICATION
values ('CRUISE_LINER');

CREATE TABLE SHIPS
(
    SHIP_ID             INT AUTO_INCREMENT,
    NAME                VARCHAR(50)   NOT NULL UNIQUE,
    SHIP_CLASSIFICATION VARCHAR(25)   NOT NULL,
    PURCHASED_AT        DATE          NOT NULL,
    PRIMARY KEY (SHIP_ID),
    CONSTRAINT FK_SHIP_SHIP_CLASSIFIKATION FOREIGN KEY (SHIP_CLASSIFICATION)
        REFERENCES E_SHIP_CLASSIFICATION (TYPE)
);

insert into SHIPS (ship_id, name, ship_classification, purchased_at)
values (1, 'WTF Pani', 'AIRCRAFT_CARRIER', str_to_date('10.09.1978', '%d.%m.%Y'));
insert into SHIPS (ship_id, name, ship_classification, purchased_at)
values (2, 'HMS Warspite', 'CRUISER', str_to_date('26.11.1913', '%d.%m.%Y'));
insert into SHIPS (ship_id, name, ship_classification, purchased_at)
values (3, 'Yamato', 'BATTLE_SHIP', str_to_date('08.08.1949', '%d.%m.%Y'));
insert into SHIPS (ship_id, name, ship_classification, purchased_at)
values (4, 'USS Hornet', 'AIRCRAFT_CARRIER', str_to_date('27.10.1942', '%d.%m.%Y'));
insert into SHIPS (ship_id, name, ship_classification, purchased_at)
values (5, 'Yellow Submairne', 'SUBMARINE', str_to_date('17.07.1968', '%d.%m.%Y'));
insert into SHIPS (ship_id, name, ship_classification, purchased_at)
values (6, 'AIDAprima', 'CRUISE_LINER', str_to_date('18.09.2017', '%d.%m.%Y'));


CREATE TABLE CRUISES
(
    CRUISE_ID         INT AUTO_INCREMENT,
    LABEL             VARCHAR(100)  NOT NULL,
    DATE_OF_DAPARTURE DATE          NOT NULL,
    DATE_OF_ARRIVAL   DATE,
    SHIP_ID           INT NOT NULL,
    PRIMARY KEY (CRUISE_ID),
    CONSTRAINT FK_CRUISES_SHIP_ID FOREIGN KEY (SHIP_ID)
        REFERENCES SHIPS (SHIP_ID)
);

insert into CRUISES (cruise_id, label, date_of_daparture, date_of_arrival, ship_id)
values (1, 'Aida Adria', str_to_date('11.04.2020', '%d.%m.%Y'), str_to_date('14.04.2020', '%d.%m.%Y'), 6);
insert into CRUISES (cruise_id, label, date_of_daparture, date_of_arrival, ship_id)
values (2, 'Japan picnic', str_to_date('10.09.2020', '%d.%m.%Y'), str_to_date('13.09.2020', '%d.%m.%Y'), 3);
insert into CRUISES (cruise_id, label, date_of_daparture, date_of_arrival, ship_id)
values (3, 'Italy Cruise', str_to_date('11.09.2001', '%d.%m.%Y'), str_to_date('14.09.2001', '%d.%m.%Y'), 6);
insert into CRUISES (cruise_id, label, date_of_daparture, date_of_arrival, ship_id)
values (4, 'Rivera Cruise', str_to_date('20.06.2008', '%d.%m.%Y'), str_to_date('27.06.2008', '%d.%m.%Y'), 6);
insert into CRUISES (cruise_id, label, date_of_daparture, date_of_arrival, ship_id)
values (5, 'East Coast Cruise', str_to_date('01.01.2020', '%d.%m.%Y'), str_to_date('24.02.2020', '%d.%m.%Y'), 4);
insert into CRUISES (cruise_id, label, date_of_daparture, date_of_arrival, ship_id)
values (7, 'Golden Cruise', str_to_date('01.01.2020', '%d.%m.%Y'), str_to_date('12.03.2020', '%d.%m.%Y'), 4);


CREATE TABLE CRUISE_HAS_ROUTES_JT
(
    CRUISE_ID           INT NOT NULL,
    DEPARTURE_HARBOR_ID INT NOT NULL,
    ARRIVAL_HARBOR_ID   INT NOT NULL,
    DATE_OF_DEPARTURE   DATETIME          NOT NULL,
    DATE_OF_ARRIVAL     DATETIME,
    ROUTE_INDEX         INTEGER       NOT NULL,
    PRIMARY KEY (CRUISE_ID, DEPARTURE_HARBOR_ID, ARRIVAL_HARBOR_ID),
    CONSTRAINT FK_CHR_CRUISE_ID FOREIGN KEY (CRUISE_ID)
        REFERENCES CRUISES (CRUISE_ID),
    CONSTRAINT FK_CHR_ROUTE_ID FOREIGN KEY (DEPARTURE_HARBOR_ID, ARRIVAL_HARBOR_ID)
        REFERENCES ROUTES_JT (DEPARTURE_HARBOR_ID, ARRIVAL_HARBOR_ID)
);

insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (1, 2, 4, str_to_date('11.04.2020 10:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('11.04.2020 15:10:00', '%d.%m.%Y %H:%i:%S'), 1);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (1, 4, 20, str_to_date('12.04.2020 10:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('12.04.2020 13:15:00', '%d.%m.%Y %H:%i:%S'), 2);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (1, 20, 21, str_to_date('13.04.2020 10:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('13.04.2020 13:15:00', '%d.%m.%Y %H:%i:%S'), 3);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (1, 21, 22, str_to_date('14.04.2020', '%d.%m.%Y %H:%i:%S'),
        str_to_date('14.04.2020 18:15:00', '%d.%m.%Y %H:%i:%S'), 4);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (2, 10, 11, str_to_date('10.09.2020 12:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('10.09.2020 14:00:00', '%d.%m.%Y %H:%i:%S'), 1);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (2, 11, 12, str_to_date('10.09.2020 20:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('11.09.2020 4:00:00', '%d.%m.%Y %H:%i:%S'), 2);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (2, 12, 13, str_to_date('11.09.2020 16:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('12.09.2020 6:00:00', '%d.%m.%Y %H:%i:%S'), 3);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (2, 13, 14, str_to_date('12.09.2020 18:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('13.09.2020 8:00:00', '%d.%m.%Y %H:%i:%S'), 4);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (3, 1, 3, str_to_date('11.09.2001 14:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('12.09.2001 14:00:00', '%d.%m.%Y %H:%i:%S'), 1);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (3, 3, 1, str_to_date('13.09.2001 20:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('14.09.2001 10:00:00', '%d.%m.%Y %H:%i:%S'), 2);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (4, 3, 1, str_to_date('20.06.2008 14:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('20.06.2008 20:00:00', '%d.%m.%Y %H:%i:%S'), 1);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (4, 1, 5, str_to_date('22.06.2008 10:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('23.06.2008 16:00:00', '%d.%m.%Y %H:%i:%S'), 2);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (4, 5, 6, str_to_date('24.06.2008 18:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('24.06.2008 22:00:00', '%d.%m.%Y %H:%i:%S'), 3);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (4, 6, 7, str_to_date('25.06.2008 14:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('25.06.2008 21:00:00', '%d.%m.%Y %H:%i:%S'), 4);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (4, 7, 8, str_to_date('26.06.2008 12:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('26.06.2008 14:00:00', '%d.%m.%Y %H:%i:%S'), 5);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (4, 8, 9, str_to_date('27.06.2008 14:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('27.06.2008 18:00:00', '%d.%m.%Y %H:%i:%S'), 6);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (5, 17, 18, str_to_date('01.01.2020 18:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('25.01.2020 10:00:00', '%d.%m.%Y %H:%i:%S'), 1);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (5, 18, 19, str_to_date('28.01.2020 10:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('24.02.2020 18:00:00', '%d.%m.%Y %H:%i:%S'), 2);

insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (7, 16, 13, str_to_date('01.01.2020 10:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('21.01.2020 18:00:00', '%d.%m.%Y %H:%i:%S'), 1);
insert into CRUISE_HAS_ROUTES_JT (cruise_id, departure_harbor_id, arrival_harbor_id, date_of_departure, date_of_arrival,
                                  route_index)
values (7, 13, 16, str_to_date('22.01.2020 10:00:00', '%d.%m.%Y %H:%i:%S'),
        str_to_date('22.03.2020 18:00:00', '%d.%m.%Y %H:%i:%S'), 2);


CREATE TABLE CABINS
(
    CABIN_NR    INT NOT NULL,
    SHIP_ID     INT NOT NULL,
    DESCRIPTION VARCHAR(255)  NOT NULL,
    CABIN_SIZE  INT NOT NULL,
    PRIMARY KEY (CABIN_NR, SHIP_ID),
    CONSTRAINT FK_CABINS_SHIP_ID FOREIGN KEY (SHIP_ID)
        REFERENCES SHIPS (SHIP_ID)
);

insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (1, 1, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (2, 1, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (3, 1, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (4, 1, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (5, 1, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (6, 1, 'CREW', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (7, 1, 'CREW', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (8, 1, 'CAPITAIN', 1);

insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (1, 2, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (2, 2, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (3, 2, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (4, 2, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (5, 2, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (6, 2, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (7, 2, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (8, 2, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (9, 2, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (10, 2, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (11, 2, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (12, 2, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (13, 2, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (14, 2, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (15, 2, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (16, 2, 'CAPITAIN', 1);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (17, 2, 'MATE', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (18, 2, 'MATE', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (19, 2, 'MATE', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (20, 2, 'MATE', 2);

insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (1, 3, 'CREW', 8);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (2, 3, 'CREW', 8);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (3, 3, 'CREW', 8);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (4, 3, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (5, 3, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (6, 3, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (7, 3, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (8, 3, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (9, 3, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (10, 3, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (11, 3, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (12, 3, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (13, 3, 'GUNNERY', 5);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (14, 3, 'GUNNERY', 5);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (15, 3, 'GUNNERY', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (16, 3, 'CAPITAIN', 1);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (17, 3, 'MATE', 1);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (18, 3, 'MATE', 1);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (19, 3, 'MATE', 1);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (20, 3, 'MATE', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (21, 3, 'MATE', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (22, 3, 'MATE', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (23, 3, 'MATE', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (24, 3, 'MATE', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (25, 3, 'MATE', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (26, 3, 'MATE', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (27, 3, 'MATE', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (28, 3, 'MATE', 3);

insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (1, 4, 'PASSENGER', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (2, 4, 'PASSENGER', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (3, 4, 'PASSENGER', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (4, 4, 'PASSENGER', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (5, 4, 'PASSENGER', 2);

insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (1, 5, 'GUEST', 1);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (2, 5, 'GUEST', 1);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (3, 5, 'GUEST', 3);

insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (1, 6, 'CAPITAIN', 1);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (2, 6, 'MATE', 1);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (3, 6, 'MATE', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (4, 6, 'MATE', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (5, 6, 'MATE', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (6, 6, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (7, 6, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (8, 6, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (9, 6, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (10, 6, 'CREW', 4);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (11, 6, 'PASSENGER', 1);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (12, 6, 'PASSENGER', 1);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (13, 6, 'PASSENGER', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (14, 6, 'PASSENGER', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (15, 6, 'PASSENGER', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (16, 6, 'PASSENGER', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (17, 6, 'PASSENGER', 2);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (18, 6, 'PASSENGER', 3);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (19, 6, 'PASSENGER', 3);
insert into CABINS (cabin_nr, ship_id, description, cabin_size)
values (20, 6, 'PASSENGER', 4);


CREATE TABLE E_EMPLOYEE_TYPE
(
    VALUE VARCHAR(10) NOT NULL,
    PRIMARY KEY (VALUE)
);

insert into E_EMPLOYEE_TYPE
values ('SERVICE');
insert into E_EMPLOYEE_TYPE
values ('OFFICER');
insert into E_EMPLOYEE_TYPE
values ('ENGINEER');

CREATE TABLE EMPLOYEE_ST
(
    EMPLOYEE_ID   INT AUTO_INCREMENT,
    FIRST_NAME    VARCHAR(50)   NOT NULL,
    LAST_NAME     VARCHAR(50)   NOT NULL,
    EMPLOYEE_TYPE VARCHAR(10),
    PRIMARY KEY (EMPLOYEE_ID),
    CONSTRAINT FK_EMPLOYEE_ST_TYPE FOREIGN KEY (EMPLOYEE_TYPE)
        REFERENCES E_EMPLOYEE_TYPE (VALUE)
);

insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (1, 'Benjamin', 'Grabner', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (2, 'Dominik', 'Hetzendorfer', 'ENGINEER');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (3, 'Fabian Norber', 'Fandl', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (4, 'Jan Anton', 'Daum', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (5, 'Sebastian', 'Leutgeb', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (6, 'Dominik', 'Poemmer', 'ENGINEER');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (7, 'Dominik', 'Faltin', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (8, 'Gabriel', 'Lugmayr', 'OFFICER');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (9, 'Stefan', 'Wandl', 'ENGINEER');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (10, 'Luka Tally', 'Boahm', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (11, 'Thomas', 'Pfeisinger', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (12, 'Tobias', 'Scherzer', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (13, 'Mario', 'Rausch', 'ENGINEER');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (14, 'Timo', 'Brand', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (15, 'Martin', 'Kitzler', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (16, 'Daniel', 'Gröblinger', 'ENGINEER');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (17, 'Daniel', 'Holzner', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (18, 'Lukas', 'Wansch', 'OFFICER');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (19, 'Florian', 'Bruchner', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (20, 'Tobias', 'Schrammel', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (21, 'Niklas', 'Hofstetter', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (22, 'Dominik', 'Neuwirth', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (23, 'Florian', 'Poppinger', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (24, 'Klaus', 'Huber', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (25, 'Thomas', 'Huber', 'SERVICE');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (26, 'David', 'Kurz', 'ENGINEER');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (27, 'Nina', 'Kalch', 'ENGINEER');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (28, 'Michael', 'Grötzel', 'ENGINEER');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (29, 'Johannes', 'Kurz', 'ENGINEER');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (30, 'Christoph', 'Fischer', 'ENGINEER');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (31, 'Tobias', 'Kastl', 'OFFICER');
insert into EMPLOYEE_ST (employee_id, first_name, last_name, employee_type)
values (32, 'Mathias', 'Pichler', 'OFFICER');

create table E_EMPLOYEE_ROLE
(
    value varchar(20) not null,
    primary key (value)
);

insert into E_EMPLOYEE_ROLE
values ('CAPITAIN');
insert into E_EMPLOYEE_ROLE
values ('1_MATE');
insert into E_EMPLOYEE_ROLE
values ('2_MATE');
insert into E_EMPLOYEE_ROLE
values ('3_MATE');
insert into E_EMPLOYEE_ROLE
values ('STEERMAN');
insert into E_EMPLOYEE_ROLE
values ('BOOTSMAN');
insert into E_EMPLOYEE_ROLE
values ('COOK');
insert into E_EMPLOYEE_ROLE
values ('WAITER');
insert into E_EMPLOYEE_ROLE
values ('ENTERTAINMENT');
insert into E_EMPLOYEE_ROLE
values ('SECURITY');
insert into E_EMPLOYEE_ROLE
values ('ROOM_SERVICE');
insert into E_EMPLOYEE_ROLE
values ('ELECTRICAIN');
insert into E_EMPLOYEE_ROLE
values ('WOOD_WORK');
insert into E_EMPLOYEE_ROLE
values ('CRAFTS_MAN');
insert into E_EMPLOYEE_ROLE
values ('MACHINE_ENGINEER');

CREATE TABLE CRUISE_HAS_EMPLOYEES_JT
(
    CRUISE_ID     INT NOT NULL,
    EMPLOYEE_ID   INT NOT NULL,
    EMPLOYEE_ROLE VARCHAR(20)   NOT NULL,
    PRIMARY KEY (CRUISE_ID, EMPLOYEE_ID),
    CONSTRAINT FK_CHE_CRUISE_ID FOREIGN KEY (CRUISE_ID)
        REFERENCES CRUISES (CRUISE_ID),
    CONSTRAINT FK_CHE_EMPLOYEE_ID FOREIGN KEY (EMPLOYEE_ID)
        REFERENCES EMPLOYEE_ST (EMPLOYEE_ID),
    CONSTRAINT FK_CHE_EMPLOYEE_ROLE FOREIGN KEY (EMPLOYEE_ROLE)
        REFERENCES E_EMPLOYEE_ROLE (VALUE)
);

insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (1, 8, 'CAPITAIN');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (1, 18, '1_MATE');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (1, 24, 'COOK');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (1, 25, 'COOK');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (1, 23, 'COOK');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (1, 22, 'WAITER');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (1, 21, 'WAITER');

insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (1, 20, 'WAITER');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (1, 19, 'ROOM_SERVICE');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (1, 5, 'ROOM_SERVICE');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (1, 30, 'MACHINE_ENGINEER');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (1, 29, 'MACHINE_ENGINEER');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (1, 28, 'ELECTRICAIN');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (1, 27, 'ELECTRICAIN');

insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (2, 18, 'CAPITAIN');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (2, 31, '1_MATE');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (2, 19, 'COOK');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (2, 20, 'COOK');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (2, 21, 'WAITER');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (2, 22, 'ROOM_SERVICE');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (2, 2, 'ELECTRICAIN');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (2, 6, 'MACHINE_ENGINEER');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (2, 9, 'MACHINE_ENGINEER');


insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (3, 31, 'CAPITAIN');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (3, 18, '1_MATE');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (3, 3, 'COOK');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (3, 4, 'WAITER');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (3, 5, 'ROOM_SERVICE');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (3, 2, 'ELECTRICAIN');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (3, 6, 'MACHINE_ENGINEER');

insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (4, 8, 'CAPITAIN');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (4, 32, '3_MATE');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (4, 31, '2_MATE');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (4, 18, '1_MATE');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (4, 3, 'COOK');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (4, 4, 'COOK');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (4, 5, 'WAITER');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (4, 7, 'WAITER');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (4, 10, 'WAITER');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (4, 11, 'ROOM_SERVICE');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (4, 12, 'ROOM_SERVICE');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (4, 26, 'MACHINE_ENGINEER');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (4, 27, 'MACHINE_ENGINEER');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (4, 28, 'ELECTRICAIN');

insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (5, 8, 'CAPITAIN');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (5, 32, '3_MATE');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (5, 31, '2_MATE');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (5, 18, '1_MATE');

insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (7, 8, 'CAPITAIN');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (7, 32, '3_MATE');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (7, 31, '2_MATE');
insert into CRUISE_HAS_EMPLOYEES_JT (cruise_id, employee_id, employee_role)
values (7, 18, '1_MATE');


CREATE TABLE TRAVELLERS
(
    TRAVELLER_ID INT AUTO_INCREMENT,
    FIRST_NAME   VARCHAR(45)   NOT NULL,
    LAST_NAME    VARCHAR(45)   NOT NULL,
    PRIMARY KEY (TRAVELLER_ID)
);

insert into TRAVELLERS (traveller_id, first_name, last_name)
values (1, 'Jonas', 'Nagelmaier');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (2, 'Lukas', 'Wagner');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (3, 'Niklas', 'Taube');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (4, 'David', 'Kaufmann');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (5, 'Florian', 'Rauchberger');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (6, 'Florian', 'Pernikl');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (7, 'Julia', 'Schenk');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (8, 'Johanna', 'Bock');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (9, 'Simon', 'Hamanek');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (10, 'Sebastian', 'Miloczki');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (11, 'Jan', 'Specht');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (12, 'Christopher', 'Schwarz');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (13, 'Marc', 'Landsteiner');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (14, 'Gabriel', 'Zeller');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (15, 'Marcel', 'Genger');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (16, 'Marvin', 'Lochner');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (17, 'Dominik', 'Ferfecky');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (18, 'Tobias', 'Haidvogl');
insert into TRAVELLERS (traveller_id, first_name, last_name)
values (19, 'Thomas', 'Lueger');


CREATE TABLE BOOKINGS
(
    BOOKING_ID INT AUTO_INCREMENT,
    BOOKED_AT  DATETIME          NOT NULL,
    PRIMARY KEY (BOOKING_ID)
);

insert into BOOKINGS (booking_id, booked_at)
values (1, str_to_date('01.04.2020 16:00:00', '%d.%m.%Y %H:%i:%S'));
insert into BOOKINGS (booking_id, booked_at)
values (2, str_to_date('25.03.2020 12:00:00', '%d.%m.%Y %H:%i:%S'));
insert into BOOKINGS (booking_id, booked_at)
values (3, str_to_date('25.03.2020 11:00:00', '%d.%m.%Y %H:%i:%S'));
insert into BOOKINGS (booking_id, booked_at)
values (4, str_to_date('25.08.2020 14:05:00', '%d.%m.%Y %H:%i:%S'));
insert into BOOKINGS (booking_id, booked_at)
values (5, str_to_date('26.08.2020 16:34:21', '%d.%m.%Y %H:%i:%S'));
insert into BOOKINGS (booking_id, booked_at)
values (6, str_to_date('10.09.2001 08:23:12', '%d.%m.%Y %H:%i:%S'));
insert into BOOKINGS (booking_id, booked_at)
values (7, str_to_date('10.08.2001 17:23:12', '%d.%m.%Y %H:%i:%S'));
insert into BOOKINGS (booking_id, booked_at)
values (8, str_to_date('21.07.2001 12:30:15', '%d.%m.%Y %H:%i:%S'));
insert into BOOKINGS (booking_id, booked_at)
values (9, str_to_date('15.06.2008 8:00:00', '%d.%m.%Y %H:%i:%S'));
insert into BOOKINGS (booking_id, booked_at)
values (10, str_to_date('14.06.2008 12:34:00', '%d.%m.%Y %H:%i:%S'));
insert into BOOKINGS (booking_id, booked_at)
values (11, str_to_date('10.12.2019 12:30:00', '%d.%m.%Y %H:%i:%S'));
insert into BOOKINGS (booking_id, booked_at)
values (12, str_to_date('09.09.2019 14:45:21', '%d.%m.%Y %H:%i:%S'));
insert into BOOKINGS (booking_id, booked_at)
values (13, str_to_date('09.09.2019 14:45:21', '%d.%m.%Y %H:%i:%S'));


CREATE TABLE CRUISE_HAS_BOOKINGS_JT
(
    CRUISE_ID    INT NOT NULL,
    BOOKING_ID   INT NOT NULL,
    TRAVELLER_ID INT NOT NULL,
    CABIN_NR     INT       NOT NULL,
    SHIP_ID      INT NOT NULL,
    PRICE        INT  NOT NULL,
    PRIMARY KEY (CRUISE_ID, BOOKING_ID, TRAVELLER_ID, CABIN_NR, SHIP_ID),
    CONSTRAINT FK_CHB_CRUISE_ID FOREIGN KEY (CRUISE_ID)
        REFERENCES CRUISES (CRUISE_ID),
    CONSTRAINT FK_CHB_BOOKING_ID FOREIGN KEY (BOOKING_ID)
        REFERENCES BOOKINGS (BOOKING_ID),
    CONSTRAINT FK_CHB_TRAVELLER_ID FOREIGN KEY (TRAVELLER_ID)
        REFERENCES TRAVELLERS (TRAVELLER_ID),
    CONSTRAINT FK_CHB_CABIN_ID FOREIGN KEY (CABIN_NR, SHIP_ID)
        REFERENCES CABINS (CABIN_NR, SHIP_ID)
);

insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (1,1,1,11,6,300.00);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (1,1,2,12,6,300.00);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (1,2,3,13,6,250.00);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (1,2,4,13,6,250.00);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (1,2,5,14,6,250.00);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (1,3,6,14,6,270.00);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (1,3,7,20,6,310.00);


insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (2,4,19,4,3,850.24);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (2,4,18,4,3,850.24);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (2,4,17,4,3,850.24);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (2,4,16,4,3,850.24);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (2,5,15,5,3,850.24);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (2,5,14,5,3,850.24);

insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (3,6,10,11,6,420.20);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (3,6,11,12,6,420.20);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (3,7,12,13,6,380.20);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (3,7,13,13,6,380.20);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (3,8,14,14,6,380.20);


insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (4,9,4,20,6,450.00);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (4,9,5,20,6,450.00);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (4,9,6,20,6,450.00);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (4,9,7,20,6,450.00);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (4,10,8,19,6,470.50);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (4,10,9,19,6,470.50);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (4,10,10,19,6,470.50);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (4,10,11,15,6,520.90);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (4,10,12,15,6,520.90);


insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (5,11,1,2,4,560.20);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (5,11,2,2,4,560.20);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (5,11,3,2,4,560.20);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (5,11,4,2,4,560.20);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (5,11,5,1,4,560.20);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (5,12,6,1,4,760.20);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (5,12,7,5,4,760.20);

insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (2,13,1 ,1,4,300.00);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (3,13,1 ,1,4,300.00);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (4,13,1 ,1,4,300.00);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (5,13,1 ,1,4,300.00);
insert into CRUISE_HAS_BOOKINGS_JT (cruise_id, booking_id, traveller_id, cabin_nr, ship_id, price)
values (7,13,1 ,1,4,300.00);

-- drop table CRUISE_HAS_ROUTES_JT;
-- drop table ROUTES_JT;
-- drop table HARBORS;
-- drop table E_COUNTRIES;
-- drop table E_CONTINENTS;
-- drop table CRUISE_HAS_EMPLOYEES_JT;
-- drop table EMPLOYEE_ST;
-- drop table E_EMPLOYEE_TYPE;
-- drop table E_EMPLOYEE_ROLE;
-- drop table CRUISE_HAS_BOOKINGS_JT;
-- drop table TRAVELLERS;
-- drop table BOOKINGS;
-- drop table CABINS;
-- drop table CRUISES;
-- drop table SHIPS;
-- drop table E_SHIP_CLASSIFICATION;

