CREATE DATABASE mastery;

USE mastery;


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    city VARCHAR(30),
    age INT,
    experience INT
);


INSERT INTO employees (emp_id, name, department, salary, city, age, experience) VALUES
(1, 'Arjun', 'Sales', 45000, 'Bangalore', 28, 3),
(2, 'Meera', 'HR', 52000, 'Mysore', 32, 6),
(3, 'Ravi', 'Sales', 38000, 'Bangalore', 25, 2),
(4, 'Suma', 'IT', 60000, 'Chennai', 30, 5),
(5, 'Kiran', 'HR', 48000, 'Mysore', 27, 3),
(6, 'Pooja', 'IT', 62000, 'Bangalore', 29, 4),
(7, 'Ramesh', 'Finance', 55000, 'Hyderabad', 34, 7),
(8, 'Sneha', 'IT', 72000, 'Chennai', 31, 6),
(9, 'Varun', 'Sales', 41000, 'Bangalore', 26, 2),
(10, 'Divya', 'Finance', 58000, 'Hyderabad', 33, 8),
(11, 'Nisha', 'Marketing', 46000, 'Pune', 24, 1),
(12, 'Harish', 'Marketing', 49000, 'Pune', 29, 4),
(13, 'Manju', 'HR', 53000, 'Chennai', 35, 9),
(14, 'Shashi', 'IT', 75000, 'Bangalore', 28, 5),
(15, 'Geetha', 'Sales', 39500, 'Hyderabad', 23, 1),
(16, 'Rahul', 'IT', 68000, 'Mysore', 33, 8),
(17, 'Praveen', 'Finance', 62000, 'Bangalore', 31, 5),
(18, 'Kavya', 'HR', 51000, 'Pune', 29, 4),
(19, 'Ajay', 'Marketing', 53000, 'Chennai', 34, 7),
(20, 'Latha', 'Finance', 47000, 'Mysore', 26, 2);

SELECT * FROM employees;


-- 🟦 LEVEL 1 — SELECT (Basic)

-- Display all columns from the employees table.
SELECT * FROM employees;

-- Display only name, department, and salary.
SELECT name, department FROM employees;

-- Display unique department names.
SELECT DISTINCT department FROM employees;

-- Display all employees working in Bangalore.
SELECT * FROM employees
WHERE LOWER(city) = 'Bangalore';

-- Display names of employees older than 30.
SELECT name FROM employees
WHERE age > 30;

-- Display all employees who have more than 3 years of experience.
SELECT * FROM employees 
WHERE  experience > 3;

-- Display names and ages of employees whose salary is above 50,000.
SELECT name, age FROM employees
WHERE salary > 50000;

-- Display employees from Mysore or Chennai
SELECT * FROM employees 
WHERE city IN ('mysore','chennai');