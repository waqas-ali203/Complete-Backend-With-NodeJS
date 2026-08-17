-- AND -> every condition must be true
-- OR -> at least one condition must be true
-- NOT -> reverse/exclude a condition



-- products where category is electronics but price > 1000

INSERT INTO products
(name, category, price, stock, sku, description, is_active)
VALUES
('USB-C Charger', 'Electronics', 3200.00, 50, 'UC-001', 'Fast charging USB-C adapter', true);



-- SELECT name, category, price
-- FROM products
-- WHERE category = 'Electronics'
-- AND price > 1000;



-- products where category is electronics or furniture

INSERT INTO products
(name, category, price, stock, sku, description, is_active)
VALUES
('Office Chair', 'Furniture', 18000.00, 10, 'OC-001', 'Comfortable office chair', true);



-- SELECT name, category, price
-- FROM products
-- WHERE category = 'Electronics'
-- OR category = 'Furniture';




-- SELECT name, category
-- FROM products
-- WHERE category = 'Stationery';




-- SELECT name, category, price, stock
-- FROM products
-- WHERE (category = 'Stationery' OR category = 'Furniture')
-- AND stock > 0;




-- SELECT name, category, price, stock, is_active
-- FROM products
-- WHERE is_active = true
-- AND (stock >= 100 OR price < 1000);