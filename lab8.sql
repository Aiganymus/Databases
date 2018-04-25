-- CREATE DATABASE lab8;

-- CREATE TABLE salesman(
-- 	salesman_id SERIAL PRIMARY KEY,
-- 	name VARCHAR(255),
-- 	city VARCHAR(50),
-- 	comission REAL
-- );

-- CREATE TABLE customers(
-- 	customer_id SERIAL PRIMARY KEY,
-- 	cust_name VARCHAR(255),
-- 	city VARCHAR(50),
-- 	grade INTEGER,
-- 	salesman_id INTEGER REFERENCES salesman
-- );

-- CREATE TABLE orders(
-- 	ord_no SERIAL PRIMARY KEY,
-- 	purch_amt REAL,
-- 	ord_date DATE,
-- 	customer_id INTEGER REFERENCES customers,
-- 	salesman_id INTEGER REFERENCES salesman
-- );

-- CREATE USER junior_dev;

-- CREATE VIEW salesmen_ny AS 
-- 	SELECT * FROM salesman WHERE city = 'New York';

-- CREATE VIEW show_names AS 
-- 	SELECT ord_no, name, cust_name FROM orders, customers, salesman
-- 		WHERE orders.customer_id = customers.customer_id
-- 		AND orders.salesman_id = salesman.salesman_id;

-- GRANT ALL PRIVILEGES ON show_names TO junior_dev;	

-- CREATE VIEW highest_grade AS 
-- 	SELECT * FROM customers 
-- 		WHERE grade = (SELECT max(grade) FROM customers);

-- GRANT SELECT ON highest_grade TO junior_dev;

-- CREATE VIEW salesman_num AS 
-- 	SELECT count(*), city FROM salesman 
-- 	GROUP BY city;

-- CREATE VIEW has_cust AS 
-- 	SELECT salesman_id FROM customers
-- 	GROUP BY salesman_id
-- 	HAVING count(customer_id) > 1;

-- CREATE ROLE intern;

-- GRANT junior_dev TO intern;




































