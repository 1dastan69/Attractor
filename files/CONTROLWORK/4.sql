------------------------------------------------------------
SELECT fullname, gender, birth_date,customer_status, account_name, account_number, open_date, account_status
FROM Bank."Account"------------------1
INNER JOIN Bank."Customer"
ON Bank."Customer".customer_number = Bank."Account".customer_number;	
-----------------------------------------------------------

--------------------------------------
SELECT fullname, gender, birth_date,customer_status, address
FROM library."Address"-----2
INNER JOIN Bank."Customer"
ON Bank."Customer".customer_number = Library."Address".customer_number;	
------------------------------------------------

---------------------------------
SELECT fullname, gender, birth_date,customer_status, hobby_name
FROM Library."Hobby"-----------------------3
INNER JOIN Bank."Customer" ON Bank."Customer".customer_number = Library."Hobby".customer_number;
-----------------------------------------

------------------------------------------------
select*from Bank."Customer"
inner join Bank."Account" 
on Bank."Customer".customer_number=Bank."Account".customer_number													   
inner join Library."Address" 
on Bank."Customer".customer_number=Library."Address".customer_number	---------4												   
inner join Library."Hobby"
on Bank."Customer".customer_number=Library."Hobby".customer_number;
--------------------------------------------

--------------------------------------------
SELECT DISTINCT fullname,customer_number FROM  Bank."Customer"; ------5
--------------------------------------------
