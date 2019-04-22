create database HW39;

create table city(id int not null primary key, name varchar(50), population int);

create table company(id int not null primary key, name varchar(50), city_id int, foreign key(city_id)
					references company(id));

create table citizen(id int not null primary key, full_name varchar(50),
					 gender varchar(1), birth_date date, company_id int,
					foreign key(company_id)
					references citizen(id));

select * from city
select * from company
select * from citizen

--------------------------------------------
select  
city.name,
company.name, count(citizen.id)
from citizen		
inner join company
on citizen.company_id = citizen.id
inner join city
on company.city_id = city.id
group by company.name, city.name
having count(citizen.id) >=10;
								   
-------------------------------------------------------------------

									   
insert into city values (11, 'Bishkek', 3000000),
(12, 'Bishkek', 4000000),
(13, 'Bishkek', 3500090),
(14, 'Bishkek', 1200000),
(15, 'Tashkent', 4500000),
(16, 'Osh', 123456),
(17, 'Batken', 300000),
(18, 'Talas', 200000),
(19, 'Naryn', 123000),
(20, 'Shymkent', 300020);

insert into company values (11, 'Telecom', null),
(12, 'SurCom', 12),
(13, 'DomCom', 13),
(14, 'VAtCom', 14),
(15, 'SomCom', 15),
(16, 'DuhCom', 16),
(17, 'DirCom', 17),
(18, 'TawCom', 18),
(19, 'RodCom', 19),
(20, 'SubCom', 20);

insert into citizen values (11, 'Karlos Pier', 'M', to_date('12/12/2014', 'dd/mm/yyyy'), null),
(12,'Gisela Moone', 'F', to_date('22/12/2014', 'dd/mm/yyyy'), 12),
(13, 'Milly Beaudin', 'F', to_date('12/10/2014', 'dd/mm/yyyy'), 13),
(14, 'Karena Laine', 'F', to_date('13/02/2015', 'dd/mm/yyyy'), 14),
(15, 'Ada Elsasser', 'M', to_date('24/11/1990', 'dd/mm/yyyyy'), 15),
(16, 'Wally Boggess', 'M', to_date('25/11/1995', 'dd/mm/yyyy'), 16),
(17, 'Katharyn Hine', 'F', to_date('02/12/2012', 'dd/mm/yyyy'), 17),
(18, 'Gregory Shephard', 'M', to_date('18/11/2011', 'dd/mm/yyyy'), 18),
(19, 'Dion Felker', 'M', to_date('18/03/2012', 'dd/mm/yyyy'), 19),
(20, 'Fredia Bonhomme', 'F', to_date('15/06/1993', 'dd/mm/yyyy'), 20);
																		
