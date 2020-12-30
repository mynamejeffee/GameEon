USE GameEon;

-- DISPLAYING THE LIST OF GAMES:
SELECT * FROM catalogue;

-- DISPLAYING THE LIST OF GENRES:
SELECT * FROM genre;

/*
SELECT * FROM reviews;
SELECT * FROM review_customer;
SELECT * FROM game_gameInstance;
*/

-- DISPLAYING THE GAME TITLES AND GENRE:
SELECT genre.genre_title genre, catalogue.game_title game_title
	FROM catalogue 
	JOIN genre 
	USING (genre_id)
	ORDER BY genre_title;

-- DISPLAYING THE LIST OF HORROR GAMES:
SELECT catalogue.game_title horror_games
	FROM catalogue 
	JOIN genre 
	USING (genre_id)
	WHERE genre_title = 'Horror'
	ORDER BY game_title;

-- DISPLAYING REMOVED GAMES:
SELECT game_title as removed_games FROM catalogue WHERE game_status = 'removed';

-- DISPLAYING RELEASED GAMES:
SELECT game_title as available_games FROM catalogue WHERE game_status = 'available';

-- DISPLAYING UPCOMING GAMES:
SELECT game_title as upcoming_games FROM catalogue WHERE game_status = 'upcoming';

-- DISPLAYING THE TOTAL NUMBER OF REMOVED GAMES:
SELECT COUNT(*) AS no_of_removed_games FROM catalogue WHERE game_status = 'removed';

-- DISPLAYING THE TOTAL NUMBER OF AVAILABLE GAMES:
SELECT COUNT(*) AS no_of_available_games FROM catalogue WHERE game_status = 'available';

-- DISPLAYING THE TOTAL NUMBER OF UPCOMING GAMES:
SELECT COUNT(*) AS no_of_upcoming_games FROM catalogue WHERE game_status = 'upcoming';

-- DISPLAYING LIST OF GAMES ON PLAYSTATION:
SELECT game_title as games_on_Playstation FROM catalogue WHERE platform LIKE '%Playstation%';

-- DISPLAYING GAMES AVAILABLE ON PLAYSTATION:
SELECT game_title as games_available_on_Playstation FROM catalogue WHERE platform LIKE '%Playstation%' AND game_status NOT IN ('removed', 'upcoming') ;

-- DISPLAYING GAMES AVAILABLE ON BOTH THE MAC AND PLAYSTATION:
SELECT game_title as games_available_on_Mac_and_Playstation FROM catalogue WHERE platform LIKE '%Mac%' AND platform LIKE '%Playstation%' AND game_status NOT IN ('removed', 'upcoming');

-- DISPLAYING GAMES REMOVED GAMES FROM PLAYSTATION:
SELECT game_title as games_removed_from_Playstation FROM catalogue WHERE platform LIKE '%Playstation%' AND game_status = 'removed';

-- DISPLAYING GAMES DEVELOPED BY Valve:
SELECT developer, game_title FROM catalogue WHERE developer = 'Valve';

-- DISPLAYING THE LIST OF CUSTOMERS:
SELECT * FROM customer;

-- DISPLAYING THE LIST OF CUSTOMERS WHO ARE IN THE USA:
SELECT * FROM customer WHERE country = 'United States of America';
/*
SELECT * FROM library_game;
*/

-- // THIS IS THE END POINT
-- DISPLAYING THE LIST OF USERNAMES AND THEIR REVIEWS:
SELECT customer.username, reviews.review
	FROM reviews
	INNER JOIN review_customer
	ON review_customer.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_customer.customer_id = customer.customer_id
	ORDER BY username;
/*
-- DISPLAYING THE REVIEWS OF A SINGLE CUSTOMER:
SELECT customer.username, reviews.review
	FROM reviews
	INNER JOIN review_customer
	ON review_customer.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_customer.customer_id = customer.customer_id
	WHERE username = 'deutschland1999';

*/
-- DISPLAYING THE REVIEWS OF A SINGLE CUSTOMER AND ON WHICH GAME:
SELECT customer.username, reviews.review, catalogue.game_title
	FROM reviews
	INNER JOIN review_customer
	ON review_customer.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_customer.customer_id = customer.customer_id
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_instance = reviews.game_instance 
	INNER JOIN catalogue
	ON catalogue.game_id = game_gameInstance.game_id
	WHERE username = 'deutschland1999'
	ORDER BY stars;

