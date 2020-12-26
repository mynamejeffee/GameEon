-- GAMEEON: A VIDEO GAME INVENTORY MANAGEMENT SYSTEM FOR RETAILERS

-- Creating the database
-- CREATE DATABASE GameEon;
USE gameeon;

--SET FOREIGN_KEY_CHECKS = 1;

/*
-- Creating the tables

CREATE TABLE genre (
	genre_id varchar(5) PRIMARY KEY,
	genre_title varchar(255) NOT NULL
);


CREATE TABLE catalogue(
	game_id serial PRIMARY KEY,
	game_title varchar(255),
	developer varchar(255),
	publisher varchar(255),
	platform SET ('PC', 'Mac', 'Linux', 'XBox', 'Playstation', 'Nintendo_Switch'),
	game_status ENUM ('available', 'upcoming', 'removed') NOT NULL,
	release_date DATE,
	genre_id varchar(5),
	FOREIGN KEY (genre_id)
	REFERENCES genre(genre_id)
);

CREATE TABLE customer (
	customer_id serial PRIMARY KEY,
	username varchar(20),
	e_mail varchar(254),
	billing_info varchar(16),
	country varchar(255),
	region_state varchar(255),
	city varchar(255),
	review_id varchar(8),
	FOREIGN KEY (review_id) 
	REFERENCES reviews(review_id)
);
*/
CREATE TABLE reviews (
	review_id varchar(8) PRIMARY key,
	stars int(5),
	review text,
	game_id serial,
	FOREIGN KEY (game_id) 
	REFERENCES catalogue(game_id)
);
