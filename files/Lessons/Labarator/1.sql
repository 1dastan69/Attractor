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

create table Main."Staff" (Staff_number int not null primary key, fullname varchar(50),
						   gender varchar(1), birth_date date);
create table Main."Company" (company_number int not null primary key, company_name varchar(50),
							open_date timestamp, staff_number int, foreign key(staff_number)
							references Main."Staff"(staff_number));
create table Main."Address" (address_number int not null primary key, address varchar(50), stuff_number int,
							foreign key(staff_number)
							references Main."Staff"(staff_number));
create table Main."Salary"( salary_id int not null primary key, amount int, salary_date timestamp, 
						   staff_number int, foreign key(staff_number)
						  references Main."Staff"(staff_number));
												  

													