/*
-- DISPLAYING THE LIST OF ALL REVIEWS BY ALL USERS AND ON WHICH GAMES:
SELECT customer.username, reviews.review, catalogue.game_title
	FROM reviews
	INNER JOIN review_customer
	ON review_customer.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_customer.customer_id = customer.customer_id
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_instance = reviews.game_instance 
	INNER JOIN catalogue
	ON catalogue.game_id = game_gameInstance.game_id
	ORDER BY username;

-- DISPLAYING THE STAR AND REVIEWS OF A SINGLE USER AND ON WHICH GAME:
SELECT customer.username, reviews.stars, reviews.review, catalogue.game_title
	FROM reviews
	INNER JOIN review_customer
	ON review_customer.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_customer.customer_id = customer.customer_id
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_instance = reviews.game_instance 
	INNER JOIN catalogue
	ON catalogue.game_id = game_gameInstance.game_id
	ORDER BY stars;
*/

-- DISPLAYING THE STAR AND REVIEWS OF A SINGLE USER AND ON WHICH GAME AND GENRE THE GAME BELONGS IN:
SELECT customer.username, reviews.stars, reviews.review, catalogue.game_title, genre.genre_title
	FROM reviews
	INNER JOIN review_customer
	ON review_customer.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_customer.customer_id = customer.customer_id
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_instance = reviews.game_instance 
	INNER JOIN catalogue
	ON catalogue.game_id = game_gameInstance.game_id
	INNER JOIN genre
	ON catalogue.genre_id = genre.genre_id
	ORDER BY stars;

-- DISPLAYING THE REVIEWS FOR THE GAME Katana ZERO:
SELECT customer.username, reviews.stars, reviews.review, catalogue.game_title, genre.genre_title
	FROM reviews
	INNER JOIN review_customer
	ON review_customer.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_customer.customer_id = customer.customer_id
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_instance = reviews.game_instance 
	INNER JOIN catalogue
	ON catalogue.game_id = game_gameInstance.game_id
	INNER JOIN genre
	ON catalogue.genre_id = genre.genre_id
	WHERE game_title = 'Katana ZERO'
	ORDER BY stars;

-- DISPLAYING THE REVIEWS FOR THE CYBERPUNK GENRE:
SELECT customer.username, reviews.stars, reviews.review, catalogue.game_title, genre.genre_title
	FROM reviews
	INNER JOIN review_customer
	ON review_customer.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_customer.customer_id = customer.customer_id
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_instance = reviews.game_instance 
	INNER JOIN catalogue
	ON catalogue.game_id = game_gameInstance.game_id
	INNER JOIN genre
	ON catalogue.genre_id = genre.genre_id
	WHERE genre_title = 'Cyberpunk'
	ORDER BY stars;

-- DISPLAYING CUSTOMERS WHO DIDN'T LEAVE A TEXT REVIEW ON WHICH GAMES:
SELECT customer.username, reviews.stars, reviews.review, catalogue.game_title
	FROM reviews
	INNER JOIN review_customer
	ON review_customer.reviewer_id = reviews.reviewer_id
	INNER JOIN customer
	ON review_customer.customer_id = customer.customer_id
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_instance = reviews.game_instance 
	INNER JOIN catalogue
	ON catalogue.game_id = game_gameInstance.game_id
	INNER JOIN genre
	ON catalogue.genre_id = genre.genre_id
	WHERE reviews.review IS NULL
	ORDER BY stars;

-- DISPLAYING CUSTOMERS WHO HAVEN'T BOUGHT A GAME YET:
SELECT customer.username customers_with_no_game
	FROM customer
	INNER JOIN customer_library
	ON customer_library.customer_id = customer.customer_id
	INNER JOIN library_game
	ON library_game.library_id = customer_library.library_id
	WHERE library_game.game_instance IS NULL;

-- DISPLAYING LIST OF GAMES WITH REVIEWS:
SELECT DISTINCT catalogue.game_title games_with_reviews
	FROM reviews
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_instance = reviews.game_instance 
	INNER JOIN catalogue
	ON catalogue.game_id = game_gameInstance.game_id
	WHERE (game_gameInstance.game_instance) IN (reviews.game_instance) 
	ORDER BY game_title;

