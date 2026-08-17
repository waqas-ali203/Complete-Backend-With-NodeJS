-- LIKE -> case-sensitive pattern matching
-- ILIKE -> case-insensitive pattern matching
-- % -> any number of characters
-- _ -> exactly one character



-- LIKE: products where name contains 'Wireless'

SELECT name, category, price
FROM products
WHERE name LIKE '%Wireless%';



-- ILIKE: products where name contains 'wireless'

SELECT name, category, price
FROM products
WHERE name ILIKE '%wireless%';



-- LIKE: products where name starts with 'USB'

SELECT name, category, price
FROM products
WHERE name LIKE 'USB%';



-- ILIKE: products where name starts with 'usb'

SELECT name, category, price
FROM products
WHERE name ILIKE 'usb%';



-- LIKE: products where name ends with 'Mouse'

SELECT name, category, price
FROM products
WHERE name LIKE '%Mouse';



-- ILIKE: products where name ends with 'mouse'

SELECT name, category, price
FROM products
WHERE name ILIKE '%mouse';



-- LIKE: products where category contains 'Electronics'

SELECT name, category, price
FROM products
WHERE category LIKE '%Electronics%';



-- ILIKE: products where category contains 'electronics'

SELECT name, category, price
FROM products
WHERE category ILIKE '%electronics%';