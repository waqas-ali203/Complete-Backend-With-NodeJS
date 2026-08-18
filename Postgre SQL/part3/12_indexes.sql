-- INDEX -> improves the speed of searching data
-- Indexes help PostgreSQL find rows faster
-- Indexes are commonly created on columns used in WHERE, JOIN and ORDER BY
-- PRIMARY KEY and UNIQUE columns automatically get indexes
-- Indexes can make SELECT queries faster
-- Indexes also require extra storage and can make INSERT/UPDATE/DELETE slightly slower



-- show existing indexes on users

SELECT
    indexname,
    indexdef
FROM pg_indexes
WHERE tablename = 'users';



-- show existing indexes on posts

SELECT
    indexname,
    indexdef
FROM pg_indexes
WHERE tablename = 'posts';



-- create an index on posts.user_id
-- useful because we frequently join posts with users

-- idx_posts_user_id

-- idx -> index
-- posts -> table name
-- user_id -> column name

CREATE INDEX idx_posts_user_id
ON posts(user_id);



-- create an index on posts.status
-- useful when filtering posts by status

CREATE INDEX idx_posts_status
ON posts(status);



-- create an index on posts.views
-- useful when searching or sorting by views

CREATE INDEX idx_posts_views
ON posts(views);



-- create an index on tags.name
-- useful when searching tags by name

CREATE INDEX idx_tags_name
ON tags(name);



-- show indexes on posts after creating indexes

SELECT
    indexname,
    indexdef
FROM pg_indexes
WHERE tablename = 'posts';



-- remove an index

DROP INDEX idx_posts_status;



-- show remaining indexes on posts

SELECT
    indexname,
    indexdef
FROM pg_indexes
WHERE tablename = 'posts';