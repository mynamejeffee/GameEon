-- INserting the genres
USE gameeon;

INSERT INTO genre(genre_id, genre_title) VALUES 
    ('SHOTR', 'Shooter'),
    ('HRROR', 'Horror'),
    ('CBPNK', 'Cyberpunk');

-- Inserting the games
INSERT INTO videoGame(game_title, developer, publisher, platform, game_status, release_date, genre_id) VALUES
(
    'Outlast',
    'Red Barrels',
    'Red Barrels',
    'PC, XBox, Mac',
    'available',
    '2013-09-04',
    'HRROR'
), (
    'Slender: The Arrival',
    'Blue Isle Studios',
    'Blue Isle Publishing',
    'PC, Switch, Playstation',
    'removed',
    '2013-10-23',
    'HRROR'
), (
    'Outlast 2',
    'Red Barrels',
    'Red Barrels',
    'PC, XBox, Mac, Playstation',
    'available',
    '2017-04-25',
    'HRROR'
), (
	'Cyberpunk 2077', 
	'CD PROJEKT RED', 
	'CD PROJEKT RED', 
	'PC, Playstation', 
	'upcoming', 
	'2020-12-10',
	'CBPNK');
/*
-- Inserting customers
INSERT INTO customer(username, e_mail, billing_info, country, region_state, city, review_id) VALUES
(
    'my_name_is_jeff',
    'mynmjef@yahoo.com',
    '1234567890123456',
    'Philippines',
    'Davao',
    'Maute',
    'REV00001'
), (
    'blahblahblah',
    'bbb@gmail.com',
    '0987654321234567',
    'Germany',
    'Berlin',
    'Berlin',
    'REV00002'
);

-- Inserting reviews
INSERT INTO reviews(review_id, stars, review, game_id) VALUES 
(
    'REV00001',
    3,
    'Eyyyyyyyyyyyyyyyyyyyyyyyyyy this is good!',
    1
), (
    'REV00002',
    1,
    'This is awful! I\'d like a refund please!',
    4
);
