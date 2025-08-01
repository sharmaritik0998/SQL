drop table if exists employee;
create table employee (
	employee_id INT,
    name VARCHAR(50) not null,
    age INT check (age>=18),
    department VARCHAR(50));
select * from employee;

-- Adding new column in the Table
alter table employee add column mail varchar(50);
select * from employee;

-- Renaming the  column in the Table
alter table employee rename column employee_id to id;
select * from employee;

-- Drop the  column in the Table
alter table employee drop column age;
select * from employee;

-- Adding  Column with default value 
alter table employee add column  department varchar(50) default 'unknown';
select * from employee;

