create database Financial;

create user adminuser WITH
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

create schema Bank;
create schema Library;

create table Bank."Customer"(customer_number int not null primary key,
					  fullname varchar(50), gender varchar(1),
					  birth_date date,customer_status varchar(50));
create table Bank."Account"(account_number int not null primary key, account_name varchar(50), open_date timestamp,
					 account_status varchar(50),customer_number int, foreign key(customer_number)
					 references bank."Customer"(customer_number));
create table Library."Address"(address_number int not null primary key, address varchar(50), open_date timestamp,
					customer_number int, foreign key(customer_number) references bank."Customer"(customer_number));
create table Library."Hobby"(hobby_number int not null primary key, hobby_name varchar(50),
							 open_date timestamp, customer_number int, foreign key(customer_number) 
							references bank."Customer"(customer_number));