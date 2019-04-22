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

select * from Library."Hobby";
insert into Library."Hobby" values (21, 'play football', '2004-01-02 00:13:13', 1),
										(22, 'read books', '2002-10-01 00:14:13', 2),
										(23, 'play PC', '2001-10-10 00:13:20', 3),
										(24, 'driving car', '2004-04-03 13:14:20', 4),
										(25, 'sport running', '2006-01-01 00:14:14', 5),
										(26, 'clear street', '2008-10-01 00:15:15', 6);	
													   
insert into Bank."Account" values (1, 'ABC', '2008-01-01 00:00:01', 'fail', 1),
								    (2, 'ABS', '2001-01-01 13:13:01', 'passed', 2),
								    (3, 'ADS', '2004-11-04 00:13:13', 'fail', 3),
									(4, 'QWE', '2010-10-04 00:41:13', 'passed', 4),
									(5, 'RTY', '2014-04-10 20:13:14', 'fail', 5),
									(6, 'DOC', '2014-01-01 00:04:04', 'passed', 6);						   
insert into Bank."Customer" values (1, 'Dastan Zakirbaev', 'M', to_date('1997/02/06', 'yyyy/mm/dd'), 'Developer'),
									 (2, 'Aliya Ulanova', 'F', to_date('1993/04/14', 'yyyy/mm/dd'), 'Mini Boss'),
									 (3, 'Zukhra Zaiymova', 'F', to_date('1998/03/15', 'yyyy/mm/dd'), 'Cheff'),
									 (4, 'Abdysomat Uraliev', 'M', to_date('1991/09/24', 'yyyy/mm/dd'), 'Senior devop'),
									 (5, 'Sulaiman Azyrbekov', 'M', to_date('1994/03/14', 'yyyy/mm/dd'), 'Coach'),
									 (6, 'Raiym Zalkarov', 'M', to_date('1997/06/14', 'yyyy/mm/dd'), 'Student');
													   
