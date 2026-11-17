-- THeory 


-- Step 1: functions need no table
SELECT UPPER('goa') as shout,
       LENGTH('goa') AS letters,
	   'Hello, ' || 'SQL' AS greeting;

-- Step 2: apply a function to a column
SELECT 
  name, 
  UPPER(name) as name_uppper,
  LENGTH(name) as name_length
FROM customers;

-- Step 3: build a label with ||
SELECT 
   name || '   (' || city || ')' AS label
FROM customers;

-- Step 4: arithmetic on columns
SELECT 
   product_id ,
   name, 
   price,
   ROUND(price*1.18, 2) as price_with_gst
FROM products;




