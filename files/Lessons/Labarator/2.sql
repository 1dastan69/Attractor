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