USE gameeon;

SELECT * FROM catalogue;

SELECT * FROM catalogue ORDER BY game_title;
SELECT * FROM catalogue ORDER BY developer;
SELECT * FROM catalogue ORDER BY publisher;
SELECT * FROM catalogue ORDER BY release_date;
SELECT * FROM catalogue ORDER BY game_status;
SELECT * FROM catalogue ORDER BY genre_id;


-- DISPLAYING REMOVED GAMES
SELECT game_title as removed_games FROM catalogue WHERE game_status = 'removed';

-- DISPLAYING RELEASED GAMES
SELECT game_title as available_games FROM catalogue WHERE game_status = 'available';

-- DISPLAYING UPCOMING GAMES
SELECT game_title as upcoming_games FROM catalogue WHERE game_status = 'upcoming';
SELECT game_title, platform FROM catalogue WHERE platform LIKE '%Mac%';

SELECT * FROM customer;

-- DISPLAYING THE GAME TITLES AND GENRE
SELECT catalogue.game_title game_title, genre.genre_title genre
	FROM catalogue 
	JOIN genre 
	USING (genre_id)
	ORDER BY game_title;

-- MANY TO MANY RELATIONSHIP!
SELECT customer.username, reviews.review
	FROM reviews
	INNER JOIN customer_review
	ON reviews.reviewer_id = customer_review.reviewer_id
	INNER JOIN customer
	ON customer_review.customer_id = customer_review.customer_id;

SELECT reviews.reviewer_id, catalogue.game_title
	FROM catalogue
	INNER JOIN review_game
	ON catalogue.game_id = review_game.game_id
	INNER JOIN reviews
	ON review_game.reviewer_id = review_game.reviewer_id;

SELECT customer.username, catalogue.game_title, review_game.reviewer_id
	FROM customer
	INNER JOIN customer_review
	ON customer.customer_id = customer_review.customer_id
	INNER JOIN reviews
	ON reviews.reviewer_id = customer_review.reviewer_id
	AND reviews.reviewer_id
	LEFT OUTER JOIN review_game
	ON catalogue.game_id = review_game.game_id
	AND review_game.game_id;
/*
SELECT customer.username username, catalogue.game_title game_title, reviews.review review
	FROM customer
	JOIN reviews 
	USING (reviewer_id)
	LEFT JOIN catalogue
	USING (game_id)
	ORDER BY username;

SELECT customer.username username, reviews.review review
	FROM customer
	JOIN reviews
	USING (reviewer_id);

