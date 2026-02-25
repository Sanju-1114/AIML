CREATE DATABASE college;

USE college;

CREATE TABLE student (
    roll_no INT,
    stu_name VARCHAR(30),
    age INT
);

INSERT INTO student
VALUES
(101, "Sanju", 20),
(102, "Adam", 12),
(103, "Bob", 14);