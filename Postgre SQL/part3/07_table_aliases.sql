-- TABLE ALIAS -> gives a short name to a table
-- Makes queries shorter and easier to read
-- AS is used to create an alias
-- AS is optional



-- use aliases for users and posts

SELECT
    u.name,
    p.title
FROM users AS u
INNER JOIN posts AS p
ON u.id = p.user_id;



-- show user name, post title and views

SELECT
    u.name,
    p.title,
    p.views
FROM users u
INNER JOIN posts p
ON u.id = p.user_id;



-- show published posts with user names

SELECT
    u.name,
    p.title,
    p.status
FROM users u
INNER JOIN posts p
ON u.id = p.user_id
WHERE p.status = 'published';



-- show posts with more than 50 views

SELECT
    u.name,
    p.title,
    p.views
FROM users u
INNER JOIN posts p
ON u.id = p.user_id
WHERE p.views > 50;



-- use aliases with many-to-many relationship

SELECT
    p.title,
    t.name AS tag
FROM posts p
INNER JOIN post_tags pt
ON p.id = pt.post_id
INNER JOIN tags t
ON pt.tag_id = t.id;



-- show all posts and their tags

SELECT
    p.title,
    t.name AS tag
FROM posts p
LEFT JOIN post_tags pt
ON p.id = pt.post_id
LEFT JOIN tags t
ON pt.tag_id = t.id;