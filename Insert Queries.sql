-- INserting the genres
USE gameeon;

INSERT INTO genre(genre_id, genre_title) VALUES 
    ('SHOTR', 'Shooter'),
    ('HRROR', 'Horror'),
    ('CBPNK', 'Cyberpunk');

-- Inserting the games
INSERT INTO catalogue(game_title, developer, publisher, platform, game_status, release_date, genre_id) VALUES
(
    'Outlast',
    'Red Barrels',
    'Red Barrels',
    'PC,Mac,Linux,XBox',
    'available',
    '2013-09-04',
    'HRROR'
), (
    'Slender: The Arrival',
    'Blue Isle Studios',
    'Blue Isle Publishing',
    'PC,Playstation,Nintendo_Switch',
    'removed',
    '2013-10-23',
    'HRROR'
), (
    'Outlast 2',
    'Red Barrels',
    'Red Barrels',
    'PC,Mac,XBox,Playstation',
    'available',
    '2017-04-25',
    'HRROR'
), (
	'Cyberpunk 2077', 
	'CD PROJEKT RED', 
	'CD PROJEKT RED', 
	'PC,Playstation', 
	'upcoming', 
	'2020-12-10',
	'CBPNK');

-- Inserting customers
INSERT INTO customer(username, e_mail, billing_info, country, region_state, city) VALUES
(
    'my_name_is_jeff',
    'mynmjef@yahoo.com',
    '1234567890123456',
    'Philippines',
    'Davao Region',
    'Davao City'
), (
    'blahblahblah',
    'bbb@gmail.com',
    '0987654321234567',
    'Germany',
    'Berlin',
    'Berlin'

), (
    'deutschland1999',
    'deutschfürLeben@yahoo.de',
    '3857644801037747',
    'Germany',
    'Bavaria',
    'Munich'
);

-- Inserting reviews
--// THIS IS THE END POINT

INSERT INTO review_game(reviewer_id, customer_id) VALUES 
(
    'REV00001', 1
), (
    'REV00002', 2
), (
    'REV00003', 3
);


INSERT INTO game_customer(game_instance, game_id) VALUES
(
    'GM001', 1
), (
    'GM002', 2
), (
    'GM003', 3
), (
    'GM004', 4
);

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