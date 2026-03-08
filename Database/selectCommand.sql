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

INSERT INTO users
(id, age, user_name, email, followers, followings)
VALUES
(1, 14, "Adam", "adam@gmail.com", 123, 145),
(2, 15, "Bob", "bob@gmail.com", 200, 200),
(3, 16, "Casey", "casey@gmail.com", 300, 306),
(4, 17, "Donald", "donald@gmail.com", 200, 105);


INSERT INTO posts
(id, content, user_id)
VALUES
(101,"Hello World", 3),
(102,"Bye Bye", 1);

SELECT * FROM users;