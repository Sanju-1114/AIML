
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

UPDATE accounts SET balance = balance + 1000 WHERE id = 1;
SAVEPOINT after_wallet_topup; 

UPDATE accounts SET balance = balance + 10 WHERE id = 1;

ROLLBACK TO after_wallet_topup;
COMMIT;


SELECT * FROM accounts;