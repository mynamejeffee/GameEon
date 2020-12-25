-- GAMEEON: A VIDEO GAME INVENTORY MANAGEMENT SYSTEM FOR RETAILERS

-- Creating the database
-- CREATE DATABASE GameEon;
USE gameeon;

-- Creating the tables
-- Table for video game
CREATE TABLE genre (
	genre_id varchar(8) PRIMARY KEY,
	genre_title varchar(255) NOT NULL
);


CREATE TABLE videoGame (
	game_id serial,
	game_title varchar(255),
	developer varchar(255),
	publisher varchar(255),
	platform varchar(255),
	game_status varchar(255),
	release_date DATE,
	genre_id varchar(8),
	PRIMARY KEY (game_id),
	FOREIGN KEY (genre_id)
	REFERENCES genre(genre_id)
);





