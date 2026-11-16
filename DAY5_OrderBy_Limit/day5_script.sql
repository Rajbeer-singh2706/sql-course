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

-- Step 9: paginate
SELECT 
  order_id, order_date
FROM orders 
ORDER BY order_date DESC , order_id DESC 
LIMIT 3 OFFSET 1;

-- 
SELECT 
  order_id
FROM orders 
ORDER BY order_id 
LIMIT 3 OFFSET 3;

-- Step 10: combine with WHERE (Day 3-4)
SELECT 
   name, email 
FROM customers
WHERE email IS NOT NULL
ORDER BY name
LIMIT 5;
-- Notice: Filter first, sort second, cut last.

------------- EXCERCISE ---------------------
--ex1
Select name, city from customers ORDER by name;

--ex2
select name,price from products order by price DESC;

--ex3
select name,city from customers ORDER by city , name;

-- ex4 
select name, price from products ORDER by price LIMIT 3;

--EX5 
SELECT distinct city from customers ORDER by city;

--ex6
select name, email from customers ORDER by email NULLS FIRST;
select name, email from customers ORDER by email NULLS LAST;

--ex7
select 
	name,email,signup_date 
from customers
WHERE email is NOT NULL
order by signup_date DESC , customer_id DESC
LIMIT 2;

-- Ex8 
select 
	order_id, customer_id, order_date
from orders 
ORDER BY order_date DESC , order_id DESC
LIMIT 3 offset 3; -- 3reocrds

-- stretch GOAL
select 
  order_id, product_id, quantity * unit_price as line_total
from order_items
ORDER BY line_total DESC , order_id, product_id
LIMIT 3 OFFSET 3;


