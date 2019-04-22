create database Lesson38;

CREATE TABLE basket_a (id INT PRIMARY KEY,fruit VARCHAR (100) NOT NULL);

CREATE TABLE basket_b (id INT PRIMARY KEY,fruit VARCHAR (100) NOT NULL);


select * from basket_a


alter table basket_b drop constraint basket_b_pkey;

update basket_b
set id = 2
where fruit = 'Orange'

select * from basket_b


INSERT INTO basket_a (id, fruit) VALUES (1, 'Apple'), (2, 'Orange'), (3, 'Banana'), (4, 'Cucumber');

INSERT INTO basket_b (id, fruit) VALUES (1, 'Orange'), (2, 'Apple'), (3, 'Watermelon'), (4, 'Pear');

SELECT a.id id_a,
		a.fruit fruit_a,
		b.id id_b,
    	b.fruit fruit_b
FROM basket_a a 
INNER JOIN basket_b b ON a.fruit = b.fruit or (a.id =3 and  b.id = 3)
where a.id > 0 and b.id >0;
