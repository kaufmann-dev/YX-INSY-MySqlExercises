use eventmanagement;

insert into E_GENDER
values ('male'), ('female'), ('divers');

insert into E_MOVIE_GENRES
values ('fiction'), ('thriller'), ('romance'), ('drama'), ('documentary');

insert into E_MUSIC_GENRES
values ('rock'), ('pop'), ('hip_hop'), ('classical'), ('jazz');

insert into E_JOB_TYPE
values ('ticket_manager'), ('it_support'), ('customer_support'), ('event_manager'), ('higher_management');

insert into EMPLOYEES (SVNR, FIRST_NAME, LAST_NAME)
values ('2314281103', 'David', 'Kaufmann');

insert into EMPLOYEES (SVNR, FIRST_NAME, LAST_NAME, MANAGER_SVNR)
values ('9327230903', 'Florian', 'Rauchberger', '2314281103');

insert into EVENT_LOCATION
values ('vienna', '2314281103'), ('krems', '9327230903'), ('graz', '2314281103'), ('linz', '9327230903'), ('salzburg', '2314281103'), ('innsbruck', '9327230903');



