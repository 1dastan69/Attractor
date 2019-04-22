create or replace function Main."Staff"() returns table (fullname varchar(50), staff_number int)
as $$
select fullname, staff_number from Main."Staff";
$$
language sql;



