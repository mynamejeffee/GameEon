--IM Project

-- Creating the database
--CREATE DATABASE GameEon;
USE GameEon;

-- Creating the tables
-- Table for video game

CREATE TABLE videoGame (
	game_id serial PRIMARY KEY,
	game_title varchar(255),
	developer varchar(255),
	publisher varchar(255),
	platform varchar(255),
	game_status varchar(255),
	release_date TIMESTAMP,
)

-- ETO AY EXAMPLE NG GAME!
INSERT INTO videoGame(game_title, developer, publisher, platform, game_status, release_date) VALUES
(
    'Outlast',
    'Red Barrels',
    'Red Barrels',
    'PC, XBox, Mac',
    'available',
    '2013-09-04 16:11:14'
), (
    'Slender: The Arrival',
    'Blue Isle Studios',
    'Blue Isle Studios',
    'PC, Switch, Playstation',
    'removed',
    '2013-10-23 16:00:16'
), (
	'Cyberpunk 2077', 
	'CD PROJEKT RED', 
	'CD PROJEKT RED', 
	'PC, Playstation', 
	'upcoming', 
	'2020-12-10 00:00:00');

SELECT * FROM videogame;

-- ETO AY EXAMPLE NG SHOWING NG REMOVED GAMES!
SELECT game_title as removed_games FROM videogame WHERE game_status = 'removed';

-- ETO AY EXAMPLE NG SHOWING NG RELEASED GAMES!
SELECT game_title as available_games FROM videogame WHERE game_status = 'available';

-- ETO AY EXAMPLE NG SHOWING NG UPCOMING GAMES!
SELECT game_title as upcoming_games FROM videogame WHERE game_status = 'upcoming';
