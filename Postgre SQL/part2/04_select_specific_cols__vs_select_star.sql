

-- select * return every cols
-- select specific cols is goin to return the cols that i want


--SELECT * FROM products;

-- SELECT name, category, price, stock
-- SELECT price
-- FROM products;

-- AS created an alias for the output of that column name
-- makes the col name easier to read

SELECT
name AS product_name,
price AS selling_pprice,
stock AS availability_quantity
FROM products;