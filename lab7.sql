--Create tables.
CREATE TABLE countries
(
    location_id SERIAL PRIMARY KEY,
    name VARCHAR (255)
);
CREATE TABLE departments 
(
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR (255),
    budget INTEGER,
    location_id INTEGER REFERENCES countries
);
CREATE TABLE employees 
(
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR (255),
    surname VARCHAR (255),
    email VARCHAR (255),
    phone_number VARCHAR (255),
    salary INTEGER,
    manager_id INTEGER REFERENCES employees, 
    department_id INTEGER REFERENCES departments   
);
--Insert values into countries. 
INSERT INTO countries (location_id, name) VALUES (1,'Kazakhstan');
INSERT INTO countries (location_id, name) VALUES (2,'Russian');
INSERT INTO countries (location_id, name) VALUES (3,'USA');
--Insert values into departments.
INSERT INTO departments (department_id, department_name, budget, location_id) VALUES (1,'IT',12000, 1);
INSERT INTO departments (department_id, department_name, budget, location_id) VALUES (2,'Service',5000, 3);
INSERT INTO departments (department_id, department_name, budget, location_id) VALUES (3,'Management',50000, 2);
--Insert values into employees.
INSERT INTO employees (employee_id, name, surname, email, phone_number, salary, manager_id, department_id) VALUES (1,'Julian','Green','jgreen@gmail.com','+77773333251', 35000,1,3);
INSERT INTO employees (employee_id, name, surname, email, phone_number, salary, manager_id, department_id) VALUES (2,'Brad','Davis','bdavis@gmail.com','+77772233251', 255000,1,1);
INSERT INTO employees (employee_id, name, surname, email, phone_number, salary, manager_id, department_id) VALUES (3,'Graham','Zusi','gzusi@gmail.com','+77773123511', 75000,2,2);
--Create index for queries like below: SELECT * FROM countries WHERE name = ‘string’;
CREATE INDEX index_name ON countries(name);
--Create index for queries like below: SELECT * FROM employees WHERE name = ‘string’ AND surname = ‘string’;
CREATE INDEX index_name_surname ON employees(name, surname);
--Create unique index for queries like below: SELECT * FROM employees WHERE salary < value1 AND salary > value2;
CREATE UNIQUE INDEX index_salary ON employees(salary);
--Create index for queries like below: SELECT * FROM employees WHERE substring(name from 1 for 4) = ‘abcd’;
CREATE INDEX index_substring ON employees(substring(employees.name from 1 for 4));
--Create index for queries like below: SELECT * FROM employees e JOIN departments d ON d.department_id = e.department_id WHERE d.budget > value2 AND e.salary < value2;
CREATE INDEX index_join_employee ON employees (department_id, salary);
CREATE INDEX index_join_department ON departments (department_id, budget);
