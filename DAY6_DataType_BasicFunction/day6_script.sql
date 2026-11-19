-- STRING FUnctions : upper(), lower() , length(), trim()
-- replace() 
-- || (join text)
-- POSITION 
-- Type conversion (CAST)
SELECT CAST('42' AS INTEGER);        -- 42
SELECT CAST(7 AS NUMERIC) / 2;       -- 3.5000000000000000
SELECT '2026-11-16'::DATE;           -- 2026-11-16  (PostgreSQL shortcut)
SELECT CAST(9.99 AS INTEGER);        -- 10  (CAST rounds, it does not cut off)

SELECT 
	order_id, 
	CAST(order_date AS TEXT) AS order_date_text 
FROM orders;

-- String functions
-- UPPER / LOWER
SELECT UPPER('pune');                -- PUNE
SELECT LOWER('GOA');                 -- goa
SELECT UPPER(name), LOWER(city) FROM customers;

-- LENGTH
SELECT LENGTH('Mumbai');             -- 6
SELECT name, LENGTH(name) FROM customers;

-- TRIM
SELECT TRIM('  hi  ');               -- hi
SELECT TRIM(name) FROM customers;    -- removes stray spaces around names

-- REPLACE
SELECT REPLACE('2026-11-16', '-', '/');        -- 2026/11/16
SELECT REPLACE('Pune-Goa', '-', ' to ');       -- Pune to Goa
SELECT REPLACE(name, ' ', '_') FROM products;

-- || (join text)
SELECT 'Data' || ' ' || 'Science';             -- Data Science
SELECT 'Order #' || 1001;                      -- Order #1001
SELECT name || ' (' || city || ')' FROM customers;

-- POSITION
SELECT POSITION('@' IN 'raj@mail.com');        -- 4
SELECT POSITION('z' IN 'raj@mail.com');        -- 0  (not found)
SELECT email, POSITION('@' IN email) FROM customers;   -- customer 7 gives NULL

-- SELECT SUBSTRING('TEST1234' FROM 5 FOR 8);

--- ########## Numeric functions -
-- NUMERIC FUnction 
-- round(), ciel(), floor()
-- ABS()
-- % , MOD() --> remainder 
-- - , + , *  / 

-- ROUND
SELECT ROUND(3.14159, 2);            -- 3.14
SELECT ROUND(7.456, 1);              -- 7.5
SELECT ROUND(7.6);                   -- 8
SELECT ROUND(price * 1.18, 2) FROM products;
select round(7.4);
select round(7.6);

-- CEIL / FLOOR
SELECT CEIL(4.2), FLOOR(4.8);       -- 5, 4
SELECT CEIL(-4.2), FLOOR(-4.2);     -- -4, -5  (negatives surprise people)

-- ABS
SELECT ABS(-7);                      -- 7
SELECT ABS(10 - 25);                 -- 15

-- % / MOD (remainder)
SELECT 10 % 4;                       -- 2
SELECT MOD(10, 3);                   -- 1
SELECT order_id, quantity % 2 FROM order_items;   -- 0 = even, 1 = odd

-- + - * /
SELECT 12 + 3, 12 - 3, 12 * 3, 12 / 3;   -- 15, 9, 36, 4
SELECT 12 / 5;                            -- 2        (integer division)
SELECT 12 / 5.0;                          -- 2.4000000000000000
SELECT quantity * unit_price FROM order_items;

--- ########## Date functions
-- CURRENT_DATE
-- CURRENT_DATE
-- EXTRACT() 
-- DATE_TRUNC() 
-- date - date
-- date + <integeer>
-- to_char() : from date to string

SELECT CURRENT_DATE;                              -- today's date
SELECT name FROM customers WHERE signup_date < CURRENT_DATE;

-- EXTRACT
SELECT EXTRACT(YEAR FROM DATE '2026-11-16');      -- 2026
SELECT EXTRACT(MONTH FROM DATE '2026-11-16');     -- 11
SELECT EXTRACT(DAY FROM DATE '2026-11-16');       -- 16
SELECT EXTRACT(YEAR FROM order_date) FROM orders;

