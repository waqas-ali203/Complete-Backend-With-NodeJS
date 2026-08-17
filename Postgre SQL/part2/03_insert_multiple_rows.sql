

INSERT INTO products ( name, category, price, sku, description)
VALUES
('Mechanical Keyboard', 'Accessories', 8500.00, 'MK-001', 'RGB mechanical keyboard'),
('Gaming Headset', 'Headphones', 6500.00, 'GH-001', 'Wireless gaming headset'),
('USB-C Charger', 'Electronics', 3200.00, 'UC-001', 'Fast charging USB-C adapter');

SELECT name, category, price, stock, sku
FROM products
WHERE sku IN ('MK-001','GH-001','UC-001');