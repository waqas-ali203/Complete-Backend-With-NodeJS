-- ONE-TO-MANY RELATIONSHIP
-- One user can have many posts
-- users.id -> PRIMARY KEY
-- posts.user_id -> FOREIGN KEY
-- One user -> many posts



-- show all users

SELECT *
FROM users;



-- show all posts

SELECT *
FROM posts;



-- show users and their posts

SELECT
    users.name,
    posts.title
FROM users
JOIN posts
ON users.id = posts.user_id;



-- show posts of Ananya

SELECT
    users.name,
    posts.title,
    posts.status,
    posts.views
FROM users
JOIN posts
ON users.id = posts.user_id
WHERE users.name = 'Ananya';



-- show posts of Rahul

SELECT
    users.name,
    posts.title,
    posts.status,
    posts.views
FROM users
JOIN posts
ON users.id = posts.user_id
WHERE users.name = 'Rahul';



-- count how many posts each user has

SELECT
    users.name,
    COUNT(posts.id) AS total_posts
FROM users
JOIN posts
ON users.id = posts.user_id
GROUP BY users.id, users.name;