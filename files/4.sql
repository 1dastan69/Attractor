create table city(id int not null primary key, name varchar(50), population int);
create table company(id int not null primary key, name varchar(50), city_id int);
create table citizen(id int, full_name varchar(50), gender varchar(1), birth_date int);

select * from company
where name not like 'Bishkek'

insert into company values (1, 'Bishkek', 632);
insert into company values (2, 'Almaty', 53);
insert into company values (3, 'Osh', 12);
insert into company values (4, 'Bishkek',123);
insert into company values (5, 'Isyk-Kol',243);
insert into company values (6, 'Batken', 342);
insert into company values (7, 'Jalal-Abad', 234);
insert into company values (8, 'Bishkek', 432);
insert into company values (9, 'Seul', 132);
insert into company values (10, 'Tokiyo', 231);
insert into company values (11, 'Marsel', 321);
insert into company values (12, 'Bishkek', 123);
insert into company values (13, 'Osh', 423);
insert into company values (14, 'batken', 432);
insert into company values (15, 'Bishkek', 12);
insert into company values (16, 'Swula', 43);
insert into company values (17, 'Korea', 213);
insert into company values (18, 'Astana', 453);
insert into company values (19, 'Batken', 12);
insert into company values (20, 'New-York',  32);