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
