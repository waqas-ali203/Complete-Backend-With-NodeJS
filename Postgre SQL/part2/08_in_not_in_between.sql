-- IN -> matches any value from the given list
-- NOT IN -> excludes the given values
-- BETWEEN -> value is within a range (inclusive)



-- products where category is Electronics or Furniture

SELECT name, category, price
FROM products
WHERE category IN ('Electronics', 'Furniture');



-- products where category is NOT Electronics or Furniture

SELECT name, category, price
FROM products
WHERE category NOT IN ('Electronics', 'Furniture');



-- products where price is between 1000 and 10000

SELECT name, category, price
FROM products
WHERE price BETWEEN 1000 AND 10000;



-- products where stock is between 10 and 100

SELECT name, category, stock
FROM products
WHERE stock BETWEEN 10 AND 100;



-- products where category is Electronics, Accessories, or Furniture

SELECT name, category, price
FROM products
WHERE category IN ('Electronics', 'Accessories', 'Furniture');



-- products where price is NOT between 1000 and 10000

SELECT name, category, price
FROM products
WHERE price NOT BETWEEN 1000 AND 10000;