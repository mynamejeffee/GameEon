-- GAMEEON: A VIDEO GAME INVENTORY MANAGEMENT SYSTEM FOR RETAILERS

-- CREATING THE DATABASE
CREATE DATABASE GameEon;
USE GameEon;

--SET FOREIGN_KEY_CHECKS = 0;
--DROP TABLE customer_library, library_game;

-- CREATING THE GENRE TABLE:
CREATE TABLE genre (
	genre_id varchar(5) PRIMARY KEY,
	genre_title varchar(255) NOT NULL
);

-- CREATING THE CATALOGUE TABLE:
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

-- CREATING THE CUSTOMER TABLE:
CREATE TABLE customer (
	customer_id serial PRIMARY KEY,
	username varchar(20) UNIQUE NOT NULL,
	e_mail varchar(254) UNIQUE,
	billing_info varchar(16),
	country varchar(255),
	region_state varchar(255),
	city varchar(255)
);

-- CREATING THE REVIEW CUSTOMER JUNCTION TABLE:
CREATE TABLE review_customer (
	reviewer_id varchar(8) PRIMARY KEY,
	customer_id serial,
	FOREIGN KEY (customer_id)
	REFERENCES customer(customer_id)
);

-- CREATING THE GAME_GAMEINSTANCE JUNCTION TABLE:
CREATE TABLE game_gameInstance (
	game_instance varchar(5) PRIMARY KEY,
	game_id serial,
	FOREIGN KEY (game_id)
	REFERENCES catalogue(game_id)
);

-- CREATING THE REVIEWS TABLE:
CREATE TABLE reviews(
	game_instance varchar(5),
	reviewer_id varchar(8),
	stars tinyint(1),
	review text,
	FOREIGN KEY (game_instance) 
	REFERENCES game_gameInstance(game_instance),
	FOREIGN KEY (reviewer_id) 
	REFERENCES review_customer(reviewer_id)
);

-- CREATING THE CUSTOMER_LIBRARY JUNCTION TABLE:
CREATE TABLE customer_library (
	library_id varchar(5) PRIMARY KEY,
	customer_id serial,
	FOREIGN KEY (customer_id)
	REFERENCES customer(customer_id)
);

-- CREATING THE LIBRARY_GAME JUNCTION TABLE:
CREATE TABLE library_game (
	library_id varchar(5),
	game_instance varchar(5),
	FOREIGN KEY (library_id)
	REFERENCES customer_library(library_id),
	FOREIGN KEY (game_instance)
	REFERENCES game_gameInstance(game_instance)
);

-- CREATING THE SALES TABLE:
CREATE TABLE sales (
	sale_id int(5) PRIMARY KEY,
	price float(6),
	profit float(6),
	game_id serial,
	FOREIGN KEY (game_id)
	REFERENCES catalogue(game_id)
);

/* ======================================= BACKUP =========================================
CREATE TABLE reviews_to_customer(
	reviewer_id varchar(8),
	FOREIGN KEY (reviewer_id)
	REFERENCES reviews(reviewer_id)
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
*/