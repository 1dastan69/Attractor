create database Company

create user superuser WITH
	LOGIN
	SUPERUSER
	CREATEDB
	CREATEROLE
	INHERIT
	REPLICATION
	CONNECTION LIMIT -1;

CREATE USER guestuser WITH
	LOGIN
	NOSUPERUSER
	NOCREATEDB
	NOCREATEROLE
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1;

create table Main."Staff" (Staff_number int not null primary key , fullname varchar(50),
						   gender varchar(1), birth_date date);
create table Main."Company" (company_number int not null primary key unique, company_name varchar(50),
							open_date timestamp, staff_number int, foreign key(staff_number)
							references Main."Staff"(staff_number));
create table Main."Address" (address_number int not null primary key unique, address varchar(50), stuff_number int,
							foreign key(staff_number)
							references Main."Staff"(staff_number));
create table Main."Salary"( salary_id int not null primary key unique, amount int, salary_date timestamp, 
						   staff_number int, foreign key(staff_number)
						  references Main."Staff"(staff_number));
select * from Main."Salary"
												  
select address_number, address, fullname
from Main."Address"
left join Main."Staff"	
on Main."Staff".staff_number = Main."Address".staff_number

UNION all
												  
select fullname
from Main."Staff"
right join	Main."Salary"
on 	Main."Staff".staff_number = Main."Salary".staff_number;
												  where Main."Salary".salary_date;
	
