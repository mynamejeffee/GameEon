USE gameeon;

-- DISPLAYING THE LIST OF GAMES:
SELECT * FROM catalogue;

-- DISPLAYING THE LIST OF GENRES:
SELECT * FROM genre;

-- DISPLAYING REMOVED GAMES:
SELECT game_title as removed_games FROM catalogue WHERE game_status = 'removed';

-- DISPLAYING RELEASED GAMES:
SELECT game_title as available_games FROM catalogue WHERE game_status = 'available';

-- DISPLAYING UPCOMING GAMES:
SELECT game_title as upcoming_games FROM catalogue WHERE game_status = 'upcoming';

-- DISPLAYING LIST OF GAMES ON PLAYSTATION:
SELECT game_title as games_on_Playstation FROM catalogue WHERE platform LIKE '%Playstation%';

-- DISPLAYING GAMES AVAILABLE ON PLAYSTATION:
SELECT game_title as games_available_on_Playstation FROM catalogue WHERE platform LIKE '%Playstation%' AND game_status NOT IN ('removed', 'upcoming') ;

-- DISPLAYING GAMES AVAILABLE ON THE MAC:
SELECT game_title as games_available_on_Mac FROM catalogue WHERE platform LIKE '%Mac%';

-- DISPLAYING GAMES AVAILABLE ON BOTH THE PC AND PLAYSTATION:
SELECT game_title as games_available_on_PC_and_Playstation FROM catalogue WHERE platform LIKE '%PC%' AND platform LIKE '%Playstation%' AND game_status NOT IN ('removed', 'upcoming');

-- DISPLAYING GAMES REMOVED GAMES FROM PLAYSTATION:
SELECT game_title as games_removed_from_Playstation FROM catalogue WHERE platform LIKE '%Playstation%' AND game_status = 'removed';

-- DISPLAYING THE TOTAL NUMBER OF REMOVED GAMES:
SELECT COUNT(*) AS no_of_removed_games FROM catalogue WHERE game_status = 'removed';

-- DISPLAYING THE TOTAL NUMBER OF AVAILABLE GAMES:
SELECT COUNT(*) AS no_of_available_games FROM catalogue WHERE game_status = 'available';

-- DISPLAYING THE TOTAL NUMBER OF UPCOMING GAMES:
SELECT COUNT(*) AS no_of_upcoming_games FROM catalogue WHERE game_status = 'upcoming';

-- DISPLAYING GAMES DEVELOPED BY Red Barrels:
SELECT developer, game_title FROM catalogue WHERE developer = 'Red Barrels';


SELECT * FROM reviews;
SELECT * FROM review_game;
SELECT * FROM game_customer;

-- DISPLAYING THE LIST OF CUSTOMERS:
SELECT * FROM customer;

-- DISPLAYING THE GAME TITLES AND GENRE:
SELECT genre.genre_title genre, catalogue.game_title game_title
	FROM catalogue 
	JOIN genre 
	USING (genre_id)
	ORDER BY genre_title;

-- DISPLAYING THE LIST OF HORROR GAMES:
SELECT genre.genre_title genre, catalogue.game_title game_title
	FROM catalogue 
	JOIN genre 
	USING (genre_id)
	WHERE genre_title = 'Horror'
	ORDER BY game_title;

-- // THIS IS THE END POINT
-- DISPLAYING THE LIST OF USERNAMES AND THEIR REVIEWS:
SELECT customer.username, reviews.review
	FROM reviews
	INNER JOIN review_game
	ON review_game.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_game.customer_id = customer.customer_id
	ORDER BY username;

-- DISPLAYING THE REVIEWS OF A SINGLE CUSTOMER:
SELECT customer.username, reviews.review
	FROM reviews
	INNER JOIN review_game
	ON review_game.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_game.customer_id = customer.customer_id
	WHERE username = 'deutschland1999';

-- DISPLAYING THE REVIEWS OF A SINGLE CUSTOMER AND ON WHICH GAME:
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
	WHERE username = 'deutschland1999';

-- DISPLAYING THE LIST OF ALL REVIEWS BY ALL USERS AND ON WHICH GAMES:
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

-- DISPLAYING THE STAR AND REVIEWS OF A SINGLE USER AND ON WHICH GAME:
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

-- DISPLAYING THE STAR AND REVIEWS OF A SINGLE USER AND ON WHICH GAME AND GENRE THE GAME BELONGS IN:
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
