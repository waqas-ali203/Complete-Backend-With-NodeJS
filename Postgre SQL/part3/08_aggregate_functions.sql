-- AGGREGATE FUNCTIONS
-- Aggregate functions perform calculations on multiple rows
-- COUNT() -> counts rows
-- SUM() -> calculates total
-- AVG() -> calculates average
-- MIN() -> finds minimum value
-- MAX() -> finds maximum value



-- count total users

SELECT
    COUNT(*) AS total_users
FROM users;



-- count total posts

SELECT
    COUNT(*) AS total_posts
FROM posts;



-- count total comments

SELECT
    COUNT(*) AS total_comments
FROM comments;



-- count total tags

SELECT
    COUNT(*) AS total_tags
FROM tags;



-- calculate total views of all posts

SELECT
    SUM(views) AS total_views
FROM posts;



-- calculate average views of posts

SELECT
    AVG(views) AS average_views
FROM posts;



-- find minimum post views

SELECT
    MIN(views) AS minimum_views
FROM posts;



-- find maximum post views

SELECT
    MAX(views) AS maximum_views
FROM posts;



-- use multiple aggregate functions together

SELECT
    COUNT(*) AS total_posts,
    SUM(views) AS total_views,
    AVG(views) AS average_views,
    MIN(views) AS minimum_views,
    MAX(views) AS maximum_views
FROM posts;



-- count published posts

SELECT
    COUNT(*) AS published_posts
FROM posts
WHERE status = 'published';



-- calculate total views of published posts

SELECT
    SUM(views) AS published_post_views
FROM posts
WHERE status = 'published';



-- calculate average views of published posts

SELECT
    AVG(views) AS average_published_views
FROM posts
WHERE status = 'published';