-- CREATE DATABASE lab4;
-- CREATE TABLE warehouses(
-- 	code integer PRIMARY KEY, 
-- 	location varchar(255),
-- 	capacity integer
-- );
-- CREATE TABLE boxes(
-- 	code char(4) PRIMARY KEY, 
-- 	contents varchar(255),
-- 	value real, 
-- 	warehouse integer REFERENCES warehouses(code)
-- );
-- SELECT * FROM warehouses;
-- SELECT * FROM boxes WHERE contents = 'Rocks';
-- SELECT DISTINCT ON(warehouse) * FROM boxes;
-- SELECT count(code), contents FROM boxes GROUP BY contents;
-- SELECT count(code), contents FROM boxes GROUP BY contents HAVING contents = 'Rocks';
-- INSERT INTO warehouses VALUES(6, 'New York', 5);
-- INSERT INTO boxes VALUES('H5RT', 'Rocks', 120, 1);
-- UPDATE boxes SET value = value * 0.8 WHERE code = (SELECT code FROM boxes ORDER BY value LIMIT 1 OFFSET 2);
-- DELETE FROM boxes WHERE value < 150;
-- DELETE FROM boxes USING warehouses 
-- 	WHERE boxes.warehouse = warehouses.code AND warehouses.location = 'New York'
-- 	RETURNING boxes.code, warehouses.code;

















