insert into Main."Salary" values (1, 2000, '2019-01-01 00:00:01', 1);
insert into Main."Salary" values (2, 2000, '2019-02-01 00:00:02', 1);
insert into Main."Salary" values (3, 2000, '2019-03-01 00:00:02', 1);
insert into Main."Salary" values (4, 2000, '2019-04-01 00:00:02', 1);
insert into Main."Salary" values (5, 2000, '2019-01-01 00:00:01', 2);
insert into Main."Salary" values (6, 2000, '2019-02-01 00:00:02', 2);
insert into Main."Salary" values (7, 2000, '2019-03-01 00:00:02', 2);
insert into Main."Salary" values (8, 2000, '2019-04-01 00:00:02', 2);
insert into Main."Salary" values (9, 2000, '2019-01-01 00:00:01', 3);
insert into Main."Salary" values (10, 2000, '2019-02-01 00:00:02', 3);
insert into Main."Salary" values (11, 2000, '2019-03-01 00:00:02', 3);
insert into Main."Salary" values (12, 2000, '2019-04-01 00:00:02', 3);
insert into Main."Salary" values (13, 2000, '2019-01-01 00:00:01', 4);
insert into Main."Salary" values (14, 2000, '2019-02-01 00:00:02', 4);
insert into Main."Salary" values (15, 2000, '2019-03-01 00:00:02', 4);
insert into Main."Salary" values (16, 2000, '2019-04-01 00:00:02', 4);
insert into Main."Salary" values (17, 2000, '2019-01-01 00:00:01', 5);
insert into Main."Salary" values (18, 2000, '2019-02-01 00:00:02', 5);
insert into Main."Salary" values (19, 2000, '2019-03-01 00:00:02', 5);
insert into Main."Salary" values (20, 2000, '2019-04-01 00:00:02', 5);
insert into Main."Salary" values (21, 2000, '2019-01-01 00:00:01', 6);
insert into Main."Salary" values (22, 2000, '2019-02-01 00:00:02', 6);
insert into Main."Salary" values (23, 2000, '2019-03-01 00:00:02', 6);
insert into Main."Salary" values (24, 2000, '2019-04-01 00:00:02', 6);
insert into Main."Salary" values (25, 2000, '2019-01-01 00:00:01', 7);
insert into Main."Salary" values (26, 2000, '2019-02-01 00:00:02', 7);
insert into Main."Salary" values (27, 2000, '2019-03-01 00:00:02', 7);
insert into Main."Salary" values (28, 2000, '2019-04-01 00:00:02', 7);
insert into Main."Salary" values (29, 2000, '2019-01-01 00:00:01', 8);
insert into Main."Salary" values (30, 2000, '2019-02-01 00:00:02', 8);
insert into Main."Salary" values (31, 2000, '2019-03-01 00:00:02', 8);
insert into Main."Salary" values (32, 2000, '2019-04-01 00:00:02', 8);
insert into Main."Salary" values (33, 2000, '2019-01-01 00:00:01', 9);
insert into Main."Salary" values (34, 2000, '2019-02-01 00:00:02', 9);
insert into Main."Salary" values (35, 2000, '2019-03-01 00:00:02', 9);
insert into Main."Salary" values (36, 2000, '2019-04-01 00:00:02', 9);
insert into Main."Salary" values (37, 2000, '2019-01-01 00:00:01', 10);
insert into Main."Salary" values (38, 2000, '2019-02-01 00:00:02', 10);
insert into Main."Salary" values (39, 2000, '2019-03-01 00:00:02', 10);
insert into Main."Salary" values (40, 2000, '2019-04-01 00:00:02', 10);
insert into Main."Salary" values (41, 2000, '2019-01-01 00:00:01', 11);
insert into Main."Salary" values (42, 2000, '2019-02-01 00:00:02', 11);
insert into Main."Salary" values (43, 2000, '2019-03-01 00:00:02', 11);
insert into Main."Salary" values (44, 2000, '2019-04-01 00:00:02', 11);
insert into Main."Salary" values (45, 2000, '2019-01-01 00:00:01', 12);
insert into Main."Salary" values (46, 2000, '2019-02-01 00:00:02', 12);
insert into Main."Salary" values (47, 2000, '2019-03-01 00:00:02', 12);
insert into Main."Salary" values (48, 2000, '2019-04-01 00:00:02', 12);
insert into Main."Salary" values (49, 2000, '2019-01-01 00:00:01', 13);
insert into Main."Salary" values (50, 2000, '2019-02-01 00:00:02', 13);
insert into Main."Salary" values (51, 2000, '2019-03-01 00:00:02', 13);
insert into Main."Salary" values (52, 2000, '2019-04-01 00:00:02', 13);
insert into Main."Salary" values (53, 2000, '2019-01-01 00:00:01', 14);
insert into Main."Salary" values (54, 2000, '2019-02-01 00:00:02', 14);
insert into Main."Salary" values (55, 2000, '2019-03-01 00:00:02', 14);
insert into Main."Salary" values (56, 2000, '2019-04-01 00:00:02', 14);
insert into Main."Salary" values (57, 2000, '2019-01-01 00:00:01', 15);
insert into Main."Salary" values (58, 2000, '2019-02-01 00:00:02', 15);
insert into Main."Salary" values (59, 2000, '2019-03-01 00:00:02', 15);
insert into Main."Salary" values (60, 2000, '2019-04-01 00:00:02', 15);
insert into Main."Salary" values (61, 2000, '2019-01-01 00:00:01', 16);
insert into Main."Salary" values (62, 2000, '2019-02-01 00:00:02', 16);
insert into Main."Salary" values (63, 2000, '2019-03-01 00:00:02', 16);
insert into Main."Salary" values (64, 2000, '2019-04-01 00:00:02', 16);
insert into Main."Salary" values (65, 2000, '2019-01-01 00:00:01', 17);
insert into Main."Salary" values (66, 2000, '2019-02-01 00:00:02', 17);
insert into Main."Salary" values (67, 2000, '2019-03-01 00:00:02', 17);
insert into Main."Salary" values (68, 2000, '2019-04-01 00:00:02', 17);
insert into Main."Salary" values (69, 2000, '2019-01-01 00:00:01', 18);
insert into Main."Salary" values (70, 2000, '2019-02-01 00:00:02', 18);
insert into Main."Salary" values (71, 2000, '2019-03-01 00:00:02', 18);
insert into Main."Salary" values (72, 2000, '2019-04-01 00:00:02', 18);
insert into Main."Salary" values (73, 2000, '2019-01-01 00:00:01', 19);
insert into Main."Salary" values (74, 2000, '2019-02-01 00:00:02', 19);
insert into Main."Salary" values (75, 2000, '2019-03-01 00:00:02', 19);
insert into Main."Salary" values (76, 2000, '2019-04-01 00:00:02', 19);
insert into Main."Salary" values (77, 2000, '2019-01-01 00:00:01', 20);
insert into Main."Salary" values (78, 2000, '2019-02-01 00:00:02', 20);
insert into Main."Salary" values (79, 2000, '2019-03-01 00:00:02', 20);
insert into Main."Salary" values (80, 2000, '2019-04-01 00:00:02', 20);												  
												  

