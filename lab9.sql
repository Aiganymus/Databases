-- CREATE TABLE Reviewer(
-- 	rID SERIAL PRIMARY KEY,
-- 	name VARCHAR(255)
-- );

-- CREATE TABLE Movie(
-- 	mID SERIAL PRIMARY KEY, 
-- 	title VARCHAR(255),
-- 	year INTEGER, 
-- 	director VARCHAR(255)
-- );

-- CREATE TABLE Rating(
-- 	rID INTEGER REFERENCES Reviewer,
-- 	mID INTEGER REFERENCES Movie,
-- 	stars INTEGER,
-- 	ratingDate DATE
-- );

-- CREATE VIEW yearsView AS 
-- 	SELECT DISTINCT year FROM Movie m
-- 	JOIN Rating r ON m.mID = r.mID AND (stars = 4 OR stars = 5)
-- 	ORDER BY year;

-- CREATE INDEX starsIndex ON Rating(stars);
-- CREATE INDEX yearIndex ON Movie(year);

-- CREATE USER admin WITH CREATEROLE;	

-- GRANT postgres TO admin;

-- REASSIGN OWNED BY intern TO admin;


