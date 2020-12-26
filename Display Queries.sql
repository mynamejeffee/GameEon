USE gameeon;

SELECT * FROM catalogue;

/*
SELECT * FROM catalogue ORDER BY game_title;
SELECT * FROM catalogue ORDER BY developer;
SELECT * FROM catalogue ORDER BY publisher;
SELECT * FROM catalogue ORDER BY release_date;
SELECT * FROM catalogue ORDER BY game_status;
SELECT * FROM catalogue ORDER BY genre_id;
*/

-- DISPLAYING REMOVED GAMES
SELECT game_title as removed_games FROM catalogue WHERE game_status = 'removed';

-- DISPLAYING RELEASED GAMES
SELECT game_title as available_games FROM catalogue WHERE game_status = 'available';

-- DISPLAYING UPCOMING GAMES
SELECT game_title as upcoming_games FROM catalogue WHERE game_status = 'upcoming';
SELECT game_title, platform FROM catalogue WHERE platform LIKE '%Mac%';

-- DISPLAYING THE GAME TITLES AND GENRE
SELECT catalogue.game_title game_title, genre.genre_title genre
	FROM catalogue 
	JOIN genre 
	USING (genre_id)
	ORDER BY game_title;

SELECT * FROM customer;
SELECT * FROM reviews;

SELECT customer.username username, catalogue.game_title game_title, reviews.review review
	FROM customer
	JOIN reviews 
	USING (review_id)
	LEFT JOIN catalogue
	USING (game_id)
	ORDER BY username;

