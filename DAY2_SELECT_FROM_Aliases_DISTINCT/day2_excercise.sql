-- Part 3: Exercises (25-40 min)

-- EX1: Show every column and every row from the products table.
select * from products 

-- EX2: From customers, show only the name and city columns.
select
  name, city
FROM customers;

--EX3:From products, show the name, category and price, but relabel the columns product_name, category 
-- and list_price.
SELECT 
 name AS product_name,
 category, 
 price AS list_price 
FROM products

-- EX4: Which cities do our customers live in? Return each city once.
SELECT Distinct city from customers;

--EX5: List the different values that appear in the status column of orders.
SELECT DISTINCT status from orders;

--EX6: From order_items, show order_id, product_id and a calculated column line_total (quantity multiplied by
-- unit_price).

SELECT
  order_id, 
  product_id,
  quantity * unit_price AS line_total
FROM order_items;

--EX7: From customers, create one column called contact that looks like Name <email>, with the email
--wrapped in angle brackets. Which row is NULL, and why?
SELECT 
   name || ' <' || email || '>' as contact
FROM customers;

--EX8: Using a table alias o for orders, list the customer_ids that have placed at least one order, each shown
-- once, with the column named customer_with_orders.
SELECT 
 distinct o.customer_id AS customer_with_orders
FROM orders AS o;

--- STRECH GOAL 
--1. How many rows do you get? Before you run it, predict the number and 
--explain your reasoning using the primary key of order_items.
SELECT DISTINCT order_id, product_id FROM order_items; 


-- 2. Predict which returns more or equal rows, then test:
-- SELECT DISTINCT customer_id FROM orders;
-- or SELECT DISTINCT customer_id, status FROM orders; Why?


-- 3. It does not fail. What did it return, and what does this tell 
-- you about the optional AS?
--Run : SELECT name city FROM customers; (no comma).