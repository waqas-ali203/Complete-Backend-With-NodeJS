-- ORDER BY -> sorts the result
-- ASC -> ascending order (small to large / A to Z)
-- DESC -> descending order (large to small / Z to A)



-- products sorted by price from low to high

SELECT name, category, price
FROM products
ORDER BY price ASC;



-- products sorted by price from high to low

SELECT name, category, price
FROM products
ORDER BY price DESC;



-- products sorted by name alphabetically

SELECT name, category, price
FROM products
ORDER BY name ASC;



-- products sorted by name in reverse alphabetical order

SELECT name, category, price
FROM products
ORDER BY name DESC;



-- products sorted by stock from low to high

SELECT name, category, stock
FROM products
ORDER BY stock ASC;



-- products sorted by stock from high to low

SELECT name, category, stock
FROM products
ORDER BY stock DESC;



-- products sorted by category and then price

SELECT name, category, price
FROM products
ORDER BY category ASC, price DESC;