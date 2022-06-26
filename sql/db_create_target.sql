DROP DATABASE target_etl;

CREATE DATABASE target_etl;

DROP TABLE IF EXISTS target_etl.movie_actor CASCADE;
DROP TABLE IF EXISTS target_etl.movie_genre CASCADE;
DROP TABLE IF EXISTS target_etl.movie_country CASCADE;

DROP TABLE IF EXISTS target_etl.actor CASCADE;
DROP TABLE IF EXISTS target_etl.movie CASCADE;
DROP TABLE IF EXISTS target_etl.genre CASCADE;
DROP TABLE IF EXISTS target_etl.typeMovie CASCADE;
DROP TABLE IF EXISTS target_etl.country CASCADE;

CREATE TABLE target_etl.actor (
    id  INTEGER NOT NULL,
    name  VARCHAR(500) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE target_etl.movie (
    id  VARCHAR(50) NOT NULL,
    name VARCHAR(500) NOT NULL,
    description  VARCHAR(5000),
    release_year VARCHAR(20) ,
    runtime  VARCHAR(20),
    seasons  VARCHAR(20) ,
    imdb_score  VARCHAR(20) ,
    tmdb_score  VARCHAR(20),
    type_movie INTEGER NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE target_etl.genre (
    id int NOT NULL AUTO_INCREMENT,
    description VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE target_etl.typeMovie (
    id int NOT NULL AUTO_INCREMENT,
    description VARCHAR(100)  NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE target_etl.country (
    id int NOT NULL AUTO_INCREMENT,
    description VARCHAR(100)  NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE target_etl.movie_actor (
    fk_movie VARCHAR(50)  NOT NULL,
    fk_actor INTEGER NOT NULL
);

CREATE TABLE target_etl.movie_genre (
    fk_movie VARCHAR(50)  NOT NULL,
    fk_genre INTEGER NOT NULL
);


CREATE TABLE target_etl.movie_country (
    fk_movie VARCHAR(50) NOT NULL,
    fk_country INTEGER NOT NULL
);


