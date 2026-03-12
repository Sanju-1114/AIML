CREATE DATABASE IF NOT EXISTS college;

use college;

CREATE TABLE student(
  roll_no INT PRIMARY KEY,
  name VARCHAR(50),
  city VARCHAR(50),
  marks INT
);

INSERT INTO student
(roll_no, name, city, marks)
VALUES
(110, "adam", "Delhi", 76),
(108, "bob", "Mumbai", 65),
(124, "casey", "Pune", 94),
(112, "duke", "Pune", 80);

SELECT * FROM student;

-- all students who scored 75+
SELECT * FROM student
WHERE marks > 75;

-- name of all cities where students from
SELECT DISTINCT city 
FROM student;

-- OR

SELECT city
FROM student
GROUP BY city;


-- max marks of students from each city
SELECT city, max(marks)
FROM student
GROUP BY city;

-- find the avg of class
SELECT avg(marks) FROM student;

-- add new col and assign grade
ALTER TABLE student
ADD COLUMN grade VARCHAR(2);

UPDATE student
SET grade = "O"
WHERE marks >= 80;

UPDATE student
SET grade = "A"
WHERE marks BETWEEN (70-80);

UPDATE student
SET grade = "B"
WHERE marks BETWEEN (60-70);
