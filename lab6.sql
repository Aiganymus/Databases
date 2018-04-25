-- CREATE TABLE locations (
-- 	location_id SERIAL PRIMARY KEY,
-- 	street_address VARCHAR(25),
-- 	postal_code VARCHAR(12),
-- 	city VARCHAR(30),
-- 	state_province VARCHAR(12)
-- )

-- CREATE TABLE departments (
-- 	department_id SERIAL PRIMARY KEY,
-- 	department_name VARCHAR(50) UNIQUE,
-- 	budget INTEGER,
-- 	location_id INTEGER REFERENCES locations
-- )

-- CREATE TABLE employees (
-- 	employee_id SERIAL PRIMARY KEY,
-- 	first_name VARCHAR(50),
-- 	last_name VARCHAR(50),
-- 	email VARCHAR(50),
-- 	phone_number VARCHAR(50), 
-- 	salary INTEGER,
-- 	manager_id INTEGER REFERENCES employees,
-- 	department_id INTEGER REFERENCES departments
-- )

-- CREATE TABLE job_grades (
-- 	grade CHAR(1),
-- 	lowest_salary INTEGER,
-- 	highest_salary INTEGER
-- )

-- SELECT first_name, last_name, departments.department_name, locations.city, locations.state_province FROM employees
-- 	JOIN departments USING (department_id)
-- 	JOIN locations USING(location_id);

-- SELECT first_name, last_name, salary, grade FROM employees
-- 	JOIN job_grades ON salary >= lowest_salary AND salary <= highest_salary;
	
-- SELECT empl.first_name, empl.last_name, empl.salary FROM employees AS empl 
-- 	JOIN employees ON employees.employee_id = 120 AND empl.salary < employees.salary;

-- SELECT empl.first_name, employees.first_name AS manger_name FROM employees AS empl 
--   	JOIN employees ON empl.manager_id = employees.employee_id;
	
-- SELECT first_name, last_name, employees.department_id, departments.department_name FROM employees
-- 	LEFT JOIN departments USING(department_id)














