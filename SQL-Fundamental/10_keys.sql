use employees;

-- Definig primary key
drop table if exists Employees;
create table if not exists Employees( employee_id  serial primary key, name varchar(50),department varchar(50));

select * from Employees;

-- 2. Composite key

drop table if exists Orders;
create table if not exists Orders( order_id  serial, customer_id int,order_date date, primary key(order_id, customer_id));

select * from Orders;


-- 3. Foreign Key 
DROP TABLE IF EXISTS Orders;

CREATE TABLE IF NOT EXISTS Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Employees(employee_id)
);

SELECT * FROM Orders;

-- 4. Unique Constraints
drop table if exists Employees;
create table if not exists Employees( employee_id  serial primary key, name varchar(50), email varchar(50) UNIQUE, department varchar(50));

select * from Employees;

-- 5. Unique Constraints as composite key 
drop table if exists Employees;
create table if not exists Employees( employee_id  serial primary key, name varchar(50), email varchar(50) UNIQUE,
										phone_number int unique,  department varchar(50), unique(email, phone_number));

select * from Employees;


-- 6. check constraint 
drop table if exists Employees;
create table if not exists Employees( employee_id  serial primary key, name varchar(50),age int check(age>=18), email varchar(50) UNIQUE,
										phone_number bigint unique,  department varchar(50), unique(email, phone_number));

select * from Employees;


-- Insert sample data into Employees
INSERT INTO Employees (name, age, email, phone_number, department) VALUES
('Ritik Sharma', 21, 'ritik.sharma@example.com', 9876543210, 'IT'),
('Ananya Singh', 25, 'ananya.singh@example.com', 9876543211, 'HR'),
('Arjun Mehta', 30, 'arjun.mehta@example.com', 9876543212, 'Finance'),
('Priya Verma', 28, 'priya.verma@example.com', 9876543213, 'Marketing'),
('Vikram Rao', 35, 'vikram.rao@example.com', 9876543214, 'Sales');

-- Check the data
SELECT * FROM Employees;



