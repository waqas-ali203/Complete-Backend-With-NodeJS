CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    name TEXT NOT NULL,

    category TEXT NOT NULL,

    price NUMERIC(10,2) NOT NULL CHECK (price >= 0),

    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock >= 0),

    is_active BOOLEAN NOT NULL DEFAULT true,

    SKU TEXT UNIQUE,

    description TEXT,

    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

INSERT INTO products(name, category, price, stock, is_active, sku, description)
VALUES 
('iPhone 15', 'Mobile', 189999.00, 15, true, 'IPH15-001', 'Apple iPhone 15 with 128GB storage'),
('Samsung Galaxy S24', 'Mobile', 174999.00, 20, true, 'SAM-S24-001', 'Samsung Galaxy S24 smartphone'),
('Dell Inspiron 15', 'Laptop', 145000.00, 8, true, 'DEL-IN15-001', 'Dell Inspiron laptop with Intel processor'),
('Logitech MX Master 3S', 'Accessories', 28500.00, 30, true, 'LOG-MX3S-001', 'Wireless ergonomic mouse'),
('Sony WH-1000XM5', 'Headphones', 89999.00, 12, true, 'SON-WH5-001', 'Wireless noise cancelling headphones'),
('HP Keyboard K150', 'Accessories', 4500.00, 25, false, 'HP-K150-001', 'USB wired keyboard');

SELECT * FROM products;