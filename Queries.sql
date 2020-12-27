-- GAMEEON: A VIDEO GAME INVENTORY MANAGEMENT SYSTEM FOR RETAILERS

-- Creating the database
CREATE DATABASE GameEon;
USE gameeon;
--SET FOREIGN_KEY_CHECKS = 0;
--DROP TABLE customer;

-- Creating the tables
CREATE TABLE reviews_to_customer(
	reviewer_id varchar(8),
	FOREIGN KEY (reviewer_id)
	REFERENCES reviews(reviewer_id)
);

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

-- // THIS IS THE END POINT

CREATE TABLE review_game (
	reviewer_id varchar(8) PRIMARY KEY,
	customer_id serial,
	FOREIGN KEY (customer_id)
	REFERENCES customer(customer_id)
);

CREATE TABLE customer (
	customer_id serial PRIMARY KEY,
	username varchar(20) UNIQUE NOT NULL,
	e_mail varchar(254) UNIQUE,
	billing_info varchar(16),
	country varchar(255),
	region_state varchar(255),
	city varchar(255)
);

CREATE TABLE customer_review (
	cus_rev_id 	char(8) PRIMARY KEY,
	customer_id serial,
	reviewer_id varchar(8),
	FOREIGN KEY (customer_id) 
	REFERENCES customer(customer_id),
	FOREIGN KEY (reviewer_id) 
	REFERENCES reviews(reviewer_id)
);

CREATE TABLE reviews(
	game_instance varchar(5),
	reviewer_id varchar(8),
	stars tinyint(1),
	review text,
	FOREIGN KEY (game_instance) 
	REFERENCES game_customer(game_instance),
	FOREIGN KEY (reviewer_id) 
	REFERENCES review_game(reviewer_id)
);

CREATE TABLE game_customer (
	game_instance varchar(5) PRIMARY KEY,
	game_id serial,
	FOREIGN KEY (game_id)
	REFERENCES catalogue(game_id)
);