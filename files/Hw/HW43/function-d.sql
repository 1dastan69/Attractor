create or replace function Main."Staff"() returns table (birth_date date)
as $$
select birth_date from Main."Staff";
$$
language sql;



