-- IS NULL -> missing/unknown value -> checks if a value is NULL
-- IS NOT NULL -> checks if a value is NOT NULL



-- products where description is NULL

SELECT name, category, description
FROM products
WHERE description IS NULL;



-- products where description is NOT NULL

SELECT name, category, description
FROM products
WHERE description IS NOT NULL;



-- products where price is NULL

SELECT name, category, price
FROM products
WHERE price IS NULL;



-- products where price is NOT NULL

SELECT name, category, price
FROM products
WHERE price IS NOT NULL;



-- products where stock is NULL

SELECT name, category, stock
FROM products
WHERE stock IS NULL;



-- products where stock is NOT NULL

SELECT name, category, stock
FROM products
WHERE stock IS NOT NULL;