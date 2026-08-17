-- RETURNING -> returns the rows affected by INSERT, UPDATE, or DELETE



-- insert a new product and return the inserted row

INSERT INTO products
(name, category, price, stock, sku, description, is_active)
VALUES
('Test Keyboard', 'Accessories', 4500.00, 15, 'TEST-005', 'Temporary keyboard for practice', true)
RETURNING *;



-- update the product and return the updated row

UPDATE products
SET
    price = 5000,
    stock = 20
WHERE sku = 'TEST-005'
RETURNING *;



-- delete the product and return the deleted row

DELETE FROM products
WHERE sku = 'TEST-005'
RETURNING *;



-- check whether the product still exists

SELECT *
FROM products
WHERE sku = 'TEST-005';