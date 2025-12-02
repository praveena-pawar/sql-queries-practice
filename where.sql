
-- LEVEL 2 — WHERE (Filtering)

-- Display employees from the IT department with salary above 60,000.
SELECT * FROM employees 
WHERE department = 'it' and salary > 60000;


-- Display employees whose age is between 25 and 30.
SELECT * FROM employees 
WHERE age  BETWEEN 25 and 30;	


-- Display employees who work in Bangalore and have salary less than 50,000.
SELECT * FROM employees 
WHERE city = 'bangalore' and salary < 50000;

-- Display employees whose department is not 'Sales'.
SELECT * FROM employees 
WHERE department != 'sales';

-- Display employees whose experience is 5 years or more.
SELECT * FROM employees 
WHERE experience >= 5;



-- Display employees with salary between 40,000 and 55,000.
SELECT * FROM employees 
WHERE salary BETWEEN 40000 and 55000;


-- Display employees not from the cities Bangalore, Mysore, or Chennai.
SELECT * FROM employees 
WHERE city NOT IN ('Bangalore','Mysore','Chennai');