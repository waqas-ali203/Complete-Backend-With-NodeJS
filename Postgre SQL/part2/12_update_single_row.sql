 -- UPDATE -> changes existing data
-- WHERE -> specifies which row should be updated
-- Always use WHERE when updating a specific row



-- update the price of one product

UPDATE products
SET price = 3500
WHERE id = 1;



-- update the stock of one product

UPDATE products
SET stock = 50
WHERE id = 2;



-- update the category of one product

UPDATE products
SET category = 'Electronics'
WHERE id = 3;



-- update multiple columns of one product

UPDATE products
SET
    price = 7500,
    stock = 25
WHERE id = 4;



-- update product name and description

UPDATE products
SET
    name = 'Premium Wireless Mouse',
    description = 'Premium ergonomic wireless mouse'
WHERE id = 1;