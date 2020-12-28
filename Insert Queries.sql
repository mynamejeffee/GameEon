-- Inserting the genres
USE gameeon;

/*
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