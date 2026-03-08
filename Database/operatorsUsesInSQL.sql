-- important operators which frequently used

CREATE DATABASE instagram;
CREATE DATABASE IF NOT EXISTS instagram;

USE instagram;

CREATE TABLE users (
    id INT PRIMARY KEY,
    age INT,
    user_name VARCHAR(30) NOT NULL,
    email VARCHAR(30) UNIQUE,
    followers INT DEFAULT 0,
    followings INT,
    CONSTRAINT CHECK (age >= 13)
);

INSERT INTO users
(id, age, user_name, email, followers, followings)
VALUES
(1, 14, "Adam", "adam@gmail.com", 123, 145),
(2, 15, "Bob", "bob@gmail.com", 200, 200),
(3, 16, "Casey", "casey@gmail.com", 300, 306),
(4, 17, "Donald", "donald@gmail.com", 200, 105);
(5, 14, "Eve", "eve@gmail.com", 400, 145),
(6, 16, "Farah", "farah@gmail.com", 10000, 1000);

SELECT * 
FROM users
WHERE followers >= 200;

SELECT user_name, age 
FROM users
WHERE age + 1 = 18;

SELECT user_name, age 
FROM users
WHERE age < 16;

-- AND operator
SELECT user_name, age, followers 
FROM users
WHERE (age > 15) AND (followers > 200);

-- OR operator
SELECT user_name, age, followers 
FROM users
WHERE (age > 15) OR (followers > 200);

-- BETWEEN operator
SELECT user_name, age, followers 
FROM users
WHERE age BETWEEN 15 AND 17;

-- IN operator
SELECT user_name, followers, email 
FROM users
WHERE email IN ("donald@gmail.com", "adam@gmail.com", "abc@gmail.com");

SELECT user_name, age, followers, email 
FROM users
WHERE age IN (14, 16);

-- NOT operator
SELECT user_name, age, email 
FROM users
WHERE age NOT IN (14, 16);