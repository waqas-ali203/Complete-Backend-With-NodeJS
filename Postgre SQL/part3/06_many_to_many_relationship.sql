-- MANY-TO-MANY RELATIONSHIP
-- One post can have many tags
-- One tag can belong to many posts
-- post_tags is the junction/bridge table
-- posts.id -> FOREIGN KEY in post_tags
-- tags.id -> FOREIGN KEY in post_tags



-- show all posts

SELECT *
FROM posts;



-- show all tags

SELECT *
FROM tags;



-- show the relationship between posts and tags

SELECT
    posts.title,
    tags.name AS tag
FROM posts
INNER JOIN post_tags
ON posts.id = post_tags.post_id
INNER JOIN tags
ON post_tags.tag_id = tags.id;



-- show tags for PostgreSQL Joins Explained

SELECT
    posts.title,
    tags.name AS tag
FROM posts
INNER JOIN post_tags
ON posts.id = post_tags.post_id
INNER JOIN tags
ON post_tags.tag_id = tags.id
WHERE posts.title = 'PostgreSQL Joins Explained';



-- show posts that have the sql tag

SELECT
    posts.title,
    tags.name AS tag
FROM posts
INNER JOIN post_tags
ON posts.id = post_tags.post_id
INNER JOIN tags
ON post_tags.tag_id = tags.id
WHERE tags.name = 'sql';



-- count tags for each post

SELECT
    posts.title,
    COUNT(tags.id) AS total_tags
FROM posts
LEFT JOIN post_tags
ON posts.id = post_tags.post_id
LEFT JOIN tags
ON post_tags.tag_id = tags.id
GROUP BY posts.id, posts.title;



-- count posts for each tag

SELECT
    tags.name,
    COUNT(post_tags.post_id) AS total_posts
FROM tags
LEFT JOIN post_tags
ON tags.id = post_tags.tag_id
GROUP BY tags.id, tags.name;