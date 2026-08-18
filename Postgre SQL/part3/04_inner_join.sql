-- INNER JOIN -> returns only matching rows from both tables
-- It matches rows using a related column
-- users.id -> PRIMARY KEY
-- posts.user_id -> FOREIGN KEY



-- show users and their matching posts

SELECT
    users.name,
    posts.title
FROM users
INNER JOIN posts
ON users.id = posts.user_id;



-- show user name, post title and post status

SELECT
    users.name,
    posts.title,
    posts.status
FROM users
INNER JOIN posts
ON users.id = posts.user_id;



-- show published posts with their user

SELECT
    users.name,
    posts.title,
    posts.status
FROM users
INNER JOIN posts
ON users.id = posts.user_id
WHERE posts.status = 'published';



-- show posts with more than 50 views

SELECT
    users.name,
    posts.title,
    posts.views
FROM users
INNER JOIN posts
ON users.id = posts.user_id
WHERE posts.views > 50;



-- show posts created by Ananya

SELECT
    users.name,
    posts.title,
    posts.views
FROM users
INNER JOIN posts
ON users.id = posts.user_id
WHERE users.name = 'Ananya';



-- show posts created by Rahul

SELECT
    users.name,
    posts.title,
    posts.views
FROM users
INNER JOIN posts
ON users.id = posts.user_id
WHERE users.name = 'Rahul';