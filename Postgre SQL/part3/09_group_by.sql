-- GROUP BY -> groups rows based on one or more columns
-- WHERE -> filter normal rows before grouping
-- HAVING -> filter groups after grouping
-- Usually used with aggregate functions



-- count posts for each user

SELECT
    user_id,
    COUNT(*) AS total_posts
FROM posts
GROUP BY user_id;



-- count posts for each user with user names

SELECT
    u.name,
    COUNT(p.id) AS total_posts
FROM users u
INNER JOIN posts p
ON u.id = p.user_id
GROUP BY u.id, u.name;



-- calculate total views for each user

SELECT
    u.name,
    SUM(p.views) AS total_views
FROM users u
INNER JOIN posts p
ON u.id = p.user_id
GROUP BY u.id, u.name;



-- calculate average views for each user

SELECT
    u.name,
    AVG(p.views) AS average_views
FROM users u
INNER JOIN posts p
ON u.id = p.user_id
GROUP BY u.id, u.name;



-- find minimum views for each user

SELECT
    u.name,
    MIN(p.views) AS minimum_views
FROM users u
INNER JOIN posts p
ON u.id = p.user_id
GROUP BY u.id, u.name;



-- find maximum views for each user

SELECT
    u.name,
    MAX(p.views) AS maximum_views
FROM users u
INNER JOIN posts p
ON u.id = p.user_id
GROUP BY u.id, u.name;



-- count posts by status

SELECT
    status,
    COUNT(*) AS total_posts
FROM posts
GROUP BY status;



-- calculate total views by status

SELECT
    status,
    SUM(views) AS total_views
FROM posts
GROUP BY status;



-- calculate average views by status

SELECT
    status,
    AVG(views) AS average_views
FROM posts
GROUP BY status;