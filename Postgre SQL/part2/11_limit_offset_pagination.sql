-- LIMIT -> limits the number of rows returned
-- OFFSET -> skips a specific number of rows
-- Pagination -> divides results into multiple pages



-- show only first 3 products

SELECT name, category, price
FROM products
LIMIT 3;



-- skip first 2 products and show the next 3

SELECT name, category, price
FROM products
OFFSET 2
LIMIT 3;



-- page 1 -> first 3 products

SELECT name, category, price
FROM products
ORDER BY id
LIMIT 3
OFFSET 0;



-- page 2 -> next 3 products

SELECT name, category, price
FROM products
ORDER BY id
LIMIT 3
OFFSET 3;



-- page 3 -> next 3 products

SELECT name, category, price
FROM products
ORDER BY id
LIMIT 3
OFFSET 6;



-- page 4 -> next 3 products

SELECT name, category, price
FROM products
ORDER BY id
LIMIT 3
OFFSET 9;