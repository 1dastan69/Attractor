create table Main."Staff" (Staff_number int not null primary key , fullname varchar(50),
						   gender varchar(1), birth_date date,company_number int references Main."Company"(company_number));
create table Main."Company" (company_number int not null primary key unique, company_name varchar(50),
							open_date timestamp, staff_number int, foreign key(staff_number)
							references Main."Staff"(staff_number));
create table Main."Address" (address_number int not null primary key unique, address varchar(50), stuff_number int,
							foreign key(staff_number)
							references Main."Staff"(staff_number));
create table Main."Salary"( salary_id int not null primary key unique, amount int, salary_date timestamp, 
						   staff_number int, foreign key(staff_number)
						  references Main."Staff"(staff_number));


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
