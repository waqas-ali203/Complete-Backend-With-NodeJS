-- multiple sql stateemnts run as one state unit

-- placing an order
-- reduce stock of thatv product
-- creating payment records
-- transfering money
-- creating user records with related profile data


-- TRANSACTIONS -> group multiple SQL operations into one unit
-- BEGIN -> starts a transaction
-- COMMIT -> permanently saves all changes
-- ROLLBACK -> undoes all changes made during the transaction
-- If something goes wrong, ROLLBACK can restore the previous state



-- TRANSACTIONS
-- Multiple SQL statements run as one single unit
-- BEGIN -> starts a transaction
-- COMMIT -> permanently saves all changes
-- ROLLBACK -> undoes all changes made during the transaction


-- placing an order
-- reduce stock of that product
-- creating payment records
-- transferring money
-- creating user records with related profile data


-- start a transaction

BEGIN;



-- placing an order

INSERT INTO orders (...);



-- reduce stock of that product

UPDATE products
SET stock = stock - 1
WHERE id = 1;



-- creating payment records

INSERT INTO payments (...);



-- transferring money

UPDATE accounts
SET balance = balance - 100
WHERE id = 1;

UPDATE accounts
SET balance = balance + 100
WHERE id = 2;



-- creating user records with related profile data

INSERT INTO users (name)
VALUES ('Waqas');

INSERT INTO profiles (user_id, ...)
SELECT id, ...
FROM users
WHERE name = 'Waqas';



-- save all changes

COMMIT;



-- if any operation fails
-- undo all changes

ROLLBACK;