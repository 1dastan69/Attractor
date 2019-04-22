create table City(id int not null primary key unique, name varchar(50), population int);
create table company (id int not null primary key unique,name varchar(50), city_id int);
create table citizen(id int not null primary key unique,full_name varchar(50), gender varchar(1), birth_date date);