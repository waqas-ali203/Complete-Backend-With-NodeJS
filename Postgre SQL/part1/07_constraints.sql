-- NOT NULL, UNIQUES, DEFAULT, CHECK

-- app, script, developer 

DROP TABLE IF EXISTS basics.accounts;

CREATE TABLE basics.accounts (
    id SERIAL PRIMARY KEY,

    full_name TEXT NOT NULL,

    email TEXT NOT NULL UNIQUE,

    age INTEGER CHECK (age >= 18),

    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.accounts (full_name, email, age)
-- VALUES ( 'waqas', 'waqas123@gmail.com', 11);
VALUES ( 'waqas', 'waqas123@gmail.com', 20);

SELECT * FROM basics.accounts;