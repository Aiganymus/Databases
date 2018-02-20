CREATE DATABASE lab1;

CREATE TABLE users (
	id serial,
	firstname varchar(50),
	lastname varchar(50)
);

ALTER TABLE users 
	ADD COLUMN isadmin smallint CHECK (isadmin IN (0, 1));

ALTER TABLE users 
	ALTER COLUMN isadmin SET DEFAULT 0; 

ALTER TABLE users ADD PRIMARY KEY(id); 

CREATE TABLE tasks (
	id serial,
	name char(50),
	user_id smallint
);

DROP TABLE tasks;