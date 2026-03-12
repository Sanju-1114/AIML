CREATE DATABASE IF NOT EXISTS college;

use college;

CREATE TABLE teacher (
  id INT PRIMARY KEY,
  name VARCHAR(30),
  subject VARCHAR(50),
  salary INT
);

INSERT INTO teacher
(id, name, subject, salary)
VALUES
(1, "Sanju", "Computer Science", 1000000),
(23, "ajay", "math", 50000),
(47, "bharat", "english", 60000),
(18, "chetan", "chemistry", 45000),
(9, "divya", "physics", 75000);

SELECT * FROM teacher;

-- teachers whose salary > 55K
SELECT * FROM teacher
WHERE salary > 55000;

-- rename salary col to ctc
ALTER TABLE teacher
CHANGE COLUMN salary ctc INT;

-- update salary of every teacher by giving hike with 25%
UPDATE teacher
SET ctc = ctc + ctc*0.25; 

-- add column city and DEFAULT city "Gurgao"
ALTER TABLE teacher
ADD COLUMN city VARCHAR(50) DEFAULT "Gurgaon";

-- delete salary col for teacher table
ALTER TABLE teacher
DROP COLUMN ctc;