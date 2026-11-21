

Topics 
-------
-- 1. The shape of a query
SELECT ... FROM 

-- 2. All columns versus chosen columns

    SELECT 
        <the columns you want>
    FROM <the table they live in>;

    select 
        <the columns you want>
    from <the table they live in>;

-- 3. Calculated columns (expressions)
 -- + - * /, and join text with ||.
-- Careful with NULL
--'abc' || NULL gives NULL, not 'abc'.

-- Comments in SQL 

-- 4. Aliases: giving things a nicer name

-- 5. DISTINCT: removing duplicate rows
    -- SELECT DISTINCT city FROM customers;
-- select distinct (city) , 'ABC' as test from customers order by city;


-- One-line takeaway
SELECT chooses the columns, 
FROM chooses the table, 
aliases rename things in the output, and
DISTINCT removes duplicate rows.


