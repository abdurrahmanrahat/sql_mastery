CREATE Table "users"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(20) NOT NULL
)

CREATE Table posts(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES users(id)
)

ALTER Table posts 
    alter COLUMN user_id set NOT NULL;

INSERT INTO users (username)
VALUES
('alice01'),
('bob_smith'),
('charlie2025'),
('diana_k'),
('edward99'),
('frankie'),
('grace_lee'),
('henry88'),
('irene_w'),
('jackson20');

SELECT * FROM users;

-- data insert on posts

INSERT INTO posts (title, user_id)
VALUES
('My first post!', 1),
('Learning SQL is fun', 2),
('Building my portfolio website', 3),
('Top 5 productivity hacks', 4),
('Traveling to Japan soon!', 5),
('How to stay motivated', 6),
('Favorite programming languages', 7),
('Daily workout routine', 8),
('Thoughts on AI and the future', 9),
('Book recommendations for 2025', 10);

SELECT * FROM posts;

SELECT title, username FROM posts
    JOIN users on posts.user_id = users.id;

SELECT title, username FROM posts
    FULL OUTER JOIN users on posts.user_id = users.id;
