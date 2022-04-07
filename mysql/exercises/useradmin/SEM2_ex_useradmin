use useradmin;

--

DROP TABLE IF EXISTS GROUP_HAS_USER_JT;
DROP TABLE IF EXISTS USERS;
DROP TABLE IF EXISTS GROUPES;
DROP TABLE IF EXISTS ROLES_BT;
DROP TABLE IF EXISTS ROLES;

-- ---------------------------------------------------------------------- -
-- 1. Beispiel) DDL Befehle
-- ---------------------------------------------------------------------- -

-- region Beschreibung) Jede Rolle im System wird durch eine Bezeichnung
--        (varchar(50) - not null, unique) identifiziert. Zusaetzlich
--        wird gespeichert wann (DATE - not null, default sysdate) die
--        Rolle angelegt worden ist. Gruppen und User sind Rollen.
--
--        Fuer eine Gruppe wird eine Funktionsbeschreibung (varchar(255))
--        gespeichert.

--        Fuer User wird ein Username (varchar(50) - not null, unique) und ein Passwort
--        (varchar(255) -  not null) gespeichert. Jeder User ist genau einer
--        Gruppe zugeordnet, die seine Hauptgruppe ist. Ein User kann beliebig
--        vielen Gruppen zugeordnet sein. Eine Gruppe besteht aus mehreren Usern.

-- endregion

-- region role-schema)

CREATE TABLE ROLES
(
    ROLE_ID VARCHAR(30) not null,
    PRIMARY KEY (ROLE_ID)
);

CREATE TABLE USERS
(
    ROLE_ID   VARCHAR(30)  not null,
    USER_NAME VARCHAR(50)  not null,
    PASSWORD  VARCHAR(255) not null,
    PRIMARY KEY (ROLE_ID)
);

CREATE TABLE GROUPES
(
    ROLE_ID     VARCHAR(30) not null,
    DESCRIPTION VARCHAR(255),
    PRIMARY KEY (ROLE_ID)
);

ALTER TABLE ROLES
    ADD LABEL VARCHAR(50) NOT NULL;
ALTER TABLE ROLES
    ADD CREATED_AT DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL;
ALTER TABLE ROLES RENAME TO ROLES_BT;

ALTER TABLE USERS
    add constraint FK_USERS_ROLE_ID FOREIGN KEY (ROLE_ID) REFERENCES ROLES_BT (ROLE_ID) ON DELETE CASCADE;
ALTER TABLE GROUPES
    add constraint FK_GROUPES_ROLE_ID FOREIGN KEY (ROLE_ID) REFERENCES ROLES_BT (ROLE_ID) ON DELETE CASCADE;

-- ALTER TABLE USERS modify USER_NAME VARCHAR(50) NOT NULL UNIQUE;
ALTER TABLE USERS
    add constraint UQ_USERS_USERNAME UNIQUE (USER_NAME);

CREATE TABLE GROUP_HAS_USERS_JT
(
    GROUP_ID VARCHAR(30),
    USER_ID  VARCHAR(30),
    PRIMARY KEY (GROUP_ID, USER_ID),
    CONSTRAINT FK_GHU_GROUPID FOREIGN KEY (GROUP_ID) REFERENCES GROUPES (ROLE_ID),
    CONSTRAINT FK_GHU_USERID FOREIGN KEY (USER_ID) REFERENCES USERS (ROLE_ID)
);

ALTER TABLE USERS
    add MAINGROUP_ID INT;
ALTER TABLE USERS
    modify MAINGROUP_ID VARCHAR(30);
ALTER TABLE USERS
    add constraint FK_USERS_MAINID FOREIGN KEY (MAINGROUP_ID) REFERENCES GROUPES (ROLE_ID);
ALTER TABLE ROLES_BT
    modify LABEL VARCHAR(50) DEFAULT 'ROLES' NOT NULL;
-- endregion

-- region 1.1) ALTER TABLE, CREATE TABLE

-- Verwenden Sie den ALTER TABLE Befehl um die Struktur der ROLES u. GROUPES
-- Tabellen entsprechend der Beschreibung des role Schemas zu adaptieren.