insert into Main."Address" values (1, 'Ahunbaeva street', 1);
insert into Main."Address" values (2, 'Ahunbaeva street', 1);
insert into Main."Address" values (3, 'Ahunbaeva street', 1);
insert into Main."Address" values (4, 'Maldybaeva street', 2);
insert into Main."Address" values (5, 'Maldybaeva street', 2);
insert into Main."Address" values (6, 'Maldybaeva street', 2);
insert into Main."Address" values (7, 'Sovetskaya street', 3);
insert into Main."Address" values (8, 'Sovetskaya street', 3);
insert into Main."Address" values (9, 'Sovetskaya street', 3);
insert into Main."Address" values (10, 'Tynystanova street', 4);
insert into Main."Address" values (11, 'Tynystanova street', 4);
insert into Main."Address" values (12, 'Tynystanova street', 4);
insert into Main."Address" values (13, 'Tynalieva street', 5);
insert into Main."Address" values (14, 'Tynalieva street', 5);
insert into Main."Address" values (15, 'Tynalieva street', 5);
insert into Main."Address" values (16, 'Almatinka street', 6);
insert into Main."Address" values (17, 'Almatinka street', 6);
insert into Main."Address" values (18, 'Almatinka street', 6);
insert into Main."Address" values (19, 'Gorkogo street', 7);
insert into Main."Address" values (20, 'Gorkogo street', 7);
insert into Main."Address" values (21, 'Gorkogo street', 7);
insert into Main."Address" values (22, 'Auezova street', 8);
insert into Main."Address" values (23, 'Auezova street', 8);
insert into Main."Address" values (24, 'Auezova street', 8);
insert into Main."Address" values (25, 'Cholponka street', 9);
insert into Main."Address" values (26, 'Cholponka street', 9);
insert into Main."Address" values (27, 'Cholponka street', 9);
insert into Main."Address" values (28, 'Vinogradnaya street', 10);
insert into Main."Address" values (29, 'Vinogradnaya street', 10);
insert into Main."Address" values (30, 'Vinogradnaya street', 10);
insert into Main."Address" values (31, 'Mira street', 11);
insert into Main."Address" values (32, 'Mira street', 11);
insert into Main."Address" values (33, 'Mira street', 11);
insert into Main."Address" values (34, 'Magistral street', 12);
insert into Main."Address" values (35, 'Magistral street', 12);
insert into Main."Address" values (36, 'Magistral street', 12);
insert into Main."Address" values (37, 'Budenova street', 13);
insert into Main."Address" values (38, 'Budenova street', 13);
insert into Main."Address" values (39, 'Budenova street', 13);
insert into Main."Address" values (40, 'Lermontova street', 14);
insert into Main."Address" values (41, 'Lermontova street', 14);
insert into Main."Address" values (42, 'Lermontova street', 14);
insert into Main."Address" values (43, 'Kirillova street', 15);
insert into Main."Address" values (44, 'Kirillova street', 15);
insert into Main."Address" values (45, 'Kirillova street', 15);
insert into Main."Address" values (46, 'Pudovkina street', 16);
insert into Main."Address" values (47, 'Pudovkina street', 16);
insert into Main."Address" values (48, 'Pudovkina street', 16);
insert into Main."Address" values (49, 'Salmakieva street', 17);
insert into Main."Address" values (50, 'Salmakieva street', 17);
insert into Main."Address" values (51, 'Salmakieva street', 17);
insert into Main."Address" values (52, 'Joorkulova street', 18);
insert into Main."Address" values (53, 'Joorkulova street', 18);
insert into Main."Address" values (54, 'Joorkulova street', 18);
insert into Main."Address" values (55, 'Umutalieva street', 19);
insert into Main."Address" values (56, 'Umutalieva street', 19);
insert into Main."Address" values (57, 'Umutalieva street', 19);
insert into Main."Address" values (58, 'Datka street', 20);
insert into Main."Address" values (59, 'Datka street', 20);
insert into Main."Address" values (60, 'Datka street', 20);

