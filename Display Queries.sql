USE gameeon;

SELECT * FROM catalogue;
SELECT * FROM genre;
DESCRIBE review_game;

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
SELECT game_title, platform FROM catalogue WHERE platform LIKE '%PC%' AND platform LIKE '%Playstation%';

SELECT COUNT(*) AS no_of_removed_games FROM catalogue WHERE game_status = 'removed';
SELECT COUNT(*) AS no_of_available_games FROM catalogue WHERE game_status = 'available';
SELECT COUNT(*) AS no_of_upcoming_games FROM catalogue WHERE game_status = 'upcoming';

SELECT developer, game_title FROM catalogue WHERE developer = 'Red Barrels';


SELECT * FROM reviews;
SELECT * FROM review_game;
SELECT * FROM game_customer;
SELECT * FROM customer;

-- DISPLAYING THE GAME TITLES AND GENRE
SELECT genre.genre_title genre, catalogue.game_title game_title
	FROM catalogue 
	JOIN genre 
	USING (genre_id)
	ORDER BY game_title;

SELECT genre.genre_title genre, catalogue.game_title game_title
	FROM catalogue 
	JOIN genre 
	USING (genre_id)
	WHERE genre_title = 'Horror'
	ORDER BY game_title;

-- // THIS IS THE END POINT
SELECT customer.username, reviews.review
	FROM reviews
	INNER JOIN review_game
	ON review_game.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_game.customer_id = customer.customer_id
	ORDER BY username;
SELECT customer.username, reviews.review
	FROM reviews
	INNER JOIN review_game
	ON review_game.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_game.customer_id = customer.customer_id
	WHERE username = 'my_name_is_jeff';

SELECT customer.username, reviews.review, catalogue.game_title
	FROM reviews
	INNER JOIN review_game
	ON review_game.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_game.customer_id = customer.customer_id
	INNER JOIN game_customer
	ON game_customer.game_instance = reviews.game_instance 
	INNER JOIN catalogue
	ON catalogue.game_id = game_customer.game_id
	WHERE username = 'my_name_is_jeff';

SELECT customer.username, reviews.review, catalogue.game_title
	FROM reviews
	INNER JOIN review_game
	ON review_game.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_game.customer_id = customer.customer_id
	INNER JOIN game_customer
	ON game_customer.game_instance = reviews.game_instance 
	INNER JOIN catalogue
	ON catalogue.game_id = game_customer.game_id
	ORDER BY username;

SELECT customer.username, reviews.stars, reviews.review, catalogue.game_title
	FROM reviews
	INNER JOIN review_game
	ON review_game.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_game.customer_id = customer.customer_id
	INNER JOIN game_customer
	ON game_customer.game_instance = reviews.game_instance 
	INNER JOIN catalogue
	ON catalogue.game_id = game_customer.game_id
	ORDER BY stars;

SELECT customer.username, reviews.stars, reviews.review, catalogue.game_title, genre.genre_title
	FROM reviews
	INNER JOIN review_game
	ON review_game.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_game.customer_id = customer.customer_id
	INNER JOIN game_customer
	ON game_customer.game_instance = reviews.game_instance 
	INNER JOIN catalogue
	ON catalogue.game_id = game_customer.game_id
	INNER JOIN genre
	ON catalogue.genre_id = genre.genre_id
	ORDER BY stars;