-- Hinweis: Implementieren Sie alle erforderlichen Constraints!

-- Hinweis: Beachten Sie die nachfolgenden INSERT Statements!

-- ROLES TABLE: ALTER TABLE


-- GROUPES TABLE: ALTER TABLE


-- USERS TABLE: ALTER TABLE


-- GROUP_HAS_USERS TABLE:


-- endregion

-- region Daten)

-- Spielen Sie die folgenden Daten in das Schema ein.

-- Hinweise: Aendern Sie die INSERT Statements nicht!

INSERT INTO ROLES_BT (ROLE_ID)
VALUES ('SCHOOL_GR');
INSERT INTO ROLES_BT (ROLE_ID)
VALUES ('3AHIT_GR');
INSERT INTO ROLES_BT (ROLE_ID)
VALUES ('4AHIT_GR');
INSERT INTO ROLES_BT (ROLE_ID)
VALUES ('4CHIT_GR');
INSERT INTO ROLES_BT (ROLE_ID)
VALUES ('JNAGELMEIER_USER');
INSERT INTO ROLES_BT (ROLE_ID)
VALUES ('LWAGNER_USER');
INSERT INTO ROLES_BT (ROLE_ID)
VALUES ('SWANDL_USER');

INSERT INTO GROUPES (ROLE_ID, DESCRIPTION)
VALUES ('SCHOOL_GR', 'Group representing all users');
INSERT INTO GROUPES (ROLE_ID, DESCRIPTION)
VALUES ('3AHIT_GR', 'Group representing the student of a single class');
INSERT INTO GROUPES (ROLE_ID, DESCRIPTION)
VALUES ('4AHIT_GR', 'Group representing the student of a single class');
INSERT INTO GROUPES (ROLE_ID, DESCRIPTION)
VALUES ('4CHIT_GR', 'Group representing the student of a single class');

INSERT INTO USERS (ROLE_ID, USER_NAME, PASSWORD, MAINGROUP_ID)
VALUES ('JNAGELMEIER_USER', 'j.nagelmeier@htlkrems.at', 'kuku', '3AHIT_GR');
INSERT INTO USERS (ROLE_ID, USER_NAME, PASSWORD, MAINGROUP_ID)
VALUES ('LWAGNER_USER', 'l.wagner@htlkrems.at', 'karlfranz', '3AHIT_GR');
INSERT INTO USERS (ROLE_ID, USER_NAME, PASSWORD, MAINGROUP_ID)
VALUES ('SWANDL_USER', 's.wandl@htlkrems.at', 'moritari', '4CHIT_GR');

INSERT INTO GROUP_HAS_USERS_JT
VALUES ('3AHIT_GR', 'JNAGELMEIER_USER');
INSERT INTO GROUP_HAS_USERS_JT
VALUES ('3AHIT_GR', 'LWAGNER_USER');
INSERT INTO GROUP_HAS_USERS_JT
VALUES ('4CHIT_GR', 'SWANDL_USER');
INSERT INTO GROUP_HAS_USERS_JT
VALUES ('SCHOOL_GR', 'SWANDL_USER');
INSERT INTO GROUP_HAS_USERS_JT
VALUES ('SCHOOL_GR', 'JNAGELMEIER_USER');
INSERT INTO GROUP_HAS_USERS_JT
VALUES ('SCHOOL_GR', 'LWAGNER_USER');

-- endregion

-- region 1.2) CONSTRAINTS

-- Listen Sie alle Constraints der ROLES_BT, GROUPES und USERS Tabellen auf. Welche der
-- Constraints sind dafuer verantwortlich dass die Datenbank die Relation zwischen
-- ROLES_BT und USERS als 1:1 Beziehung erkennt?

SELECT *
FROM ROLES_BT R
         JOIN GROUPES g on R.ROLE_ID = g.ROLE_ID;

-- endregion

-- region 1.3) CONSTRAINTS

-- Fuehren Sie die folgenden INSERT Statements aus. Erklaeren Sie warum die Ausfuehrung der Befehle
-- zu einem Fehler fuehrt.

