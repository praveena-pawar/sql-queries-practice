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










