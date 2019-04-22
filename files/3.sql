create table city(id int not null primary key, name varchar(50), population int);
create table company(id int not null primary key, name varchar(50), city_id int);
create table citizen(id int, full_name varchar(50), gender varchar(1), birth_date int);

select * from citizen
where birth_date between 1990 and 2010

insert into citizen values (1, 'Bazarbaev Daniel', 'M', 1990);
insert into citizen values (2, 'Bazarbaev Daniel', 'M', 1898);
insert into citizen values (3, 'Bazarbaeva Valya', 'f', 2901);
insert into citizen values (4, 'Bazarbaev Daniel', 'M', 2010);
insert into citizen values (5, 'Bazarbaeva Nastya', 'f', 2007);
insert into citizen values (6, 'Bazarbaev Daniel', 'M', 2009);
insert into citizen values (7, 'Bazarbaev Daniel', 'M', 1993);
insert into citizen values (8, 'Bazarbaev Daniel', 'M', 1994);
insert into citizen values (9, 'Bazarbaev Daniel', 'M', 1995);
insert into citizen values (10, 'Bazarbaeva Roza', 'f', 1996);
insert into citizen values (11, 'Bazarbaev Daniel', 'M', 1997);
insert into citizen values (12, 'Bazarbaev Daniel', 'M', 1998);
insert into citizen values (13, 'Bazarbaev Daniel', 'M', 2013);
insert into citizen values (14, 'Bazarbaeva Zura', 'f', 2014);
insert into citizen values (15, 'Bazarbaev Daniel', 'M', 2015);
insert into citizen values (16, 'Bazarbaeva Tahmina', 'f', 2016);
insert into citizen values (17, 'Bazarbaev Daniel', 'M', 2017);
insert into citizen values (18, 'Bazarbaev Daniel', 'M', 2018);
insert into citizen values (19, 'Bazarbaeva Zhanara', 'f', 2019);
insert into citizen values (20, 'Bazarbaev Daniel', 'M', 2020);