-- 1.3.1)
INSERT INTO GROUP_HAS_USERS_JT
VALUES ('SCHOOL_GR', 'MHETZI_USER');

-- 1.3.1)
INSERT INTO GROUPES (ROLE_ID, DESCRIPTION)
VALUES ('3BHIT_GR', 'Group representing the student of a single class');

-- endregion

-- region release resources

drop table GROUP_HAS_USERS_JT;
drop table USERS;
drop table GROUPES;
drop table ROLES_BT;

-- endregion

-- ---------------------------------------------------------------------- -
-- 2. Beispiel) DDL Befehle
-- ---------------------------------------------------------------------- -

-- region Angabe) Spielen Sie Daten und die Struktur des project-schemas in die Datenbank ein.
--                Erstellen Sie anschliessend mit der Hilfe des CREATE TABLE SELECT
--                Befehls die Tabelle PROJECT_REPORTS.

--                Spielen Sie die Daten des project-schemas anschliessend mit dem
--                INSERT SELECT Befehls in die PROJECT_REPORTS Tabelle.

-- endregion

-- region project schema)

CREATE TABLE e_legal_foundations
(
    label varchar(4) not null,
    primary key (label)
);

insert into e_legal_foundations
values ('P_26');
insert into e_legal_foundations
values ('P_27');
insert into e_legal_foundations
values ('P_28');

CREATE TABLE projects
(
    PROJECT_ID NUMBER (19, 0) NOT NULL,
    TITLE            VARCHAR(100) NOT NULL UNIQUE,
    DESCRIPTION      VARCHAR(4000),
    legal_foundation varchar(4)   not null,
    primary key (PROJECT_ID),
    constraint fk_projects_project_id foreign key (legal_foundation)
        references e_legal_foundations (label)
);

create
sequence seq_projects_project_id;

create trigger tr_projects_project_id
    before insert
    on projects
    referencing OLD as old NEW as new
    for each row
BEGIN
select seq_projects_project_id.nextval
into :new.project_id
from dual;
end;

alter
trigger tr_projects_project_id disable;

INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (1,
        'Finite Elemente in der Simulation. Zur Simulation der Kraftstoffverbrennung in Motoren sollen Finite Elemente Methoden eingesetzt werden.',
        'P_26', 'Finite Elemente in der Simulation');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (2,
        'Schnellhärteverfahren in der Betontechnik. Für den Einsatz unter extremen Bedingungen (Brückenbau) sollen Schnellhärteverfahren in der Betontechnik gefunden werdne.',
        'P_28', 'Schnellhärteverfahren in der Betontechnik');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (3, 'AI in der Robotertechnik. Entwickeln einer leistungsstarken AI für die Robotersteuerung im Roboterfussball',
        'P_27', 'AI in der Robotortechnik');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (4, 'Brückenbau im Meer. Es sollen Methoden zum Brückenbau zwischen Inseln erdacht und perfektioniert werden',
        'P_28', 'Brückenbau im Meer');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (5, 'Aufschüttung von künstlichen Inseln', 'P_28', 'Aufschüttung von künstlichen Inseln');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (6, 'Bau von industriellen Flughäfen auf künstlichen Inseln.', 'P_28',
        'Bau von industriellen Flughäfen auf künstlichen Inseln');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (7, 'Numerische Methoden in der Differentiellen Analysis', 'P_27',
        'Numerische Methoden in der Differentiellen Analysis');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (8, 'Numerische Methoden in der Geometrischen Algebra', 'P_27',
        'Numerische Methoden in der Geometrischen Algebra');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (9, 'Computeralgorithmen auf Graphen', 'P_27', 'Computeralgorithmen auf Graphen');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (10, 'Computeralgorithmen in der Diskreten Mathematik', 'P_27',
        'Computeralgorithmen in der Diskreten Mathmatik');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (11, 'Statistische Prognosen in der Wahlanalyse', 'P_28', 'Statistische Prognosen in der Wahlanalyse');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (12, 'Algorithmen in der Mustererkennung', 'P_26', 'Algorithmen in der Mustererkennung');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (13, 'Gesichtsmerkmale in der Mustererkennung', 'P_26', 'Gesichtmerkmale in der Mustererkennung');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (14, 'Generierung von Zufallszahlen', 'P_27', 'Generierung von Zufallszahlen');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (15, 'Gleichverteilte Zufallszahlen in statistischen Algorithmen', 'P_26',
        'Gleichverteilte Zufallszahlen in statistischen Algorithmen');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (16, 'Codierungsverfahren', 'P_26', 'Codierungsverfahren');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (17, 'Codes in der Gruppenalgebra', 'P_27', 'Codes in der Gruppenalgebra');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (18, 'Kürzeste Wege in Graphen berechnen', 'P_27', 'Kürzeste Wege in Graphen berechnen');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (19, 'Numerische Methoden für die Fourier Transformation', 'P_28',
        'Numerische Methoden für die Fourier Transformation');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (20, 'Infrastruktur im alpinen Gelände', 'P_28', 'Infrastruktur im alpinen Gelände');
