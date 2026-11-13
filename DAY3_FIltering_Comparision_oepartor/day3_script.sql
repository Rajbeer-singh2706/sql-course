
--- Look before you filter 
select * from customers;
select distinct city from customers; -- delhi, Bengaluuru, Chennai, Hyderabad,Mumbai
select distinct status from orders; -- pending, shipped, delivered, cancelled
select distinct category from products;-- Home, Accessories, Electronics, Stationery


-- Step 2: One condition
--Text Equality
select name, city from customers
where city = 'Delhi';

-- Numeric COmparision
select 
  name,
  price
from products 
WHERE price > 50;

-- Step 3: Not Euqal
SELECT 
  order_id,
  status
FROM orders
WHERE status <> 'delivered';

-- Filtering on a date
select 
  order_id,
  order_date
FROM orders
where order_date >= '2025-01-01';

-- Step 5: AND 
SELECT 
  order_id,
  product_id,
  quantity,
  unit_price
FROM order_items
WHERE quantity >=2 AND unit_price > 20;


-- step 6: OR and NOT 
select 
  name, 
  city
from customers where city = 'Delhi' or city = 'Mumbai';

select 
  name, 
  city
from customers where NOT city = 'Delhi';

-- Step 7: The parentheses experiment
SELECT * from products;
SELECT 
  name, 
  category,
  price 
FROM products 
WHERE category = 'Electronics' or category ='Home' and price < 30;

SELECT 
  name, 
  category,
  price 
FROM products 
WHERE (category = 'Electronics' or category ='Home') and price < 30;



-- #####################
select * from orders where status <> 'delivered';
select * from orders where NOT status = 'delivered';

SELECT * from customers where city = 'Delhi' OR city = 'Mumbai';
SELECT * from customers where not (city = 'Delhi' OR city = 'Mumbai');

select * from customers where city <> 'Delhi' AND city <> 'Mumbai';
