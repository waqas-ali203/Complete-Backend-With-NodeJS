-- COUNT DISTINCT -> counts only unique values
-- COUNT(*) -> counts all rows
-- COUNT(DISTINCT column) -> counts unique values only



-- count total posts

SELECT
    COUNT(*) AS total_posts
FROM posts;



-- count distinct users who have created posts

SELECT
    COUNT(DISTINCT user_id) AS total_users_with_posts
FROM posts;



-- count distinct post statuses

SELECT
    COUNT(DISTINCT status) AS total_statuses
FROM posts;



-- count distinct post titles

SELECT
    COUNT(DISTINCT title) AS total_unique_titles
FROM posts;



-- count distinct tags used in posts

SELECT
    COUNT(DISTINCT tag_id) AS total_unique_tags
FROM post_tags;



-- count distinct users who have created published posts

SELECT
    COUNT(DISTINCT user_id) AS total_users_with_published_posts
FROM posts
WHERE status = 'published';



-- count distinct users for each post status

SELECT
    status,
    COUNT(DISTINCT user_id) AS total_users
FROM posts
GROUP BY status;