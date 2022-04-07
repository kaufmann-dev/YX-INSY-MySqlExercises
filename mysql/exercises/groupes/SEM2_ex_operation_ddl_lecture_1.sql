use groupes;

CREATE TABLE ROLES_BT
(
    ROLE_ID INTEGER AUTO_INCREMENT,
    PRIMARY KEY (ROLE_ID)
);

CREATE TABLE GROUPES
(
    GROUP_ID    INTEGER,
    LABEL       VARCHAR(50) NOT NULL,
    DESCRIPTION TEXT        NOT NULL,
    PRIMARY KEY (GROUP_ID),
    CONSTRAINT FK_GROUPS_GROUPID FOREIGN KEY (GROUP_ID) REFERENCES ROLES_BT (ROLE_ID) ON DELETE CASCADE
);

CREATE TABLE USERS
(
    USER_ID  INTEGER,
    USERNAME VARCHAR(30) NOT NULL,
    PASSWORD TEXT        NOT NULL,
    PRIMARY KEY (USER_ID),
    CONSTRAINT FK_USERS_USERID FOREIGN KEY (USER_ID) REFERENCES ROLES_BT (ROLE_ID) ON DELETE CASCADE
);

CREATE TABLE ADMINS (
    ADMIN_ID INTEGER,
    PRIMARY KEY (ADMIN_ID),
    CONSTRAINT FK_ADMIN_ADMINID FOREIGN KEY (ADMIN_ID) REFERENCES USERS (USER_ID) ON DELETE CASCADE
);


CREATE TABLE GROUP_HAS_USERS_JT (
    GROUP_ID INTEGER,
    USER_ID INTEGER,
    PRIMARY KEY (GROUP_ID,USER_ID),
    CONSTRAINT FK_GHU_GROUPID FOREIGN KEY (GROUP_ID) REFERENCES GROUPES (GROUP_ID),
    CONSTRAINT FK_GHU_USERID FOREIGN KEY (USER_ID) REFERENCES USERS (USER_ID)
);

CREATE TABLE STORAGE_OBJECTS_BT (
  OBJECT_ID INTEGER AUTO_INCREMENT,
  NAME VARCHAR(30) NOT NULL ,
  PART INTEGER NOT NULL,
  MEMORY_ALLOCATION TEXT NOT NULL,
  PRIMARY KEY (OBJECT_ID)
);

CREATE TABLE FILES (
    FILE_ID INTEGER,
    PRIMARY KEY (FILE_ID),
    CONSTRAINT FK_FILES_FILEID FOREIGN KEY (FILE_ID) REFERENCES STORAGE_OBJECTS_BT (OBJECT_ID) ON DELETE CASCADE
);

CREATE TABLE DIRECTORIES (
    DIRECTORY_ID INTEGER,
    PRIMARY KEY (DIRECTORY_ID),
    CONSTRAINT FK_DIRECTORY_DIRECTORYID FOREIGN KEY (DIRECTORY_ID) REFERENCES STORAGE_OBJECTS_BT (OBJECT_ID) ON DELETE CASCADE
);

CREATE TABLE PERMISSIONS (
  CODE VARCHAR(1),
  PRIMARY KEY (CODE),
  constraint CK_PERMISSIONS_CODE CHECK ( upper(CODE) in ('R','W','X') )
);

CREATE TABLE USER_HAS_RIGHTS_JT(
    ROLE_ID INTEGER,
    OBJECT_ID INTEGER,
    CODE VARCHAR(1),
    PERMITTED_AT DATE NOT NULL,
    ADMIN_ID INTEGER NOT NULL ,
    DATE_OF_EXPIRATION DATE NOT NULL ,
    PRIMARY KEY (ROLE_ID, OBJECT_ID, CODE, PERMITTED_AT),
    CONSTRAINT FK_UHR_ROLEID FOREIGN KEY (ROLE_ID) REFERENCES ROLES_BT (ROLE_ID),
    CONSTRAINT FK_UHR_OBJECTID FOREIGN KEY (OBJECT_ID) REFERENCES STORAGE_OBJECTS_BT (OBJECT_ID),
    CONSTRAINT FK_UHR_CODE FOREIGN KEY (CODE) REFERENCES PERMISSIONS (CODE),
    CONSTRAINT FK_UHR_ADMINID FOREIGN KEY (ADMIN_ID) REFERENCES ADMINS (ADMIN_ID)
);


INSERT INTO ROLES_BT
VALUES (1);
INSERT INTO ROLES_BT
VALUES (2);
INSERT INTO ROLES_BT
VALUES (3);

INSERT INTO GROUPES (GROUP_ID, LABEL, DESCRIPTION)
VALUES (1, 'Hauli INSY-1', 'Bester Unterricht');
INSERT INTO GROUPES (GROUP_ID, LABEL, DESCRIPTION)
VALUES (2, 'Macho Nachmittag', 'Zweit bester Unterricht');

INSERT INTO USERS (USER_ID, USERNAME, PASSWORD)
VALUES (3, 'Pani', '123');

INSERT INTO ADMINS VALUES (3);

INSERT INTO GROUP_HAS_USERS_JT (GROUP_ID, USER_ID) VALUES (1,3);
INSERT INTO GROUP_HAS_USERS_JT (GROUP_ID, USER_ID) VALUES (2,3);

INSERT INTO STORAGE_OBJECTS_BT (NAME, PART, MEMORY_ALLOCATION) VALUES ('Document', 1, '1A3B1C');
INSERT INTO STORAGE_OBJECTS_BT (NAME, PART, MEMORY_ALLOCATION) VALUES ('Insy', 2, '1A3B2C3');
INSERT INTO STORAGE_OBJECTS_BT (NAME, PART, MEMORY_ALLOCATION) VALUES ('Lecture.pdf', 2, '1A3B2C3');

INSERT INTO DIRECTORIES VALUES (1);
INSERT INTO DIRECTORIES VALUES (2);
INSERT INTO FILES VALUES (3);


INSERT INTO PERMISSIONS VALUES ('R');
INSERT INTO PERMISSIONS VALUES ('W');
INSERT INTO PERMISSIONS VALUES ('X');
-- INSERT INTO PERMISSIONS VALUES ('T'); -> führt zu violation


-- ALTER TABLE USERS
ALTER TABLE USERS add MAIN_GROUP_ID INTEGER;
ALTER TABLE USERS add constraint FK_USERS_MAINID FOREIGN KEY (MAIN_GROUP_ID) REFERENCES GROUPES (GROUP_ID);
UPDATE USERS SET MAIN_GROUP_ID = 1 WHERE USER_ID = 3;

ALTER TABLE STORAGE_OBJECTS_BT add PARENT_DIRECTORY_ID INTEGER;
ALTER TABLE STORAGE_OBJECTS_BT add constraint  FK_SOB_PDID FOREIGN KEY (PARENT_DIRECTORY_ID) REFERENCES DIRECTORIES (DIRECTORY_ID);
UPDATE STORAGE_OBJECTS_BT SET PARENT_DIRECTORY_ID = 1 WHERE OBJECT_ID = 2;
UPDATE STORAGE_OBJECTS_BT SET PARENT_DIRECTORY_ID = 2 WHERE OBJECT_ID = 3;