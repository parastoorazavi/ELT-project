DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS platforms;
DROP TABLE IF EXISTS stores;

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Yb87F4
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "games" (
    "games_id" int   NOT NULL,
    "games_name" varchar   NOT NULL,
    "games_slug" varchar   NOT NULL,
    "released" varchar   NOT NULL,
    "rating" decimal   NOT NULL,
    "ratings_count" int   NOT NULL,
    "playtime" int   NOT NULL,
    "platform" varchar   NOT NULL,
    "platform_id" int   NOT NULL,
    "genres" varchar   NOT NULL,
    "stores_id" int   NOT NULL,
    CONSTRAINT "pk_games" PRIMARY KEY (
        "games_id"
     )
);

CREATE TABLE "stores" (
    "store_id" int   NOT NULL,
    "slug_name" varchar   NOT NULL,
    "store_name" varchar   NOT NULL,
    "total_games" int   NOT NULL,
    "domain" varchar   NOT NULL,
    CONSTRAINT "pk_stores" PRIMARY KEY (
        "store_id"
     )
);

CREATE TABLE "platforms" (
    "platform_id" int   NOT NULL,
    "platform" varchar   NOT NULL,
    "games_count" int   NOT NULL,
    CONSTRAINT "pk_platforms" PRIMARY KEY (
        "platform_id"
     )
);

ALTER TABLE "games" ADD CONSTRAINT "fk_games_platform_id" FOREIGN KEY("platform_id")
REFERENCES "platforms" ("platform_id");

ALTER TABLE "games" ADD CONSTRAINT "fk_games_stores_id" FOREIGN KEY("stores_id")
REFERENCES "stores" ("store_id");

-- Joining game list,stores,platorm table to game name,rating store name and domain to buy
SELECT g.games_id,g.games_name,g.released,g.rating,g.genres,p.platform,s.store_id,s.store_name,s.domain
from games g,platforms p, stores s
where g.platform_id = p.platform_id and g.stores_id = s.store_id


