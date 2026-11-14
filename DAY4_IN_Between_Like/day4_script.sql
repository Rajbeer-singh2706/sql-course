 ---- ############### GUIDED EXAMPLE ######################
select * from customers; 
select * from products; -- product_id, name, category, price

--- Step 1: IN WIth Numbers 
-- Long Way 
SELECT 
 * 
FROM customers 
WHERE customer_id = 1 OR customer_id = 2 OR customer_id = 3;
-- Short Way 
select 
  name,city 
FROM customers
WHERE customer_id IN (1,2,3);

-- NOT IN 
select 
  name,city 
FROM customers
WHERE customer_id NOT IN (1,2,3);

-- Step 3. IN with text.
SELECT name , city 
FROM customers
WHERE city IN ('Delhi', 'Mumbai');


--------- 2. BETWEEN : >= low and <=high ----------------
-- Step 4. BETWEEN on ids, then on price
SELECT 
	product_id, 
	name
FROM products
WHERE product_id BETWEEN 103 AND 106;

SELECT 
  name,
  price
FROM products
WHERE price BETWEEN 10 and 50;

-- Step 5. NOT BETWEEN.
SELECT 
  name, price
FROM products
WHERE price NOT BETWEEN 10 and 50;

-- Step 6. BETWEEN on dates.
SELECT 
  name,signup_date
FROM customers
WHERE signup_date BETWEEN '2025-01-01' AND '2025-03-01';


------------ 3. LIKE -------------- 
SELECT name from customers WHERE name LIKE 'A%';
SELECT name from customers WHERE name ILIKE 'A%';
SELECT name from customers WHERE name LIKE '%a';
SELECT name from customers WHERE name LIKE '%an%';
SELECT name from customers WHERE name LIKE '_a%';

------------ 4. NULL: a missing Value, unknown or missing -----------------
SELECT * FROM customers WHERE email = NULL; -- 0 Rows  Never Works 
SELECT * FROM customers WHERE email IS NULL; -- customer 7
SELECT * FROM customers WHERE email IS NOT NULL;-- everyone else

-- Step 8. The NULL trap.
select customer_id , name from customers where email = NULL;
select customer_id , name from customers where email IS NULL;

-- Step 9. IS NOT NULL.
SELECT 
	customer_id, name, email
FROM customers
WHERE email IS NOT NULL;

-- Step 10. Combine everything. Note the parentheses.
SELECT 
  customer_id, name, email 
FROM customers
WHERE customer_id BETWEEN 1 AND 6
      AND email is NOT NULL 
	  AND (city = 'Delhi' OR name like 'A%');


--########## EXCERCISE ######################
--ex1
SELECT name,email FROM customers WHERE customer_id in (2,4,6,8);

--ex2
SELECT name, price FROM products WHERE product_id BETWEEN 103 AND 106;
SELECT name, price FROM products WHERE product_id IN (103,104,105,106);

--ex3
SELECT * FROM customers where name like '%a%';
SELECT * FROM customers where name like '%a%' OR name LIKE '%A%';

--ex4
select customer_id , name FROM customers WHERE email is NULL;

--ex5
SELECT 
  customer_id, name, email 
FROM customers 
WHERE customer_id not IN (1,2,3) AND email IS NOT NULL;

--ex6
SELECT
  * 
FROM order_items
WHERE quantity BETWEEN 2 AND 5
      AND product_id IN (101,102,103);

-- EX7
SELECT 
 customer_id, name, email
FROM customers 
WHERE email NOT LIKE '%@example.com' OR email is NULL;

---- STRECH GOAL --A ----
SELECT 
  name,
  COALESCE(email, '(no email)') AS email
FROM customers; 

--- STRECH GOAL -- B --SUBQUERY
SELECT 
 customer_id, name 
FROM customers
WHERE customer_id NOT IN (select customer_id from orders);















