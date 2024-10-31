-- Active: 1729180802319@@127.0.0.1@5432@ph

CREATE table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title VARCHAR(25) NOT NULL,
    user_id INTEGER REFERENCES "user"(id) on delete cascade
)



ALTER TABLE post
    alter COLUMN user_id SET NOT NULL;


INSERT INTO "user" (username)
    VALUES ('Aksh'),
            ('Bikash'),
            ('Daksu'),
            ('Rohid');





INSERT INTO post (title, user_id)
VALUES ('First Post', 2),   
       ('Second Post', 4), 
       ('Third Post', 1),
       ('Four Post', 3);

SELECT * FROM post;

SELECT * FROM "user";

SELECT title , username FROM post 
    JOIN "user" ON post.user_id = "user".id;