-- Create tables for raw data to be loaded into
CREATE TABLE games (
id INT PRIMARY KEY,
games_id int,
games_name TEXT,
games_slug TEXT,
released date,
rating int,
ratings_count int,
playtime int,
platform_id int,
platform TEXT,
genres TEXT,
stores TEXT
);

CREATE TABLE publishers (
id INT PRIMARY KEY,
games_id int,
publishers TEXT,
publishers_slug TEXT,
publishers_id int
);

CREATE TABLE developers (
id INT PRIMARY KEY,
games_id int,
developers TEXT,
developers_slug TEXT,
developers_id int
);