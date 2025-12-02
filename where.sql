
-- LEVEL 2 — WHERE (Filtering)

-- Display employees from the IT department with salary above 60,000.
SELECT * FROM employees 
WHERE department = 'it' and salary > 60000;


-- Display employees whose age is between 25 and 30.
SELECT * FROM employees 
WHERE age  BETWEEN 25 and 30;	
