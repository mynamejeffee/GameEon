USE gameeon;
SELECT * FROM videogame;

-- ETO AY EXAMPLE NG SHOWING NG REMOVED GAMES!
SELECT game_title as removed_games FROM videogame WHERE game_status = 'removed';

-- ETO AY EXAMPLE NG SHOWING NG RELEASED GAMES!
SELECT game_title as available_games FROM videogame WHERE game_status = 'available';

-- yeshhh
-- yessssss
-- ETO AY EXAMPLE NG SHOWING NG UPCOMING GAMES!
SELECT game_title as upcoming_games FROM videogame WHERE game_status = 'upcoming';
