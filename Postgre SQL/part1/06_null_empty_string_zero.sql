


-- null - unknown/missing val
-- empty string - known string val but it contains no charaters
-- zero - actual numeric value of 0

DROP TABLE IF EXISTS basics.value_examples;

CREATE TABLE basics.value_examples (
    id SERIAL PRIMARY KEY,
    nickname TEXT,
    bio TEXT,
    score INTEGER
);

INSERT INTO basics.value_examples (nickname, bio, score)
VALUES
(NULL, 'learning postgreSQL', 10),
('', 'empty nickname', 20),
('waqas ali', '', 0),
('jhon', NULL, NULL);

-- SELECT * FROM basics.value_examples;

-- SELECT * FROM basics.value_examples WHERE nickname is NULL;
SELECT * FROM basics.value_examples WHERE nickname is NOT NULL;