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

CREATE TABLE posts (
    id INT PRIMARY KEY,
    content VARCHAR(100),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO posts
(id, content, user_id)
VALUES
(101,"Hello World", 3),
(102,"Bye Bye", 1);


INSERT INTO users
(id, age, user_name, email, followers, followings)
VALUES
(1, 14, "Adam", "adam@gmail.com", 123, 145),
(2, 15, "Bob", "bob@gmail.com", 200, 200),
(3, 16, "Casey", "casey@gmail.com", 300, 306),
(4, 17, "Donald", "donald@gmail.com", 200, 105);

SHOW * FROM users;

-- update table 
UPDATE users
SET followers = 600
WHERE age = 16;

-- if you are using update command first time in SQL 
SET SQL_SAFE_UPDATES = 0;


-- delete query
DELETE FROM users
WHERE age = 14;

-- ALTER query
-- 1. ADD column
ALTER TABLE users
ADD COLUMN city VARCHAR(25) DEFAULT "Lucknow";

-- 2. DROP/DELETE column
ALTER TABLE users
DROP COLUMN age;

-- 3. RENAME TABLE
ALTER TABLE users
RENAME TO instaUsers;

-- 4. CHANGE column (RENAME)
ALTER TABLE users
CHANGE COLUMN followers subs INT DEFAULT 0;

-- 5. MODIFY COLUMN 
ALTER TABLE users
MODIFY subs INT DEFAULT 5;


-- TRUNCATE - delete the tables data
TRUNCATE TABLE users;