--DATE_TRUNC
SELECT DATE_TRUNC('month', DATE '2026-11-16');    -- 2026-11-01 00:00:00
SELECT DATE_TRUNC('year',  DATE '2026-11-16');    -- 2026-01-01 00:00:00
SELECT DATE_TRUNC('month', order_date) FROM orders;

-- date - date (days between)
SELECT DATE '2026-12-25' - DATE '2026-11-16';     -- 39
SELECT CURRENT_DATE - signup_date FROM customers;

-- date + integer (add or subtract days)
SELECT DATE '2026-11-16' + 30;                    -- 2026-12-16
SELECT DATE '2026-11-16' - 7;                     -- 2026-11-09
SELECT order_date + 7 AS follow_up_date FROM orders;

-- TO_CHAR
SELECT TO_CHAR(DATE '2026-11-16', 'DD Mon YYYY'); -- 16 Nov 2026
SELECT TO_CHAR(DATE '2026-11-16', 'YYYY-MM');     -- 2026-11
SELECT TO_CHAR(signup_date, 'DD Mon YYYY') FROM customers;

-- One query using several together
SELECT UPPER(name)                                  AS name_upper,
       SUBSTRING(email FROM POSITION('@' IN email) + 1) AS email_domain,
       TO_CHAR(signup_date, 'DD Mon YYYY')          AS joined,
       CURRENT_DATE - signup_date                   AS days_since_signup
FROM customers;



--- ############## GUIDED PRACTISE ####################
-- Step 1: functions need no table
SELECT UPPER('goa') as shout,
       LENGTH('goa') AS letters,
	   'Hello, ' || 'SQL' AS g;

-- Step 2: apply a function to a column
SELECT 
   name, UPPER(name) as upper_name, LENGTH(name) as name_length
FROM customers;

-- Step 3: build a label with ||
SELECT 
   name || ' (' || city || ')' AS label 
FROM customers;

--Step 4: arithmetic on columns
SELECT 
  product_id, 
  name, 
  price,
  ROUND(price *1.18, 2) AS price_with_gst 
FROM products;

-- Step 5: a calculated column from two columns
SELECT 
   order_id, product_id, quantity, unit_price,
   quantity * unit_price AS line_total
FROM order_items;

-- Step 6: dates
SELECT 
   order_id, order_date,
   EXTRACT(YEAR FROM order_date) as yr,
   EXTRACT(MONTH FROM order_date) as mth
FROM orders;

-- Step 7: watch NULL spread
SELECT 
   customer_id, email, UPPER(email) as email_upper
FROM customers
WHERE customer_id IN(1,7);

-- Step 8: functions inside WHERE (spiral back to Day 4)
SELECT 
   name, email, city
FROM customers
  WHERE LOWER(city) LIKE 'm%' AND EMAIL IS NOT NULL;


----##################### EXCERCISE #########################
-- ex1
SELECT 
  name, 
  UPPER(name) as name_upper,
  LENGTH(name) as name_length
FROM customers;

-- ex2 
SELECT 
  order_id, 
  product_id,
  quantity * unit_price as line_total
FROM order_items

-- EX3 
SELECT 
   name, 
   ROUND(price) as price_rounded, 
   ROUND(price * 18/100, 2) as price_with_gst
FROM products

--EX4
SELECT 
 order_id,
 EXTRACT(YEAR FROM order_date) order_year,
 EXTRACT(MONTH FROM order_date) order_month
from orders

-- EX5 
SELECT 
  name,
  signup_date,
  CURRENT_DATE - signup_date  AS days_since_signup
FROM customers; 

-- EX6 
SELECT 
 name, email,
 POSITION('@' IN email) as positions,
 SUBSTRING(email FROM POSITION('@' IN email)+1 ) as email_domain1,
 SUBSTRING(email FROM POSITION('@' IN email)+1 FOR LENGTH(email)) as email_domain2
FROM customers;

-- EX7 
SELECT 
  name,
  name || ' - ' || COALESCE(email, ' no email') AS name_email
FROM customers 
WHERE customer_id = 7 ; 

-- STRETCH GOAL 
SELECT 
 UPPER(name) as name_upper,
 UPPER(SUBSTR(CITY, 1,3)) as city_code,
 EXTRACT(YEAR FROM signup_date) AS signup_year,
 (CURRENT_DATE - signup_date) / 365 as full_years
FROM customers;



