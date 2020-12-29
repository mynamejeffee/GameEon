-- Inserting the genres
USE GameEon;

/* 
UPCOMING GAMES: 4, 5, 12, 29, 30, 34, 36, 39, 43, 44, 48, 50, 53, 54, 55, 57, 61.
REMOVED GAMES: 2, 9, 11, 16, 20, 22, 38, 41, 58.
*/

--// THIS IS THE END POINT

INSERT INTO review_game(reviewer_id, customer_id) VALUES 
    ('REV00001', 1), ('REV00002', 2), ('REV00003', 3),
    ('REV00004', 4), ('REV00005', 5), ('REV00006', 6),
    ('REV00007', 7), ('REV00008', 8), ('REV00009', 9),
    ('REV00010', 10), ('REV00011', 11), ('REV00012', 12),
    ('REV00013', 13), ('REV00014', 14), ('REV00015', 15),
    ('REV00016', 16), ('REV00017', 17), ('REV00018', 18),
    ('REV00019', 19), ('REV00020', 20), ('REV00021', 21),
    ('REV00022', 22), ('REV00023', 23), ('REV00024', 24),
    ('REV00025', 25);


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

INSERT INTO customer_library(lib_cust_id, customer_id) VALUES 
    ('LB001', 1), ('LB002', 2), ('LB003', 3), ('LB004', 4),
    ('LB005', 5), ('LB006', 6), ('LB007', 7), ('LB008', 8),
    ('LB009', 9), ('LB010', 10), ('LB011',11), ('LB012', 12),
    ('LB013', 13),('LB014', 14), ('LB015', 15), ('LB016', 16), 
    ('LB017', 17), ('LB018', 18), ('LB019', 19), ('LB020', 20), 
    ('LB021', 21), ('LB022',22), ('LB023', 23), ('LB024', 24), 
    ('LB025', 25);

INSERT INTO library_game(lib_cust_id, game_instance) VALUES
    ('LB001', 'GM003'), ('LB001', 'GM006'), ('LB001', 'GM053'), ('LB002', 'GM001'),
    ('LB003', 'GM003'), ('LB003', 'GM059'), ('LB003', 'GM001'), ('LB003', 'GM045'),
    ('LB004', 'GM024'), ('LB004', 'GM056'), ('LB005', 'GM021'), ('LB006', 'GM052'),
    ('LB007', 'GM035'), ('LB008', 'GM037'), ('LB008', 'GM052'), ('LB009', 'GM051'),
    ('LB010', 'GM017'), ('LB010', 'GM018'), ('LB010', 'GM053'), ('LB010', 'GM059'), 
    ('LB011', 'GM042'), ('LB012', 'GM019'), ('LB012', 'GM007'), ('LB013', 'GM006'),
    ('LB013', 'GM062'), ('LB014', 'GM001'), ('LB014', 'GM003'), ('LB014', 'GM018'), 
    ('LB015', NULL), ('LB016', 'GM007'), ('LB016', 'GM045'), ('LB016', 'GM062'), 
    ('LB016', 'GM023'), ('LB017', 'GM027'), ('LB018', 'GM015'), ('LB019', NULL),
    ('LB020', 'GM063'), ('LB020', 'GM027'), ('LB021', 'GM019'), ('LB022', 'GM007'),
    ('LB023', 'GM046'), ('LB023', 'GM031'), ('LB024', 'GM007'), ('LB025', 'GM001'),
    ('LB025', 'GM010');

-- Inserting reviews
INSERT INTO reviews(game_instance, reviewer_id, stars, review) VALUES
(
    'GM001',
    'REV00001',
    4,
    'good game'
), (
    'GM006', 
    'REV00001',
    2,
    'I hate this game!!'
), (
    'GM001',
    'REV00002',
    4,
    'THIS IS THE BEST GAME!'
), (
    'GM003',
    'REV00003',
    5,
    'Ich liebe dieses Spiel!'
), (
    'GM059',
    'REV00003',
    1,
    'Ich hasse alles uber das!!!'
), (
    'GM001',
    'REV00003',
    5,
    'Das ist gut! Es ist wirklich gut!'
), (
    'GM021',
    'REV00005',
    5,
    'i love this game. Everything about it is good.'
), (
    'GM008',
    'REV00004',
    1,
    'I\'d give this game 0 stars if I could.'
), (
    'GM001',
    'REV00025',
    3,
    'It\'s an alright game, I guess.'
), (
    'GM006',
    'REV00013',
    2,
    'wOW, THE GRAPHIX SUCK! IT LOOKS LIKE 2005.'
), (
    'GM010',
    'REV00025',
    4,
    'Pretty good game.'
), (
    'GM045',
    'REV00003',
    2,
    'Nein, mein Freund. Das ist schlecht.'
), (
    'GM007',
    'REV00016',
    5,
    'THIS IS THE BEST GAME OF ALL TIME. I LOVE IT!'
), (
    'GM045',
    'REV00016',
    5,
    'ANOTHER GOOD GAME!!!'
), (
    'GM017',
    'REV00010',
    1,
    'The co-op in this game is awful! 1/5.'
), (
    'GM062',
    'REV00016',
    2,
    'COULD BE BETTER.'
), (
    'GM023',
    'REV00016',
    1,
    'bruh, what even is this game?'
), (
    'GM063',
    'REV00020',
    4,
    'The creature design here is really good! 4/5 stars!'
), (
    'GM019',
    'REV00021',
    5,
    'I really liked the fast-paced dynamic here. It\'s very good.'
), (
    'GM018',
    'REV00010',
    5,
    'This remake is very good and so true to the original.'
), (
    'GM046',
    'REV00023',
    3,
    'The mechanics need improvement, imo.'
), (
    'GM037',
    'REV00008',
    4,
    NULL
), (
    'GM031',
    'REV00023',
    5,
    'This game blew me away on how good it is!'
), (
    'GM042',
    'REV00011',
    2,
    NULL
), (
    'GM007',
    'REV00022',
    4,
    'Good game gg eazy'
), (
    'GM053',
    'REV00010',
    2,
    'Idk about that remaster though.'
), (
    'GM027',
    'REV00017',
    5,
    NULL
), (
    'GM051',
    'REV00009',
    1,
    'this game is truly awful. the controls are bad.'
), (
    'GM007',
    'REV00024',
    3,
    'Why does this game lag so much??? God, just let me play!'
), (
    'GM062',
    'REV00013',
    1,
    'This is the worst game I\'ve ever played. IN. MY. LIFE.'
), (
    'GM053',
    'REV00001',
    4,
    'best game evar.'
), (
    'GM059',
    'REV00010',
    3,
    'I expected so much more from this. I am disappointed :('
), (
    'GM015',
    'REV00018',
    3,
    'I keep steering off the tracks, man! What on earth??'
), (
    'GM019',
    'REV00012',
    5,
    'wOW! JUST WOW!'
),(
    'GM035',
    'REV00007',
    4,
    'I like this game.'
), (
    'GM056',
    'REV00004',
    3,
    'I like the mechanics here. Although, it is very Portal-like.'
);