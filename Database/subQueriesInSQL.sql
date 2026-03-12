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

-- with WHERE 
SELECT * 
FROM orders
WHERE amount > (
    SELECT AVG(amount)
    FROM orders
);

-- with SELECT 
SELECT name, 
    (   
        SELECT COUNT(*)
        FROM orders o
        WHERE o.customer_id = c.customer_id
    ) AS order_count
FROM customers c;

-- with FROM
SELECT 
    summary.customer_id, 
    summary.avg_amount
FROM 
    (
        SELECT 
            customer_id,
            AVG(amount) AS avg_amount
        FROM orders
        GROUp BY customer_id
    ) AS summary;

    