-- 2. GUIDED Practise 
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


