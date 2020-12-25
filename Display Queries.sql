USE gameeon;

SELECT * FROM videogame;
SELECT * FROM videogame ORDER BY game_title;
SELECT * FROM videogame ORDER BY developer;
SELECT * FROM videogame ORDER BY publisher;
SELECT * FROM videogame ORDER BY release_date;
SELECT * FROM videogame ORDER BY game_status;
SELECT * FROM videogame ORDER BY genre_id;


-- DISPLAYING REMOVED GAMES
SELECT game_title as removed_games FROM videogame WHERE game_status = 'removed';

-- DISPLAYING RELEASED GAMES
SELECT game_title as available_games FROM videogame WHERE game_status = 'available';

-- DISPLAYING UPCOMING GAMES
SELECT game_title as upcoming_games FROM videogame WHERE game_status = 'upcoming';
-- SELECT game_title, platform FROM videogame WHERE platform IN ('Playstation');
/*
-- DISPLAYING THE GAME TITLES AND GENRE
SELECT videogame.game_title game_title, genre.genre_title genre
	FROM videogame 
	JOIN genre 
	USING (genre_id)
	ORDER BY game_title;

SELECT * FROM customer;
SELECT * FROM reviews;

SELECT customer.username username, videogame.game_title game_title, reviews.review review
	FROM customer
	JOIN reviews 
	USING (review_id)
	LEFT JOIN videogame
	USING (game_id)
	ORDER BY username;

