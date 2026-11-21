-- 2. GUIDED Practise 
-- Step 1. Start with the columns you want.
SELECT
  name, city , email
FROM customers;

-- Step 2. Keep only customers who have an email. Customer 7 should disappear.
SELECT 
	name, city, email
FROM customers
WHERE email IS NOT NULL;

-- Step 3. Sort the result by city, then by name inside each city.
SELECT 
 name, city, email
FROM customers
WHERE email IS NOT NULL
ORDER BY city, name;

-- Step 4. Keep only the first 5 rows and give the columns friendly names.
SELECT 
	name AS "Customer",
	city AS "City", 
	email as "Email"
FROM customers
WHERE email is NOT NULL
ORDER BY city,name
LIMIT 5;


-- PART B 
SELECT * FROM products;
SELECT distinct category from products;
SELECT 
	name, price 
FROM products ORDER BY price DESC LIMIT 1;

--What is the cheapest item?
SELECT 
	name, price 
FROM products ORDER BY price ASC LIMIT 1;

--Is anything missing?
SELECT * 
FROM products 
WHERE price IS NULL OR category IS NULL;

