CREATE DATABASE prime;
USE prime;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO customers VALUES
(1, "Alice", "Mumbai"),
(2, "Bob", "Delhi"),
(3, "Charlie", "Bangalore"),
(4, "David", "Mumbai");

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT
);

INSERT INTO orders VALUES
(101, 1, 500),
(102, 1, 900),
(103, 2, 300),
(104, 5, 700);


SELECT * FROM customers;
SELECT * FROM orders;


-- SELF JOIN
SELECT *
FROM customers as c1
JOIN customers as c2
ON c1.customer_id = c2.customer_id;