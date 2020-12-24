USE gameeon;
SELECT * FROM videogame;

-- DISPLAYING REMOVED GAMES
SELECT game_title as removed_games FROM videogame WHERE game_status = 'removed';

-- DISPLAYING RELEASED GAMES
SELECT game_title as available_games FROM videogame WHERE game_status = 'available';

-- DISPLAYING UPCOMING GAMES
SELECT game_title as upcoming_games FROM videogame WHERE game_status = 'upcoming';

-- DISPLAYING THE GAME TITLES AND GENRE
SELECT videogame.game_title game_title, genre.genre_title genre
	FROM videogame 
	LEFT JOIN genre 
	USING (genre_id);