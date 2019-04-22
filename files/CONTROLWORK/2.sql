create table Bank."Customer"(customer_number int not null primary key,
					  fullname varchar(50), gender varchar(1),
					  birth_date date,customer_status varchar(50));
create table Bank."Account"(account_number int not null primary key unique, account_name varchar(50), open_date timestamp,
					 account_status varchar(50),customer_number int, foreign key (customer_number)
					 references bank."Customer"(customer_number));
create table Library."Address"(address_number int not null primary key unique, address varchar(50), open_date timestamp,
					customer_number int, foreign key(customer_number) references bank."Customer"(customer_number));
create table Library."Hobby"(hobby_number int not null primary key unique, hobby_name varchar(50),
							 open_date timestamp, customer_number int, foreign key(customer_number) 
							references bank."Customer"(customer_number));