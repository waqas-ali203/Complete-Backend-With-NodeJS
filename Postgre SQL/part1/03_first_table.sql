

DROP TABLE IF EXISTS basic.students;

CREATE TABLE basics.students (

    -- create an auto increment integer
    -- 1, -> 2 , -> 3 and so on, 4, 5
    -- primary key simply means this colum uniquely indentifies eahc row

    id SERIAL PRIMARY KEY,

    -- text - string data
    -- not null means this col is required
    -- postgre is goin to reject if this name value is not present

    name TEXT NOT NULL,

    -- unique means - no 2 students is going to have same email

    email TEXT NOT NULL UNIQUE,

    age INTEGER CHECK (age >= 18),

    -- TIMESTAMP -> stores date and time format
    -- default means if you dont give any value it will take by default
    created_at TIMESTAMP DEFAULT NOW()
);

-- insert some data

INSERT INTO basics.students (name, email, age)
VALUES 
('Waqas', 'waqas123@gmail.com', 23),
('Ahmad', 'ahmad123@gmail.com', 45);