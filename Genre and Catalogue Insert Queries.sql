USE GameEon;

-- INSERTING THE GENRES
INSERT INTO genre(genre_id, genre_title) VALUES 
    ('HRROR', 'Horror'),
    ('CBPNK', 'Cyberpunk'),
    ('FNTSY', 'Fantasy'),
    ('RACNG', 'Racing'),
    ('ZMBIE', 'Zombie'),
    ('PUZPR', 'Puzzle Platformer'),
    ('WR', 'War'),
    ('CLSSC', 'Classic'),
    ('BLDNG', 'Building'),
    ('MSTRY', 'Mystery'),
    ('SPACE', 'Space'),
    ('SNDBX', 'Sandbox'),
    ('FSTPD', 'Fast-Paced'),
    ('DNGSM', 'Dating Sim'),
    ('RLTSY', 'Real Time Strategy'),
    ('LOGIC', 'Logic'),
    ('MLTRY', 'Military'),
    ('MTPLR', 'Multiplayer');


-- INSERTING THE GAMES
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
    'Amnesia: Rebirth',
    'Frictional Games',
    'Frictional Games',
    'PC,Playstation',
    'upcoming',
    '2020-10-20',
    'HRROR'
), (
	'Cyberpunk 2077', 
	'CD PROJEKT RED', 
	'CD PROJEKT RED', 
	'PC,Playstation', 
	'upcoming', 
	'2020-12-10',
	'CBPNK'
), (
    'Deus Ex: Mankind Divided',
    'Eidos Montreal',
    'Square Enix',
    'PC,Mac,XBox,Playstation',
    'available',
    '2016-08-23',
    'CBPNK'
), (
    'Katana ZERO',
    'Askiisoft',
    'Devolver Digital',
    'PC,Mac,XBox',
    'available',
    '2019-01-18',
    'CBPNK'
), (
    'Total War: WARHAMMER', 
    'CREATIVE ASSEMBLY', 
    'SEGA', 
    'PC,Mac,Linux', 
    'available', 
    '2016-05-24', 
    'FNTSY'
), (
    'The Elder Scrolls Online', 
    'Zenimax Online Studios', 
    'Bethesda Softworks', 
    'PC,Mac', 
    'removed', 
    '2014-04-04', 
    'FNTSY'
), (
    'The Witcher 3: Wild Hunt', 
    'CD PROJECKT RED', 
    'CD PROJEKT RED', 
    'PC,XBox,Playstation,Nintendo_Switch', 
    'available', 
    '2015-05-18', 
    'FNTSY'
), (
    'Assetto Corsa', 
    'Kuno Simulazioni', 
    'Kunos Simulazioni', 
    'PC,XBox,Playstation', 
    'removed', 
    '2014-12-19', 
    'RACNG'
), (
    'F1 2020', 
    'Codemasters', 
    'Codemasters', 
    'PC,XBox,Playstation', 
    'upcoming', 
    '2020-07-10', 
    'RACNG'
), (
    'DOTA 2', 
    'Valve', 
    'Valve', 
    'PC,Mac', 
    'available', 
    '2013-07-10', 
    'FNTSY'
), (
    'The Crew 2', 
    'Ivory Tower', 
    'Ubisoft', 
    'PC,Playstation', 
    'available', 
    '2018-06-29', 
    'RACNG'
), (
    'DiRT Rally 2.0', 
    'Codemasters', 
    'Codemasters', 
    'PC,XBox,Playstation', 
    'available', 
    '2019-02-26', 
    'RACNG'
), (
    'Left 4 Dead 2', 
    'Valve', 
    'Valve', 
    'PC,Mac,Linux', 
    'removed', 
    '2009-11-17', 
    'ZMBIE'
), (
    'DayZ', 
    'Bohemia Interactive', 
    'Bohemia Interactive', 
    'PC,Playstation', 
    'available', 
    '2018-12-14', 
    'ZMBIE'
), (
    'Resident Evil 2', 
    'CAPCOM Co.', 
    'CAPCOM Co.', 
    'PC,XBox,Playstation', 
    'available', 
    '2019-01-25', 
    'ZMBIE'
), (
    'Dying Light', 
    'Techland', 
    'Techland Publishing', 
    'PC,Mac,Playstation',
    'available',
    '2015-01-26', 
    'ZMBIE'
), (
    'Portal', 
    'Valve', 
    'Valve', 
    'PC,Mac', 
    'removed', 
    '2007-10-10', 
    'PUZPR'
), (
    'Little Nightmares', 
    'Tarsier Studios', 
    'BANDAI NAMCO Entertainment', 
    'PC,XBox,Playstation,Nintendo_Switch', 
    'available', 
    '2017-04-28', 
    'PUZPR'
), (
    'Braid', 
    'Number None', 
    'Number None', 
    'PC,Mac,Playstation', 
    'removed', 
    '2009-04-11', 
    'PUZPR'
), (
    'Limbo', 
    'Playdead', 
    'Playdead', 
    'PC,Mac,Linux,Playstation', 
    'available', 
    '2011-08-03', 
    'PUZPR'
), (
    'Total War: THREE KINGDOMS', 
    'CREATIVE ASSEMBLY', 
    'SEGA', 
    'PC,Mac,Linux,Nintendo_Switch', 
    'available', 
    '2019-05-23', 
    'WR'
), (
    'War Thunder', 
    'Gaijin Entertainment', 
    'Gaijin Distribution KFT', 
    'PC,Mac,Linux,Playstation', 
    'available', 
    '2017-04-28', 
    'WR'
), (
    'Heart of Iron IV', 
    'Paradox Development Studio', 
    'Paradox Interactive', 
    'PC,Mac,Linux,XBox', 
    'available', 
    '2016-06-06', 
    'WR'
), (
    'Total Accurate Battle Simulator', 
    'Landfall', 
    'Landfall', 
    'PC,Mac,Playstation', 
    'available', 
    '2019-04-01', 
    'WR'
), (
    'Crash Bandicoot N. Sane Trilogy', 
    'Vicarious Visions', 
    'Activision', 
    'PC,Playstation,Nintendo_Switch', 
    'available', 
    '2018-06-30', 
    'CLSSC'
), (
    'Mafia: Definitive Edition', 
    'Hangar 13', 
    '2K', 
    'PC,Nintendo_Switch', 
    'upcoming', 
    '2020-09-25', 
    'CLSSC'
), (
    'The Henry Stickmin Collection', 
    'PuffballsUnited', 
    'InnerSloth', 
    'PC,Mac,Nintendo_Switch', 
    'upcoming', 
    '2020-08-07', 
    'CLSSC'
), (
    'Jurassic World Evolution',
    'Frontier Developments', 
    'Frontier Developments', 
    'PC,Nintendo_Switch', 
    'available', 
    '2018-06-12', 
    'BLDNG'
), (
    'House Flipper', 
    'Empyrean', 
    'Frozen District', 
    'PC,Mac,XBox,Playstation',
    'available', 
    '2018-05-17', 
    'BLDNG'
), (
    'The Sims 4', 
    'Maxis', 
    'Electronic Arts', 
    'PC,XBox,Playstation,Nintendo_Switch', 
    'removed', 
    '2014-09-02', 
    'BLDNG'
), (
    'Outer Wilds', 
    'Mobius Digital', 
    'Annapurna Interactive', 
    'PC,Playstation', 
    'upcoming', 
    '2020-06-18', 
    'MSTRY'
), (
    'Danganronpa V3: Killing Harmony', 
    'Spike Chunsoft Co.', 
    'Spike Chunsoft Co.', 
    'PC,Playstation,Nintendo_Switch', 
    'available', 
    '2017-09-26', 
    'MSTRY'
), (
    'Phasmophobia', 
    'Kinetic Games', 
    'Kinetic Games', 
    'PC,XBox,Playstation', 
    'upcoming', 
    '2020-09-19', 
    'MSTRY'
), (
    'The Room Three', 
    'Fireproof Games', 
    'Fireproof Games', 
    'PC,Nintendo_Switch', 
    'available', 
    '2018-11-13', 
    'MSTRY'
), (
    'Eve Online', 
    'CCP', 
    'CCP', 
    'PC,Mac,Playstation', 
    'removed', 
    '2003-05-06', 
    'SPACE'
), (
    'STAR WARS: Squadrons', 
    'MOTIVE', 
    'Electronic Arts', 
    'PC,XBox,Playstation', 
    'upcoming', 
    '2020-10-01', 
    'SPACE'
), (
    'Among Us', 
    'InnerSloth', 
    'InnerSloth', 
    'PC,Playstation,Nintendo_Switch', 
    'available', 
    '2018-11-17',
    'SPACE'
), (
    'Garry\'s Mod', 
    'Facepunch Studios', 
    'Valve', 
    'PC,Mac,Linux', 
    'removed', 
    '2006-11-29', 
    'SNDBX'
), (
    'Terraria', 
    'Re-Logic', 
    'Re-Logic', 
    'PC,Mac,Linux,Nintendo_Switch', 
    'available', 
    '2011-05-17', 
    'SNDBX'
), (
    'Teardown', 
    'Tuxedo Labs', 
    'Tuxedo Labs', 
    'PC,Playstation,Nintendo_Switch', 
    'upcoming', 
    '2020-10-29', 
    'SNDBX'
), (
    'Doom Eternal', 
    'id Software', 
    'Bethesda Softworks', 
    'PC,XBox,Playstation,Nintendo_Switch', 
    'upcoming', 
    '2020-03-20', 
    'FSTPD'
), (
    'DUSK', 
    'David Szymanski', 
    'New Blood Interactive', 
    'PC,Mac,Linux,XBox,Playstation', 
    'available', 
    '2018-12-11', 
    'FSTPD'
), (
    'Lethal League Blaze', 
    'Team Reptile', 
    'Team Reptile', 
    'PC,Mac,Linux,Nintendo_Switch', 
    'available', 
    '2018-10-25', 
    'FSTPD'
), (
    'Monster Prom', 
    'Beautiful Glitch', 
    'Those Awesome Guys', 
    'PC,Mac,Linux,Nintendo_Switch', 
    'available', 
    '2018-04-27', 
    'DNGSM'
), (
    'STORY OF SEASONS: Friends of Mineral Town', 
    'Marveloyus Inc.', 
    'XSEED Games', 
    'PC,Playstation,Nintendo_Switch', 
    'upcoming', 
    '2020-07-15', 
    'DNGSM'
), (
    'Blush Blush', 
    'Sad Panda', 
    'Sad Panda', 
    'PC,Mac,Linux,Nintendo_Switch', 
    'available', 
    '2019-04-04', 
    'DNGSM'
), (
    'NEKOPARA Vol. 4', 
    'NEKO Works', 
    'Sekai Project', 
    'PC,Playstation,Nintendo_Switch', 
    'upcoming', 
    '2020-11-26', 
    'DNGSM'
), (
    'Northgard', 
    'Shiro Games', 
    'Shiro Games', 
    'PC,Mac,Linux', 
    'available', 
    '2018-03-07', 
    'RLTSY'
), (
    'Age of Empires II: Definitive Edition', 
    'Forgotten Empires', 
    'XBox Games Studios', 
    'PC,XBox', 
    'available', 
    '2019-11-15', 
    'RLTSY'
), (
    'Command & Conquer Remastered Collection', 
    'Petroglyph', 
    'Electronic Arts', 
    'PC,Linux', 
    'upcoming', 
    '2020-06-06', 
    'RLTSY'
), (
    'Logic', 
    'PreoNus Games', 
    'gagantumgames', 
    'PC,Mac,Linux,Nintendo_Switch', 
    'upcoming',
    '2020-06-16', 
    'LOGIC'
), (
    'Microsoft Flight Simulator', 
    'Asobo Studio', 
    'XBox Game Studios', 
    'PC,XBox',
    'upcoming', 
    '2020-08-18', 
    'LOGIC'
),  (
    'Lightmatter', 
    'Tunnel Vision Games', 
    'Aspyr', 
    'PC,XBox,Playstation', 
    'available', 
    '2020-01-15', 
    'LOGIC'
),  (
    'Squad', 
    'Offworld Industries', 
    'Offworld Industries', 
    'PC,XBox,Playstation', 
    'upcoming', 
    '2020-09-24', 
    'MLTRY'
),  (
    'Arma 3', 
    'Bohemia Interactive', 
    'Bohemia Interactive', 
    'PC,XBox,Playstation', 
    'removed', 
    '2013-09-12', 
    'MLTRY'
),  (
    'Insurgency: Sandstorm', 
    'New World Interactive', 
    'Focus Home Interactive', 
    'PC,XBox,Playstation', 
    'available', 
    '2018-12-13', 
    'MLTRY'
),  (
    'Counter-Strike: Global Offensive', 
    'Hidden Path Entertainment', 
    'Valve', 
    'PC,Mac', 
    'available', 
    '2012-08-22', 
    'MTPLR'
),  (
    'Fall Guys', 
    'Mediatonic', 
    'Devolver Digital', 
    'PC,Playstation', 
    'upcoming', 
    '2020-08-04', 
    'MTPLR'
),  (
    'PLAYERUNKNOWN\'S BATTLEGROUNDS', 
    'KRAFTON, Inc.',
    'KRAFTON, Inc.', 
    'PC,XBox,Playstation', 
    'available', 
    '2017-12-21', 
    'MTPLR'
),  (
    'Hunt: Showdown', 
    'Crytek', 
    'Crytek', 
    'PC,XBox,Playstation', 
    'available', 
    '2019-08-27', 
    'MTPLR'
);
