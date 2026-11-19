
-- ########## LEVEL 1 : Warm up #############
-- TASK 1
SELECT * FROM customers; -- 8 
SELECT * FROM products; -- 8 
SELECT * FROM orders;  -- 12
SELECT * FROM order_items; --12

-- TASK 2: 
SELECT 
	name AS "Customer", 
	email AS "Email Address",
	city  AS "City"
FROM Customers
ORDER BY name ;

-- TASK 3: 
SELECT 
  distinct city 
FROM customers
ORDER by city;

-- ########## LEVEL 2 : CORE #############
-- TASK 4:
SELECT 
  customer_id, name , email 
FROM customers
WHERE email is null;
--- wrong version
SELECT *
FROM customers
WHERE email = null;
-- 

--TASK 5:
SELECT 
 name, city,email 
FROM customers 
WHERE LOWER(city) IN ('delhi', 'mumbai')
AND email is not null;

-- TASk 6:
SELECT 
  name,category, price
FROM products 
ORDER BY price DESC LIMIT 3;

--########### LEVEL 3: Challenge
-- TASK 7 : 
SELECT
 *
FROM  orders
ORDER BY order_date DESC ,order_id DESC
LIMIT 3 OFFSET 3;
-- 8/3 ==> 3 pages
-- (p-1)*3 => (2-1)*3


--- TASK 8 : line Totals
select
 *,
 quantity * unit_price AS line_total
FROM order_items
ORDER BY line_total DESC;


-- ### STRETCH GOAL --------
SELECT
 name || ' (' || city || ')' as label, 
 email 
FROM customers
WHERE email IS NOT NULL
ORDER by city
LIMIT 5;















