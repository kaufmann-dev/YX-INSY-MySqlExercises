use trackstar;
drop database trackstar;
create database trackstar;

insert into users(username, password, is_active)
values
    ('d.kaufmann', '1234', 1);

insert into projects(title, description, created_at, user_id)
values
    ('Playbook', 'Create books and view them.', '20211213', 1),
    ('Dungeon crawler', '', '20211222', 1);

select * from projects;

ALTER TABLE projects
MODIFY COLUMN created_at DATE;