INSERT INTO projects (PROJECT_ID, description, legal_foundation, title)
VALUES (21, 'Tunnelbau im alpienen Gelände', 'P_28', 'Tunnelbau im alpinen Gelände');

alter
trigger tr_projects_project_id enable;

create table research_funding_projects
(
    project_id number (19, 0) not null,
    is_eu_sponsored number (1) not null,
    is_ffg_sponsored number (1) not null,
    is_fwf_sponsored number (1) not null,
    primary key (project_id),
    constraint fk_rfp_project_id foreign key (project_id)
        references projects (PROJECT_ID)
        on delete cascade
);

INSERT INTO research_funding_projects (IS_EU_SPONSORED, IS_FFG_SPONSORED, IS_FWF_SPONSORED, project_id)
VALUES (0, 0, 0, 1);
INSERT INTO research_funding_projects (IS_EU_SPONSORED, IS_FFG_SPONSORED, IS_FWF_SPONSORED, project_id)
VALUES (1, 1, 0, 3);
INSERT INTO research_funding_projects (IS_EU_SPONSORED, IS_FFG_SPONSORED, IS_FWF_SPONSORED, project_id)
VALUES (0, 1, 1, 7);
INSERT INTO research_funding_projects (IS_EU_SPONSORED, IS_FFG_SPONSORED, IS_FWF_SPONSORED, project_id)
VALUES (0, 1, 1, 8);
INSERT INTO research_funding_projects (IS_EU_SPONSORED, IS_FFG_SPONSORED, IS_FWF_SPONSORED, project_id)
VALUES (0, 0, 1, 9);
INSERT INTO research_funding_projects (IS_EU_SPONSORED, IS_FFG_SPONSORED, IS_FWF_SPONSORED, project_id)
VALUES (0, 0, 1, 10);
INSERT INTO research_funding_projects (IS_EU_SPONSORED, IS_FFG_SPONSORED, IS_FWF_SPONSORED, project_id)
VALUES (0, 0, 0, 12);
INSERT INTO research_funding_projects (IS_EU_SPONSORED, IS_FFG_SPONSORED, IS_FWF_SPONSORED, project_id)
VALUES (0, 0, 0, 13);
INSERT INTO research_funding_projects (IS_EU_SPONSORED, IS_FFG_SPONSORED, IS_FWF_SPONSORED, project_id)
VALUES (1, 0, 0, 14);
INSERT INTO research_funding_projects (IS_EU_SPONSORED, IS_FFG_SPONSORED, IS_FWF_SPONSORED, project_id)
VALUES (0, 0, 0, 15);
INSERT INTO research_funding_projects (IS_EU_SPONSORED, IS_FFG_SPONSORED, IS_FWF_SPONSORED, project_id)
VALUES (0, 0, 0, 16);
INSERT INTO research_funding_projects (IS_EU_SPONSORED, IS_FFG_SPONSORED, IS_FWF_SPONSORED, project_id)
VALUES (1, 1, 0, 17);
INSERT INTO research_funding_projects (IS_EU_SPONSORED, IS_FFG_SPONSORED, IS_FWF_SPONSORED, project_id)
VALUES (0, 0, 1, 18);

