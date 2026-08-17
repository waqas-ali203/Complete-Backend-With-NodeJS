INSERT INTO products (
    name,
    category,
    price,
    stock,
    sku,
    description
)

VALUES ('Wireless Mouse', 'Accessories', 2500.00, 20, 'WM-001', 'Ergonomic wireless mouse with USB receiver');

SELECT * FROM products WHERE sku = 'WM-001';