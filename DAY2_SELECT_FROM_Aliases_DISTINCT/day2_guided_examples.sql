-- Part 2: Guided practice (20 min)

--- ALL COlums 
SELECT * FROM customers;

--- Step 2: Choose columns
SELECT name, email FROM customers;

-- Step 3: A calculated column with an alias
SELECT 
    name, price, 
    price * 1.18 AS price_with_tax
FROM products;

-- Step 4: Aliases with spaces
SELECT 
    name AS "Product Name", 
    price AS "List Price"
FROM products;

-- Step 5: Joining text
SELECT 
    name || ' lives in ' || city AS sentence
FROM customers;

-- Step 6: A table alias
SELECT 
    c.name, 
    c.city
FROM customers AS c;

-- Step 7: Unique values
SELECT 
    DISTINCT city
FROM customers;

-- Step 8: DISTINCT on two columns
SELECT 
    DISTINCT customer_id, status
FROM orders;

-- Step 9: DISTINCT and NULL
SELECT 
    DISTINCT email
FROM customers;

-- Step 10: No table needed
SELECT 
    'Hello, SQL' AS greeting, 
    2 + 3 AS total;


Part 3: Exercises (25-40 min)