create table request_funding_projects
(
    project_id number (19, 0) not null,
    is_small_project number (1) not null,
    primary key (project_id),
    constraint fk_researchfp_project_id foreign key (project_id)
        references projects (PROJECT_ID)
        on delete cascade
);

-- REQUEST_FUNDING_PROJECT
INSERT INTO request_funding_projects (is_small_project, project_id)
VALUES (0, 2);
INSERT INTO request_funding_projects (is_small_project, project_id)
VALUES (0, 4);
INSERT INTO request_funding_projects (is_small_project, project_id)
VALUES (0, 5);
INSERT INTO request_funding_projects (is_small_project, project_id)
VALUES (0, 6);
INSERT INTO request_funding_projects (is_small_project, project_id)
VALUES (0, 11);
INSERT INTO request_funding_projects (is_small_project, project_id)
VALUES (1, 19);
INSERT INTO request_funding_projects (is_small_project, project_id)
VALUES (0, 20);
INSERT INTO request_funding_projects (is_small_project, project_id)
VALUES (0, 21);

create table debitors
(
    debitor_id number (19, 0) not null,
    description varchar2 (100) not null,
    name varchar(20) not null unique,
    primary key (debitor_id)
);

create
sequence sq_debitors_debitor_id;

create trigger tr_debitors_debitor_id
    before insert
    on debitors
    referencing OLD as old NEW as new
    for each row
begin
select sq_debitors_debitor_id.nextval
into :new.debitor_id
from dual;
end;

alter
trigger tr_debitors_debitor_id disable;

INSERT INTO debitors (debitor_id, description, name)
VALUES (1, 'Forschungsförderungsgesellschaft', 'FFG');
INSERT INTO debitors (debitor_id, description, name)
VALUES (2, 'Fonds für Wissenschaftliche Förderung', 'FWF');
INSERT INTO debitors (debitor_id, description, name)
VALUES (3, 'EU Forschungsfond', 'EUFA');
INSERT INTO debitors (debitor_id, description, name)
VALUES (4, 'EU Wissenschaftsfond', 'EUWF');
INSERT INTO debitors (debitor_id, description, name)
VALUES (5, 'Siemens Forschungsabteilung', 'Siemens FA');
INSERT INTO debitors (debitor_id, description, name)
VALUES (6, 'ÖBB Forschungsabteilung', 'ÖBB FA');
INSERT INTO debitors (debitor_id, description, name)
VALUES (7, 'VÖST Forschungsabteilung', 'Vöst FA');
INSERT INTO debitors (debitor_id, description, name)
VALUES (8, 'Strabag', 'Strabag FA');
INSERT INTO debitors (debitor_id, description, name)
VALUES (9, 'Deutsche Bahn Forschungsabteilung', 'DB FA');
INSERT INTO debitors (debitor_id, description, name)
VALUES (10, 'SAP', 'SAP FA');
INSERT INTO debitors (debitor_id, description, name)
VALUES (11, 'Uni Regensburg', 'Uni Regensburg');
INSERT INTO debitors (debitor_id, description, name)
VALUES (12, 'Uni Berlin', 'Uni Berlin');
INSERT INTO debitors (debitor_id, description, name)
VALUES (13, 'Uni Linz', 'Uni Linz');
INSERT INTO debitors (debitor_id, description, name)
VALUES (14, 'Uni Wien', 'Uni Wien');
INSERT INTO debitors (debitor_id, description, name)
VALUES (15, 'Uni Hamburg', 'Uni Hamburg');

alter
trigger tr_debitors_debitor_id enable;

create table project_debitors
(
    debitor_id number (19, 0) not null,
    project_id number (19, 0) not null,
    amount number (10, 2) not null,
    primary key (debitor_id, project_id),
    constraint fk_pd_debitor_id foreign key (debitor_id)
        references DEBITORS (debitor_id),
    constraint fk_pd_project_id foreign key (project_id)
        references projects (PROJECT_ID)
);

INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (10000.00, 12, 1);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (30000.00, 9, 1);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (15000.00, 13, 2);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (30000.00, 1, 3);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (35000.00, 13, 4);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (100000.00, 7, 4);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (150000.00, 8, 5);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (10000.00, 13, 6);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (5000.00, 5, 6);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (5000.00, 1, 7);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (10000.00, 3, 7);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (50000.00, 1, 8);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (15000.00, 2, 9);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (14000.00, 2, 10);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (12000.00, 14, 11);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (25000.00, 9, 12);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (10000.00, 9, 13);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (12000.00, 2, 14);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (50000.00, 12, 15);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (10000.00, 11, 16);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (5000.00, 3, 17);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (12000.00, 1, 18);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (23000.00, 5, 19);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (30000.00, 13, 20);
INSERT INTO project_debitors (amount, debitor_id, project_id)
VALUES (25000.00, 13, 21);

commit;

-- endregion

-- region 2.1) CREATE TABLE AS SELECT...

-- Verwenden Sie den CREATE TABLE AS SELECT um die PROJECT_REPORTS Tabelle anzulegen und
-- die entsprechenden Daten in die Datenbank einzuspielen.

-- PROJECT_REPORTS: PROJECT_ID, PROJECT_TYPE, TITLE

-- @PROJECT_ID: Die ID des Projekts

-- @PROJECT_TYPE: Der Typ des Projekts. Der Typ eines Projekts ist entweder 'REQUEST_FUNDING'
--                oder 'RESEARCH_FUNDING'. Der Projekttyp ist davon abhaengig ob ein
--                Projekt ein REQUEST_FUNDING_PROJECT bzw. ein RESEARCH_FUNDING_PROJECT ist.

-- @TITLE: Der Titel des Projekts


-- endregion

-- region 2.2) ALTER TABLE

-- Verwenden Sie den ALTER TABEL Befehl um die folgenden Aenderungen in
-- Datenbank einzupflegen.

-- 2.2.1) Definieren Sie PROJECT_ID als PRIMARY KEY. Legen Sie ebenfalls
--        einen entsprechenden FOREIGN KEY Constraint an.


-- 2.2.2) Fuegen Sie die Spalte VERSION (number(7) - not null, default 1)
--        zur Tabelle hinzu.


-- 2.2.3) Stellen Sie sicher dass nur 'REQUEST_FUNDING' und 'RESEARCH_FUNDING' als
--        Werte in die PROJECT_TYPE Spalte eingetragen werden duerfen.


-- 2.2.4) Fuegen Sie die Spalte RATING (number(2) - not null, default 0) zur
--        Tabelle hinzu. Die RATING Spalte darf nur Werte zwischen 0 und 10
--        aufnehmen.


-- endregion

-- region 2.3) UPDATE

-- 2.3.1) Erhöhen Sie das RATING der REQUEST_FUNDING_PROJECT Projekte um 2.
--        Wird ein Datensatz veraendert muss seine Versionsnummer auch um
--        1 erhoeht werden.


-- 2.3.2) Erhöhen Sie das RATING von Projekten um 1 die von der EU gefoerdert werden.
--        Veraendern Sie die Versionsnr der Projekte entsprechend

-- Hinweis: RESEARCH_FUNDING_PROJECTS -> IS_EU_SPONSORED


-- 2.3.3) Erhöhen Sie das RATING von Projekten mit einer Projektfoerderung die hoher ist als 5000 um 2.
--        Veraendern Sie die Versionsnr der Projekte entsprechend.

-- Hinweis: Die Projektfoerderung wird in der PROJECT_DEBIOTRS Tabelle verwaltet. Ein
--          PROJECT_DEBITORS Datensatz beschreibt welches Projekt von welchem Geldgeber mit
--          welchem Geldbetrag unterstuetzt wird.


-- 2.3.4 Loeschen Sie alle Projekte mit einem RATING <= 2


-- endregion

-- region 2.4) DROP TABLE, DROP SEQUENCE

-- Loeschen Sie alle Datenbankobjekte die Sie fuer das Beispiel angelegt haben.

-- endregion

