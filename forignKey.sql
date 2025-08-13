create table "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) not NULL
);

create table post (
    id SERIAL PRIMARY KEY,
    title TEXT not NULL,
    -- user_id INT REFERENCES "user"(id) on delete CASCADE not NULL -------------- Delete the posts when the user is deleted
    -- user_id INT REFERENCES "user"(id) on delete set NULL ----------------------Set null when the user is created
    user_id INT REFERENCES "user"(id) on delete set DEFAULT DEFAULT 2
);

Alter table post
    alter column usser_id set not NULL;


-- Insert dummy users
INSERT INTO "user" (username) VALUES 
('Amit '),
('Khalid'),
('Mohona'),
('Khabib'),
('Yousuf');

-- Insert dummy posts
INSERT INTO post (title, user_id) VALUES
('My first blog post', 1),
('Travel adventures', 2),
('Cooking recipes', 3),
('Tech review: New smartphone', 1),
('Gardening tips', 4),
('Book recommendations', 2),
('Fitness journey', 5),
('DIY home projects', 4),
('Movie reviews', 5),
('Career advice', 3);


Drop table "user";
Drop table post;


select * from "user";
select * from post

-- When delete a user the corresponding posts will be deleted also.
Delete from "user"
    where id = 1;
    