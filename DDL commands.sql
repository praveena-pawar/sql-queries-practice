CREATE DATABASE DDL;

USE ddl;

CREATE TABLE supplier(
s_id INT PRIMARY KEY,
s_name VARCHAR(10),
branch VARCHAR(10),
city VARCHAR(20),
phone BIGINT(10)
);

INSERT INTO supplier (s_id, s_name, branch, city, phone) VALUES
(1, 'Ramesh', 'North', 'Delhi', 9876543210),
(2, 'Suresh', 'South', 'Mumbai', 9823456789),
(3, 'Priya', 'East', 'Kolkata', 9123456780),
(4, 'Anita', 'West', 'Pune', 9765432109),
(5, 'Vikas', 'Central', 'Bangalore', 9945671234),
(6, 'Neha', 'North', 'Jaipur', 9786543211),
(7, 'Raj', 'South', 'Chennai', 9887766554),
(8, 'Sneha', 'East', 'Patna', 9012345678),
(9, 'Amit', 'West', 'Ahmedabad', 9090909090),
(10, 'Kiran', 'Central', 'Hyderabad', 9123450987);

SELECT * FROM supplier;


CREATE TABLE part(
p_id INT PRIMARY KEY,
p_name VARCHAR(10),
color VARCHAR(10),
price DECIMAL(10,2)
);

INSERT INTO part (p_id, p_name, color, price) VALUES
(1, 'Bolt', 'Silver', 5.50),
(2, 'Nut', 'Gray', 3.75),
(3, 'Screw', 'Black', 2.25),
(4, 'Washer', 'Silver', 1.50),
(5, 'Gear', 'Gold', 45.00),
(6, 'Bearing', 'Steel', 60.25),
(7, 'Pipe', 'Red', 25.00),
(8, 'Valve', 'Blue', 75.90),
(9, 'Wheel', 'Black', 120.00),
(10, 'Cap', 'White', 15.40);

SELECT * FROM part;


CREATE TABLE supplies (
  s_id INT,
  p_id INT,
  qty INT,
  date_supplied DATE,
  PRIMARY KEY (s_id, p_id),
  FOREIGN KEY (s_id) REFERENCES supplier(s_id),
  FOREIGN KEY (p_id) REFERENCES part(p_id)
);

INSERT INTO supplies (s_id, p_id, qty, date_supplied) VALUES
(1, 1, 200, '2025-01-05'),
(1, 4, 150, '2025-01-15'),
(2, 3, 300, '2025-02-10'),
(2, 7, 80, '2025-02-22'),
(3, 2, 400, '2025-03-12'),
(4, 6, 90, '2025-04-08'),
(5, 5, 60, '2025-05-18'),
(6, 8, 100, '2025-06-25'),
(7, 9, 45, '2025-07-09'),
(8, 10, 120, '2025-08-20');

SELECT * FROM supplies;

      
   --    SQL QUERY ON JOINS
      
-- Show all parts that have been supplied by any supplier.
SELECT p_name FROM part p
INNER JOIN supplies s
ON p.p_id = s.p_id
INNER JOIN supplier r
ON r.s_id = s.s_id;



-- List supplier names who have supplied more than 100 units of any part.
SELECT s_name FROM supplier s
INNER JOIN supplies p
ON s.s_id = p.s_id
WHERE qty > 100;


-- Display supplier name, part name, quantity, and date supplied.
SELECT s_name, p_name, qty, date_supplied FROM part p
INNER JOIN supplies s
ON p.p_id = s.p_id
INNER JOIN supplier a
ON a.s_id = s.s_id;


-- Show all suppliers who supplied the part “Bolt”.
select s_name from supplier s
inner join supplies a
on s.s_id = a.s_id
inner join part p
on p.p_id = a.p_id
where p_name = "bolt";


-- List all parts that have been supplied by any supplier.
SELECT p_name FROM part p
INNER JOIN supplies s
ON p.p_id = s.p_id;



-- Show supplier names and the total quantity they have supplied (sum of qty).
SELECT s_name, SUM(qty) as totalquantity FROM supplier s
LEFT JOIN supplies a
ON s.s_id = a.s_id
GROUP BY s_name ;



-- Display all suppliers along with the parts they supplied (including suppliers who haven’t supplied anything).
SELECT  s_name, p_name FROM supplier s
LEFT JOIN supplies a
on a.s_id = s.s_id
LEFT JOIN part p
ON p.p_id = a.p_id;





-- 🔹 Aggregate & Conditional Queries

-- Find supplier names who have supplied more than 100 units of any part.
SELECT  DISTINCT s_name FROM supplier s
INNER JOIN supplies a
ON s.s_id = a.s_id 
WHERE qty > 100;


-- Show each part name and how many suppliers have supplied it.
SELECT p_name, COUNT(s_name) FROM part p
LEFT JOIN supplies s
ON p.p_id = s.p_id
LEFT JOIN supplier a
ON s.s_id = a.s_id
GROUP BY p_name ;




-- Find the part with the highest price that has been supplied.
SELECT p_name, price FROM part p
INNER JOIN supplies s
ON p.p_id = s.p_id
ORDER BY price DESC
LIMIT 1;





-- Show supplier names who have supplied parts costing more than ₹100.
SELECT DISTINCT s.s_name
FROM supplier s
INNER JOIN supplies sp ON s.s_id = sp.s_id
INNER JOIN part p ON sp.p_id = p.p_id
WHERE p.price > 100;

















-- Show each part name and how many suppliers have supplied it.

-- Find the part with the highest price that has been supplied.

-- List the parts that have been supplied more than 2 times.

-- Show supplier names who have supplied parts costing more than ₹100.
