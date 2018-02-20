CREATE DATABASE lab2;

CREATE TABLE countries (
	country_id serial PRIMARY KEY,
	country_name varchar(50),
	region_id int,
	population int
);

INSERT INTO countries(country_name, region_id, population) 
	VALUES ('Kazakhstan', 1, 17000);

INSERT INTO countries(country_id, country_name)
	VALUES(10, 'Japan');

UPDATE countries SET region_id = NULL;

INSERT INTO countries(country_name, region_id, population) VALUES
	('USA', 2, 123),
	('UK', 3, 234424),
	('Russia', 5, 424234);

ALTER TABLE countries 
	ALTER COLUMN country_name SET DEFAULT 'Kazakhastan';

UPDATE countries SET country_name = DEFAULT;

INSERT INTO countries DEFAULT VALUES;

CREATE TABLE countries_new (LIKE countries);

INSERT INTO countries_new SELECT * FROM countries;

UPDATE countries_new SET region_id = 1
	WHERE region_id IS NULL;

UPDATE countries_new SET population = population*1.1 
	RETURNING country_name, population AS New_Population;

DELETE FROM countries WHERE population < 100000;

DELETE FROM countries_new USING countries 
	WHERE countries.country_id = countries_new.country_id
	RETURNING countries_new.*;

DELETE FROM countries RETURNING *;

