

Topics 
-------
* SELECT ... FROM 
    SELECT 
        <the columns you want>
    FROM <the table they live in>;

    select 
        <the columns you want>
    from <the table they live in>;

##############
* ALIAS
* DISTINCT 


--- ALL COlums 
SELECT * FROM customers;

--- specific Column 
SELECT name, email FROM customers;

-- ALIAS
SELECT 
    name, price, 
    price * 1.18 AS price_with_tax
FROM products;

-- Aliases with spaces
SELECT 
    name AS "Product Name", 
    price AS "List Price"
FROM products;

-- Step 5: Joining text
SELECT 
    name || ' lives in ' || city AS sentence
FROM customers;

-- A table alias
SELECT 
    c.name, 
    c.city
FROM customers AS c;

-- Unique values
SELECT 
    DISTINCT city
FROM customers;

-- DISTINCT on two columns
SELECT 
    DISTINCT customer_id, status
FROM orders;

-- DISTINCT and NULL
SELECT 
    DISTINCT email
FROM customers;

-- Step 10: No table needed
SELECT 
    'Hello, SQL' AS greeting, 
    2 + 3 AS total;

