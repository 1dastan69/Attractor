create database HW38;

--select * from citizen, city,company
--where citizen.id = city.id;

--select citizen.id, citizen.full_name, citizen.gender,
--city.id, city.name,
--company.id, company.name
--from citizen
--left join city
--on citizen.id = city.id
--left join company
--city.id, city.name,
--on company.id = city.id;

select citizen.id, citizen.full_name, citizen.gender,
city.id, city.name,
company.id, company.name
from citizen
left join company
on citizen.company_id = company.id
left join city
on company.city_id = city.id;

--select * FROM citizen,company,city
--		INNER JOIN city ON citizen.id = city.id;

--select citizen.id,citizen.full_name, citizen.gender, citizen.birth_date,
--		company.name,
--		city.Name
--		FROM 
--		citizen
--		INNER JOIN city ON citizen.full_name = city.name;

create table City (id int primary key,
					 Name varchar(50) not null,
					 population int);
					 
create table Company (id INT primary key,
						Name varchar(50) not null,
					    city_id INT,
						FOREIGN KEY(city_id)
						REFERENCES company(id)
					 	ON DELETE CASCADE);
create table Citizen (id int primary key,
					 Full_name varchar(50),
					 gender varchar(1),
					 birth_date date,
					 company_id int,
					 foreign key(company_id)
					 references citizen(id));
--drop table company;	
--drop table citizen;
--drop table city;
										
select * from city
select * from company
select * from citizen


insert into company values (1,'Telecom', null),
										(2, 'Ava', 1),
										(3, 'Fasd', 2),
										(4, 'Sata', 3),
										(5, 'fast', 4),
										(6,'test' , 5),
										(7, 'Tere', 6),
										(8, 'Gdsfw' , 7),
										(9,'Gold', 8),
										(10, 'ZAara', 9),
										(11,'OPJ', 10),
										(12,'OPR', 11),
										(13,'Org', 12),
										(14,'TRO', 13),
										(15,'URE', 14),
										(16,'IE', 15),
										(17,'IOW', 16),
										(18,'POE', 17),
										(19,'OIW',18),
										(20,'JEF', 19);
										
										
insert into citizen values (1, 'Dastan Daniiarov', 'M', to_date('06/02/1997','dd/mm/yyyy'),null),
							(2, 'Dinara Asankulova', 'F', to_date('04/05/1998','dd/mm/yyyy'),1),
							(3, 'Askat Jumabaev', 'M', to_date('06/05/2005', 'dd/mm/yyyy'), 2),
							(4, 'Kalzira Ulanova', 'F', to_date('04/04/2012', 'dd/mm/yyyy'), 3),
							(5, 'Aiturgan Mambetova', 'F', to_date('29/04/1999','dd/mm/yyyy'), 4),
							(6, 'Jyldyz Nazarbaeva', 'F', to_date('24/09/1998', 'dd/mm/yyyy'), 5),
							(7, 'Nasip Daniayrov', 'M', to_date('25/05/2005', 'dd/mm/yyyy'), 6),
							(8, 'Ermek Bakytov', 'M', to_date('13/05/1998', 'dd/mm/yyyy'), 7),
							(9, 'Nurtilek Janarbekov', 'M', to_date('04/12/1999', 'dd/mm/yyyy'), 8),
							(10, 'Aidar Nazarbaev', 'M', to_date('05/04/1998', 'dd/mm/yyyy'), 9),
							(11, 'Zhamilya QWerty', 'F', to_date('06/12/1999', 'dd/mm/yyyy'),10),
							(12, 'ZJUMANIEVA aLTYNAI', 'F', to_date('29/04/1999','dd/mm/yyyy'), 11),
							(13, 'Zalakre Tynaliev', 'M', to_date('23/04/1998', 'dd/mm/yyyy'),12),
							(14, 'Zamira Ulanova', 'F', to_date('16/05/1978', 'dd/mm/yyyy'),13),
							(15, 'Askat Azyrbekov', 'M', to_date('13/09/1999', 'dd/mm/yyyy'), 14),
							(16, 'Almaz Uralbekov', 'M', to_date('14/10/1985', 'dd/mm/yyyy'), 15),
							(17, 'Kadyrbai Saltanaliev', 'M', to_date('27/05/2005', 'dd/mm/yyyy'),16),
							(18, 'Ildiar Saifulin', 'M', to_date('14/05/1999', 'dd/mm/yyyy'), 17),
							(19, 'Anvar Akimov','M', to_date('13/10/1997', 'dd/mm/yyyy'), 18),
							(20, 'Gustan Ismailov', 'M', to_date('14/02/1993', 'dd/mm/yyyy'),19);
															   
							
insert into city values (1,'Bishkek', 3000000),
							(2, 'Osh', 123456),
							(3, 'Batken', 32141),
							(4, 'Jalal-Abad', 56472),
							(5, 'Isyk-Kol', 6472),
							(6, 'Almaty', 142131),
							(7, 'Talas', 72631),
							(8, 'Naryn', 88880),
							(9, 'Astana', 2000000),			
							(10, 'Shymket', 490000),			
							(11, 'Taraz', 60293),
							(12, 'Pavlodar', 94182),
							(13, 'kyzylorda', 73281),
							(14, 'New-York', 12000000),
							(15, 'Nevada', 1247991),
							(16, 'Texas', 64721),
							(17, 'Stambul', 732882),
							(18, 'Antalia', 571823),
							(19, 'Moskow', 8521),
							(20, 'Gruziya', 3920);
							
										