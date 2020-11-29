drop table games;
drop table publishers;
drop table developers;

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


-- Query to check successful load
SELECT * FROM games;

SELECT * FROM publishers;

SELECT * FROM developers;

-- Join tables on games_id
select games.id, games.games_name, games.games_slug, games.released,games.rating, games.platform, games.genres, games.stores, publishers.publishers, developers.developers from games
LEFT JOIN publishers
ON games.games_id = publishers.games_id
LEFT JOIN developers
ON games.games_id = developers.games_id;
