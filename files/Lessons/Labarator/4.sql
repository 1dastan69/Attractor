SELECT fullname, gender, amount
FROM Main."Staff"
Left JOIN Main."Salary"
ON Main."Salary".amount = Main."Staff".Staff_number;
----------------------------------------------------

SELECT fullname, gender, address
FROM Main."Staff"
left JOIN Main."Address"
ON Main."Address".Address = Main."Staff".fullname;		
-------------------------------------------------------

select*from Main."Staff"
inner join Main."Salary" 
on Main."Staff".staff_number=Main."Salary".amount													   
inner join Main."Address" 
on Main."Staff".staff_number=Main."Address".staff_number
inner join Main."Company"
on Main."Staff".staff_number=Main."Company".staff_number;
------------------------------------------------------------