-- DISPLAYING LIST OF GAMES WITH REVIEWS:
SELECT DISTINCT catalogue.game_title games_without_reviews
	FROM reviews
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_instance = reviews.game_instance 
	INNER JOIN catalogue
	ON catalogue.game_id = game_gameInstance.game_id
	WHERE game_gameInstance.game_instance NOT IN (reviews.game_instance);

-- DISPLAYING THE GAMES EACH CUSTOMER HAS BOUGHT:
SELECT customer.username, catalogue.game_title
	FROM customer
	INNER JOIN customer_library
	ON customer.customer_id = customer_library.customer_id
	INNER JOIN library_game
	ON customer_library.library_id = library_game.library_id
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_instance = library_game.game_instance
	INNER JOIN catalogue
	ON catalogue.game_id = game_gameInstance.game_id
	ORDER BY username;

-- DISPLAYING GAMES BOUGHT BY CUSTOMER taylor_swift<3<3:
SELECT customer.username, catalogue.game_title
	FROM customer
	INNER JOIN customer_library
	ON customer.customer_id = customer_library.customer_id
	INNER JOIN library_game
	ON customer_library.library_id = library_game.library_id
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_instance = library_game.game_instance
	INNER JOIN catalogue
	ON catalogue.game_id = game_gameInstance.game_id
	WHERE customer.username = 'taylor_swift<3<3'
	ORDER BY username;

-- DISPLAYING THE LIST OF CUSTOMERS WHO BOUGHT THE GAME Katana ZERO:
SELECT customer.username, catalogue.game_title
	FROM customer
	INNER JOIN customer_library
	ON customer.customer_id = customer_library.customer_id
	INNER JOIN library_game
	ON customer_library.library_id = library_game.library_id
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_instance = library_game.game_instance
	INNER JOIN catalogue
	ON catalogue.game_id = game_gameInstance.game_id
	WHERE catalogue.game_title = 'Katana ZERO'
	ORDER BY username;

-- DISPLAYING THE SALES OF EACH GAME:
SELECT catalogue.game_title, catalogue.developer, catalogue.publisher, sales.price price_in_$, sales.profit profit_in_$
	FROM catalogue
	JOIN sales
	ON catalogue.game_id = sales.game_id
	ORDER BY sales.price;
/*
-- DISPLAYING THE NUMBER OF TIMES A GAME HAS BEEN BOUGHT AND IT'S PROFIT:
SELECT catalogue.game_title, sales.profit
	FROM catalogue
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_id = catalogue.game_id
	INNER JOIN library_game
	ON library_game.game_instance =game_gameInstance.game_instance
	INNER JOIN sales
	ON sales.game_id = catalogue.game_id;

SELECT (sales.profit), COUNT(sales.profit)
	FROM catalogue
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_id = catalogue.game_id
	INNER JOIN library_game
	ON library_game.game_instance =game_gameInstance.game_instance
	INNER JOIN sales
	ON sales.game_id = catalogue.game_id
	GROUP BY sales.profit;
*/

-- DISPLAYING THE TOTAL PROFIT PER GAME:
SELECT ROUND ((sales.profit * count(sales.profit)), 3) total_profit_in_$, catalogue.game_title
	FROM catalogue
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_id = catalogue.game_id
	INNER JOIN library_game
	ON library_game.game_instance =game_gameInstance.game_instance
	INNER JOIN sales
	ON sales.game_id = catalogue.game_id
	GROUP BY catalogue.game_title
	ORDER BY game_title;

-- DISPLAYING THE TOTAL PROFIT OF THE GAME Outlast:
SELECT ROUND (SUM(Sales.profit), 3) as Outlast_profit_in_$
	FROM catalogue
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_id = catalogue.game_id
	INNER JOIN library_game
	ON library_game.game_instance =game_gameInstance.game_instance
	INNER JOIN sales
	ON sales.game_id = catalogue.game_id
	WHERE game_title = 'Outlast';

-- DISPLAYING TOTAL PROFIT:
SELECT ROUND(SUM(Sales.profit), 3) overall_profit_in_$
	FROM catalogue
	INNER JOIN game_gameInstance
	ON game_gameInstance.game_id = catalogue.game_id
	INNER JOIN library_game
	ON library_game.game_instance =game_gameInstance.game_instance
	INNER JOIN sales
	ON sales.game_id = catalogue.game_id;