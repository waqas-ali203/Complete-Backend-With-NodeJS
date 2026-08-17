-- UPDATE -> changes existing data
-- Multiple rows -> updates all rows that match the condition
-- WHERE -> specifies which rows should be updated



-- update price for all Electronics products

UPDATE products
SET price = price + 500
WHERE category = 'Electronics';



-- update stock for all Furniture products

UPDATE products
SET stock = stock + 10
WHERE category = 'Furniture';



-- make all Electronics products active

UPDATE products
SET is_active = true
WHERE category = 'Electronics';



-- update products where price is less than 1000

UPDATE products
SET price = price + 100
WHERE price < 1000;



-- update multiple columns for all Stationery products

UPDATE products
SET
    price = price + 50,
    stock = stock + 20
WHERE category = 'Stationery';



-- update all products with zero stock

UPDATE products
SET is_active = false
WHERE stock = 0;