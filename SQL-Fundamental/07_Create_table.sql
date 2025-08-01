drop table if exists employee;
-- creating the table 
create table if not exists employee(employee_id int, name varchar(50), age int, department varchar(50));

-- Create table with constraints 
drop table if exists employee;
create table employee (
	employee_id INT,
    name VARCHAR(50) not null,
    age INT check (age>=18),
    department VARCHAR(50));
    
    
-- display the table 
select * from employee;

drop table if exists employee;
create table employee (
	employee_id SERIAL,
    name VARCHAR(50) not null,
    age INT check (age>=18),
    department VARCHAR(50),
    hire_date date);
    
    
-- display the table 
select * from employee