insert into Main."Company" values (1, 'AVA', '2017-07-07 12:12:01', 1);
insert into Main."Company" values (2, 'ZORO', '2019-01-01 12:12:02', 2);
insert into Main."Company" values (3, 'ToRO', '1998-01-04 13:13:04', 3);
insert into Main."Company" values (4, 'TRUP', '2016-05-15 14:12:05', 4);
insert into Main."Company" values (5, 'DOTCOM', '2013-05-14 12:13:06', 6);
insert into Main."Company" values (6, 'DARcom', '2014-01-12 20:13:14', 7);
insert into Main."Company" values (7, 'DURcom', '2015-04-04 20:20:21', 8);
insert into Main."Company" values (8, 'ZARcom', '2014-04-04 01:01:01', 8);
insert into Main."Company" values (9, 'PII', '2010-01-01 01:02:01', 9);
insert into Main."Company" values (10, 'Fuch', '2015-01-01 13:50:01', 10);

insert into Main."Staff" values (1, 'Avazbekov Nadyr', 'M', to_date('05/04/1996' ,  'dd/mm/yyyy/'));
insert into Main."Staff" values (2, 'Dastan Daniiar uulu', to_date('M', '06/02/1997', 'dd/mm/yyyy'));
insert into Main."Staff" values (3, 'Urakunov Ulan', 'M', to_date('02/02/1998', 'dd/mm/yyyy'));
insert into Main."Staff" values (4, 'Dulan Esenzhanov', 'M', to_date('05/04/1992', 'dd/mm/yyyy'));
insert into Main."Staff" values (5, 'Zalkar Ibraimov', 'M', to_date('01/01/1999', 'dd/mm/yyyy'));
insert into Main."Staff" values (6, 'Abdulla Harsanov', 'M', to_date('15/06/1997', 'dd/mm/yyyy'));
insert into Main."Staff" values (7, 'Raiymgul Esenova', 'F', to_date('03/03/1995', 'dd/mm/yyyy'));
insert into Main."Staff" values (8, 'Ryskul Asemova', 'F', to_date('15/05/1997', 'dd/mm/yyyy'));
insert into Main."Staff" values (9, 'Kanybek Israilov', 'M', to_date('09/09/1995', 'dd/mm/yyyy'));l
insert into Main."Staff" values (10, 'Zhyldyz Kydyrbaeva' 'F' , to_date('15/03/1999', 'dd/mm/yyyy'));
insert into Main."Staff" values (11, 'Aruuker Daniiarova', 'F', to_date('01/10/1998', 'dd/mm/yyyy'));
insert into Main."Staff" values	(12, 'Ulkan Abdraimova', 'F', to_date('19/06/1996', 'dd/mm/yyyy'));
insert into Main."Staff" values	(13, 'Gulnaz Keneshova', 'F', to_date('29/04/1992', 'dd/mm/yyyy'));
insert into Main."Staff" values (14, 'Davran Hasanov', 'M', to_date('17/10/1992', 'dd/mm/yyyy'));
insert into Main."Staff" values (15, 'Anvar Akimov', 'M', to_date('13/10/1997', 'dd/mm/yyyy'));
insert into Main."Staff" values (16, 'Nurji Mairambekov', 'M', to_date('23/12/1996', 'dd/mm/yyyy'));
insert into Main."Staff" values (17, 'Zhanar Askarbaev', 'M' to_date('01/01/1993', 'dd/mm/yyyy'));
insert into Main."Staff" values (18, 'Erkin Bayalinov', 'M', to_date('09/09/1994', 'dd/mm/yyyy'));
insert into Main."Staff" values (19, 'Maksat Zamyrbekov', 'M', to_date('01/01/1998', 'dd/mm/yyyy'));
insert into Main."Staff" values (20, 'Almaz Abdraimov', 'M', to_date('14/09/1999', 'dd/mm/yyyy'));											