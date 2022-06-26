DROP DATABASE stage_etl;

CREATE DATABASE stage_etl;

drop table if exists stage_etl.stage_ds_genre;
drop table if exists stage_etl.stage_ds_credits;
drop table if exists stage_etl.stage_ds_titles;

CREATE TABLE  stage_etl.stage_ds_genre (
 description VARCHAR(500)
);

CREATE TABLE  stage_etl.stage_ds_credits (
 person_id INT,
 id VARCHAR(50),
 name VARCHAR(255),
 character_name VARCHAR(500),
 role VARCHAR(500)
);

CREATE TABLE stage_etl.stage_ds_titles (
 id VARCHAR(255),
 title VARCHAR(500),
 type_name VARCHAR(500),
 description VARCHAR(5500),
 release_year VARCHAR(500), 
 age_certification VARCHAR(500), 
 runtime VARCHAR(500) ,
 genres VARCHAR(500), 
 production_countries VARCHAR(500),
 seasons VARCHAR(500),
 imdb_id VARCHAR(500), 
 imdb_score VARCHAR(500), 
 imdb_votes VARCHAR(500),
 tmdb_popularity VARCHAR(500), 
 tmdb_score VARCHAR(500)
);
