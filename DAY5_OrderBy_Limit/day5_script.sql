-- Step 1: see the problem
select name,city from customers;

-- Step 2: sort A to Z
select name,city from customers ORDER BY name;
select name,city from customers ORDER BY name ASC; 
select name,city from customers ORDER BY name DESC;

-- Step 3: sort by two column
select city, name from customers ORDER BY city, name;

--Step 4: mixed directions
SELECT name, city FROM customers
ORDER BY city ASC, name DESC;

-- Step 5: sort by an alias
SELECT 
	order_id,product_id,quantity * unit_price AS line_total
FROM order_items
ORDER BY line_total DESC;
SELECT name, price FROM products
ORDER BY 2 DESC; -- 2 = second column (works, but fragile)

-- Step 6: watch the NULL
SELECT customer_id, name, email FROM customers ORDER BY email;

-- Step 7: take control of the NULL
SELECT customer_id, name, email FROM customers
ORDER BY email NULLS LAST;

-- LIMIT -- 
-- Step 8: top-N
SELECT 
	name, price 
FROM products
ORDER BY price DESC
LIMIT 3;



