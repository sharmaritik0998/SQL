select * from Employees;

-- Employees with age more than 30
SELECT * FROM Employees where age>30;

-- Employess with age more than 30 from sales 
SELECT * FROM Employees where age>30 and department = 'Sales'; 

-- Employees with age in range 30-40 age 
SELECT * FROM Employees where age>30 and age<=40;
SELECT * FROM Employees where age between 30 and 40;

use employees;

-- Employees frm sales or marketing 
select * from Employees where department = 'Marketing' or department = 'Sales';

-- Searching for name starting with j
select * from Employees where name like 'j%';

-- Getting only null data of department 
select * from Employees where department is null;

-- Getting not null data 
select * from Employees where department is not null;

-- 

select * from Employees where department is not null and age is not null;


-- Getting data using IN Command 

select * from Employees where department in ('Sales', 'Marketing');

-- Getting data using Not In Command 
select * from Employees where department not in ('Sales', 'Marketing');


-- maketing and sales which is greater than 30 

select * from Employees where department in ('Sales', 'Marketing') and age>30;

