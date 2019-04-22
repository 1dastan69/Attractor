select * from Course_Student
select * from Student											   
select * from Course
											   
insert into Course values (84321, 'psychology', 'human thinking');
insert into Course values (84923, 'math', 'algorithms');
insert into Course values (56472, 'English languages', 'introduction');

insert into Student values (98756235, 'Zakirbaev Almas');
insert into Student values (43215789, 'Dmitriy Sergeevich');											  
insert into Student values (18974586, 'Asanova Alina');
											   
insert into Course_Student values (98756235, 56472, 56472, to_date('14/11/1999', 'DD/MM/YYYY'));											   
insert into Course_Student values (15123412, 51234, 12345, to_date('14/11/1994', 'DD/MM/YYYY'));
insert into Course_Student values (31241241, 41223, 12345, to_date('14/11/1998', 'DD/MM/YYYY'));
