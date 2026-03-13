
CREATE DATABASE prime;

USE prime;

CREATE TABLE accounts (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    balance DECIMAL(10, 2)
);

INSERT INTO accounts
(name, balance)
VALUES
("Adam", 500.00),
("Bob", 300.00),
("Charlie", 1000.00);


START TRANSACTION;  

UPDATE accounts SET balance = balance - 100 WHERE id = 1;
UPDATE accounts SET balance = balance + 100 WHERE id = 3;

ROLLBACK;


SELECT * FROM accounts;