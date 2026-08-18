-- LEFT JOIN -> returns all rows from the left table
-- and matching rows from the right table
-- If there is no match, right table columns become NULL



-- show all users and their posts

SELECT
    users.name,
    posts.title
FROM users
LEFT JOIN posts
ON users.id = posts.user_id;



-- show all users with their post status

SELECT
    users.name,
    posts.title,
    posts.status
FROM users
LEFT JOIN posts
ON users.id = posts.user_id;



-- show all users and only their published posts

SELECT
    users.name,
    posts.title,
    posts.status
FROM users
LEFT JOIN posts
ON users.id = posts.user_id
AND posts.status = 'published';



-- show all users and their total number of posts

SELECT
    users.name,
    COUNT(posts.id) AS total_posts
FROM users
LEFT JOIN posts
ON users.id = posts.user_id
GROUP BY users.id, users.name;



-- show users who have no posts

SELECT
    users.name
FROM users
LEFT JOIN posts
ON users.id = posts.user_id
WHERE posts.id IS NULL;