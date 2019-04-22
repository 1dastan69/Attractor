create database HW39;

create table city(id int not null primary key, name varchar(50), population int);

create table company(id int not null primary key, name varchar(50), city_id int not null primary key,
					comapany_id int not null primary key);

alter table company add constraint city_id primary key(city_id, company_id);
--ALTER TABLE Persons
--ADD CONSTRAINT pk_PersonID PRIMARY KEY (P_Id,LastName)

create table citizen(id int not null primary key, full_name varchar(50),
					 gender varchar(50), birth_date date, company_id int not null primary key);

insert into city values (11, 'Bishkek', 3000000);
insert into city values (12, 'Almaty', 4000000);
insert into city values (13, 'Astana', 3500090);
insert into city values (14, 'New-York', 1200000);
insert into city values (15, 'Tashkent', 4500000);
insert into city values (16, 'Osh', 123456);
insert into city values (17, 'Batken', 300000);
insert into city values (18, 'Talas', 200000);
insert into city values (19, 'Naryn', 123000);
insert into city values (20, 'Shymkent', 300020);

insert into 
					 