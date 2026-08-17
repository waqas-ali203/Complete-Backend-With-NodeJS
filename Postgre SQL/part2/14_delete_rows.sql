-- DELETE -> removes rows from a table
-- WHERE -> specifies which rows should be deleted
-- Always use WHERE when deleting specific rows



-- insert a product

INSERT INTO products
(name, category, price, stock, sku, description, is_active)
VALUES
('Test Mouse', 'Accessories', 1500.00, 10, 'TEST-001', 'Temporary product for delete practice', true);



-- show products

SELECT *
FROM products;



-- delete the product we just inserted

DELETE FROM products
WHERE sku = 'TEST-001';



-- show products after delete

SELECT *
FROM products;



-- insert multiple products

INSERT INTO products
(name, category, price, stock, sku, description, is_active)
VALUES
('Test Laptop', 'Electronics', 50000.00, 5, 'TEST-002', 'Temporary laptop', true),
('Test Chair', 'Furniture', 12000.00, 3, 'TEST-003', 'Temporary chair', true),
('Test Phone', 'Electronics', 30000.00, 2, 'TEST-004', 'Temporary phone', true);



-- show products

SELECT *
FROM products;



-- delete all test products

DELETE FROM products
WHERE sku IN ('TEST-002', 'TEST-003', 'TEST-004');



-- show products after delete

SELECT *
FROM products;