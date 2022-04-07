use project;

INSERT INTO project.E_LEGAL_FOUNDATION (VALUE) VALUES ('P_26');

INSERT INTO project.E_LEGAL_FOUNDATION (VALUE) VALUES ('P_27');

INSERT INTO project.E_LEGAL_FOUNDATION (VALUE) VALUES ('P_28');

INSERT INTO project.PROJECTS_BT (PROJECT_ID, TITLE, DESCRIPTION, E_LEGAL_FOUNDATION) VALUES (1, 'Hagis Baukasten', 'Osziloskop', 'P_26');

INSERT INTO project.PROJECTS_BT (PROJECT_ID, TITLE, DESCRIPTION, E_LEGAL_FOUNDATION) VALUES (2, 'Antons Labor', 'Aufbauen und einsetzen', 'P_27');

INSERT INTO project.PROJECTS_BT (PROJECT_ID, TITLE, DESCRIPTION, E_LEGAL_FOUNDATION) VALUES (3, 'Panis Sandkasten', 'Virtual Box', 'P_28');

INSERT INTO project.PROJECTS_BT (PROJECT_ID, TITLE, DESCRIPTION, E_LEGAL_FOUNDATION) VALUES (4, 'Brandis Keller', 'Umbauen', 'P_27');

INSERT INTO project.FACILITIES_BT (ID, FACILITY_CODE, DESCRIPTION, FACILTY_TITLE) VALUES (1, 'ABCD', 'hahahahhahah', 'ABCD Facility');

INSERT INTO project.FACILITIES_BT (ID, FACILITY_CODE, DESCRIPTION, FACILTY_TITLE) VALUES (2, 'ABC', 'hahahahhahah LOST', 'ABC Facility');

INSERT INTO project.FACILITIES_BT (ID, FACILITY_CODE, DESCRIPTION, FACILTY_TITLE) VALUES (3, 'AB', 'LOST', 'AB Facility');

INSERT INTO project.FACILITIES_BT (ID, FACILITY_CODE, DESCRIPTION, FACILTY_TITLE) VALUES (4, 'A', 'LOST hahhahah', 'A Facility');

INSERT INTO project.DEBITORS (ID, NAME, DESCRIPTION) VALUES (1, 'Anton', 'StringTaste ist seine Lieblingstaste');

INSERT INTO project.DEBITORS (ID, NAME, DESCRIPTION) VALUES (2, 'Panhofer', 'Liebt INSY');

INSERT INTO project.DEBITORS (ID, NAME, DESCRIPTION) VALUES (3, 'Brandi', 'Medientechnik Gott');

INSERT INTO project.DEBITORS (ID, NAME, DESCRIPTION) VALUES (4, 'Wieninger', 'Nice');

INSERT INTO project.FACULTIES (FACULTY_ID) VALUES (1);

INSERT INTO project.FACULTIES (FACULTY_ID) VALUES (2);

INSERT INTO project.INSTITUTES (INSTITUTE_ID, FACULTY_ID) VALUES (3, 1);

INSERT INTO project.INSTITUTES (INSTITUTE_ID, FACULTY_ID) VALUES (4, 2);

INSERT INTO project.PROJECT_HAS_DEBITORS_JT (DEBITORS_ID, PROJECTS_PROJECT_ID, AMOUNT) VALUES (1, 1, 10000);

INSERT INTO project.PROJECT_HAS_DEBITORS_JT (DEBITORS_ID, PROJECTS_PROJECT_ID, AMOUNT) VALUES (2, 2, 99384);

INSERT INTO project.RESEARCH_FUNDING_PROJECTS (PROJECT_ID, IS_SMALL_PROJECT) VALUES (1, 0);

INSERT INTO project.RESEARCH_FUNDING_PROJECTS (PROJECT_ID, IS_SMALL_PROJECT) VALUES (2, 1);

INSERT INTO project.REQUEST_FUNDING_PROJECTS (PROJECT_ID, IS_FWF_SPONSORED, IS_FG_SPONSORED, IS_EU_SPONSORED) VALUES (3, 0, 1, 1);

INSERT INTO project.REQUEST_FUNDING_PROJECTS (PROJECT_ID, IS_FWF_SPONSORED, IS_FG_SPONSORED, IS_EU_SPONSORED) VALUES (4, 1, 1, 0);

INSERT INTO project.SUBPROJECTS (ID, DESCRIPTION, APPLIED_RESEARCH, THEORETICAL_RESEARCH, FOCUS_RESEARCH, PROJECT_ID, INSTITUTE_ID) VALUES (2, 'Nix können', 100, 1000, 9284, 1, 3);

INSERT INTO project.SUBPROJECTS (ID, DESCRIPTION, APPLIED_RESEARCH, THEORETICAL_RESEARCH, FOCUS_RESEARCH, PROJECT_ID, INSTITUTE_ID) VALUES (3, 'Alles könen', 10940, 1039, 100, 2, 4);