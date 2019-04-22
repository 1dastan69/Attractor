create table citizen(
	id int not null primary key unique,
	full_name varchar(50),
	gender varchar(1), 
	birth_date date);


select * from citizen
				   
where gender ='F' and birth_date between '1970/01/01' and '2001/01/01' 


insert into citizen values (1, 'Dastan Daniiar uulu', 'M', to_date('1997/02/06', 'yyyy/mm/dd'));
insert into citizen values (2, 'Zakirbaev Daniiar', 'M', to_date('1972/02/03', 'yyyy/mm/dd'));	
insert into citizen values (3, 'Dinara Asnalieva', 'F', to_date('1998/04/14', 'yyyy/mm/dd'));
insert into citizen values (4, 'Dinasdf asdf', 'M', to_date('1998/12/16', 'yyyy/mm/dd'));
insert into citizen values (5, 'Qwery Name', 'F', to_date('1962/09/03', 'yyyy/mm/dd'));	
insert into citizen values (6, 'Asdfg Name', 'F', to_date('2000/04/14', 'yyyy/mm/dd'));																
insert into citizen values (7, 'Tini Name', 'M', to_date('2006/02/06', 'yyyy/mm/dd'));
insert into citizen values (8, 'Oral Name', 'M', to_date('2005/02/03', 'yyyy/mm/dd'));	
insert into citizen values (9, 'Oskar Name', 'F', to_date('2001/04/14', 'yyyy/mm/dd'));																
