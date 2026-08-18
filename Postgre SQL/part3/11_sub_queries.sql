-- SUBQUERY -> a query inside another query
-- Inner query runs first
-- Outer query uses the result of the inner query
-- Subqueries can be used with WHERE, FROM, SELECT, etc.



-- show posts written by Ananya

SELECT
    title,
    status,
    views
FROM posts
WHERE user_id = (
    SELECT id
    FROM users
    WHERE name = 'Ananya'
);



-- show posts written by Rahul

SELECT
    title,
    status,
    views
FROM posts
WHERE user_id = (
    SELECT id
    FROM users
    WHERE name = 'Rahul'
);



-- show posts with views greater than the average views

SELECT
    title,
    views
FROM posts
WHERE views > (
    SELECT AVG(views)
    FROM posts
);



-- show posts with views less than the average views

SELECT
    title,
    views
FROM posts
WHERE views < (
    SELECT AVG(views)
    FROM posts
);



-- show the post with the highest views

SELECT
    title,
    views
FROM posts
WHERE views = (
    SELECT MAX(views)
    FROM posts
);



-- show the post with the lowest views

SELECT
    title,
    views
FROM posts
WHERE views = (
    SELECT MIN(views)
    FROM posts
);



-- show users who have at least one post

SELECT
    name
FROM users
WHERE id IN (
    SELECT user_id
    FROM posts
);



-- show users who have no posts

SELECT
    name
FROM users
WHERE id NOT IN (
    SELECT user_id
    FROM posts
);



-- show published posts written by Ananya

SELECT
    title,
    status,
    views
FROM posts
WHERE user_id = (
    SELECT id
    FROM users
    WHERE name = 'Ananya'
)
AND status = 'published';