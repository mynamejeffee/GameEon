USE gameeon;

SELECT * FROM catalogue;
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

SELECT * FROM reviews;
SELECT * FROM review_game;

-- DISPLAYING THE GAME TITLES AND GENRE
SELECT catalogue.game_title game_title, genre.genre_title genre
	FROM catalogue 
	JOIN genre 
	USING (genre_id)
	ORDER BY game_title;

SELECT customer.username, review_game.review
	FROM reviews
	INNER JOIN review_game
	ON reviews.reviewer_id = review_game.reviewer_id
	INNER JOIN customer
	ON reviews.customer_id = customer.customer_id;

SELECT customer.username, review_game.review, catalogue.game_title
	FROM reviews
	INNER JOIN review_game
	ON reviews.reviewer_id = review_game.reviewer_id
	INNER JOIN customer
	ON reviews.customer_id = customer.customer_id
	INNER JOIN catalogue
	ON catalogue.game_id = review_game.game_id;

/*
SELECT customer.username, reviews.review
	FROM reviews
	INNER JOIN review_game
	ON reviews.reviewer_id =review_game.reviewer_id
	LEFT OUTER JOIN customer
	ON review_game.reviewer_id = review_game.reviewer_id;

SELECT catalogue.game_title, reviews.review
	FROM catalogue
	CROSS JOIN review_game
	ON catalogue.game_id = review_game.game_id
	INNER JOIN reviews
	ON review_game.reviewer_id = review_game.reviewer_id;


SELECT customer.username, catalogue.game_title, reviews.review
	FROM catalogue
	INNER JOIN review_game
	ON catalogue.game_id = review_game.game_id
	INNER JOIN reviews
	ON review_game.reviewer_id = review_game.reviewer_id AND reviews.reviewer_id = review_game.reviewer_id
	INNER JOIN customer
	ON review_game.reviewer_id = review_game.reviewer_id AND reviews.customer_id = customer.customer_id;
/*
-- MANY TO MANY RELATIONSHIP!
SELECT customer.username, reviews.review
	FROM reviews
	INNER JOIN customer_review
	ON reviews.reviewer_id = customer_review.reviewer_id
	INNER JOIN customer
	ON customer_review.customer_id = customer_review.customer_id;

SELECT customer.username, reviews.review, catalogue.game_title
	FROM reviews
	INNER JOIN customer_review
	ON reviews.reviewer_id = customer_review.reviewer_id
	INNER JOIN customer
	ON customer_review.customer_id = customer_review.customer_id
	INNER JOIN catalogue
	ON catalogue.game_id = reviews.game_id;
/*
/*
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

