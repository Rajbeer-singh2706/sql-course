

Topics 
-------
* SELECT 
* ALIAS
* DISTINCT 


SELECT * FROM customers;

SELECT name, email FROM customers;

SELECT 
    name, price, 
    price * 1.18 AS price_with_tax
FROM products;

SELECT 
    name AS "Product Name", 
    price AS "List Price"
FROM products;

SELECT 
    name || ' lives in ' || city AS sentence
FROM customers;

SELECT 
    c.name, c.city
FROM customers AS c;

SELECT 
    DISTINCT city
FROM customers;

SELECT 
    DISTINCT customer_id, status
FROM orders;

SELECT 
    DISTINCT email
FROM customers;

SELECT 
    'Hello, SQL' AS greeting, 
    2 + 3 AS total;

