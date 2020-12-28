-- Inserting the genres
USE gameeon;


/* 
UPCOMING GAMES: 4, 5, 12, 29, 30, 34, 36, 39, 43, 44, 48, 50, 53, 54, 55, 57, 61.
REMOVED GAMES: 2, 9, 11, 16, 20, 22, 38, 41, 58.
*/

--// THIS IS THE END POINT

INSERT INTO review_game(reviewer_id, customer_id) VALUES 
(
    'REV00001', 1
), (
    'REV00002', 2
), (
    'REV00003', 3
);

/*
INSERT INTO game_customer(game_instance, game_id) VALUES
    ('GM001', 1), ('GM003', 3), ('GM006', 6), ('GM007', 7), 
    ('GM008', 8), ('GM010', 10), ('GM013', 13), ('GM014', 14), 
    ('GM015', 15), ('GM017', 17), ('GM018', 18), ('GM019', 19), 
    ('GM021', 21), ('GM023', 23), ('GM024', 24), ('GM025', 25), 
    ('GM026', 26), ('GM027', 27), ('GM028', 28), ('GM031', 31), 
    ('GM032', 32), ('GM035', 35), ('GM037', 37), ('GM040', 40), 
    ('GM042', 42), ('GM045', 45), ('GM046', 46), ('GM047', 47), 
    ('GM049', 49), ('GM051', 51), ('GM052', 52), ('GM053', 53), 
    ('GM056', 56), ('GM057', 57), ('GM059', 59), ('GM062', 62), 
    ('GM063', 63);


-- Inserting reviews
INSERT INTO reviews(game_instance, reviewer_id, stars, review) VALUES
(
    'GM001',
    'REV00001',
    4,
    'good game'
), (
    'GM004', 
    'REV00001',
    2,
    'I hate this game!!'
), (
    'GM001',
    'REV00002',
    4,
    'THIS IS THE BEST GAME!'
),(
    'GM002',
    'REV00003',
    5,
    'Ich liebe dieses Spiel!'
), (
    'GM003',
    'REV00003',
    1,
    'Ich hasse alles uber das!!!'
),(
    'GM001',
    'REV00003',
    5,
    'Das ist gut! Es ist wirklich gut!'
);