select * from city
select * from company
select * from citizen

insert into city values (312, 'Bishkek', 3000000);
insert into city values (412, 'New-York', 12000000);
insert into city values (512, 'Almaty', 2000900);

insert into company values (5858, 'Telecom', 312);
insert into company values (1431, 'Rahat sweet', 512);
insert into company values (7482, 'IBM', 412);

insert into citizen values (918263, 'Conor McGregor', 'M', to_date('14/11/1984', 'DD/MM/YYYY'));
insert into citizen values (847326, 'Zigaro Cano', 'M', to_date('14/11/1974', 'DD/MM/YYYY'));
insert into citizen values (177172, 'Tom Hardy', 'M', to_date('14/11/1934', 'DD/MM/YYYY'));
