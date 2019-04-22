create table city(id int not null primary key, name varchar(50), population int);
create table company(id int not null primary key, name varchar(50), city_id int);
create table citizen(id int, full_name varchar(50), gender varchar(1), birth_date date);

select * from citizen
where id in(1)

insert into citizen values (1, 'Bazarbaev Daniel', 'M', current_timestamp);
insert into citizen values (2, 'Bazarbaev Daniel', 'M', current_timestamp);
insert into citizen values (3, 'Bazarbaeva Valya', 'f', current_timestamp);
insert into citizen values (4, 'Bazarbaev Daniel', 'M', current_timestamp);
insert into citizen values (5, 'Bazarbaeva Nastya', 'f', current_timestamp);
insert into citizen values (1, 'Bazarbaev Figo', 'M', current_timestamp);
insert into citizen values (1, 'Bazarbaev Kora', 'M', current_timestamp);
insert into citizen values (8, 'Bazarbaev Daniel', 'M', current_timestamp);
insert into citizen values (9, 'Bazarbaev Daniel', 'M', current_timestamp);
insert into citizen values (10, 'Bazarbaeva Roza', 'f', current_timestamp);
insert into citizen values (1, 'Bazarbaev Daniel', 'M', current_timestamp);
insert into citizen values (12, 'Bazarbaev Daniel', 'M', current_timestamp);
insert into citizen values (13, 'Bazarbaev Daniel', 'M', current_timestamp);
insert into citizen values (14, 'Bazarbaeva Zura', 'f', current_timestamp);
insert into citizen values (15, 'Bazarbaev Daniel', 'M', current_timestamp);
insert into citizen values (1, 'Bazarbaeva Tahmina', 'f', current_timestamp);
insert into citizen values (17, 'Bazarbaev Daniel', 'M', current_timestamp);
insert into citizen values (18, 'Bazarbaev Daniel', 'M', current_timestamp);
insert into citizen values (19, 'Bazarbaeva Zhanara', 'f', current_timestamp);
insert into citizen values (1, 'Bazarbaev Zoro', 'M', current_timestamp);