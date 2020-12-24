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


INSERT INTO genre(genre_id, genre_title) VALUES 
	('SHOOTER1', 'Shooter'),
	('HORROR01', 'Horror'),
	('CYBERP01', 'Cyberpunk');

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

-- ETO AY EXAMPLE NG GAME!
INSERT INTO videoGame(game_title, developer, publisher, platform, game_status, release_date, genre_id) VALUES
(
    'Outlast',
    'Red Barrels',
    'Red Barrels',
    'PC, XBox, Mac',
    'available',
    '2013-09-04',
    'HORROR01'
), (
    'Slender: The Arrival',
    'Blue Isle Studios',
    'Blue Isle Studios',
    'PC, Switch, Playstation',
    'removed',
    '2013-10-23',
    'HORROR01'
), (
	'Cyberpunk 2077', 
	'CD PROJEKT RED', 
	'CD PROJEKT RED', 
	'PC, Playstation', 
	'upcoming', 
	'2020-12-10',
	'CYBERP01');



