USE FinalDB;

/* Developers */
INSERT INTO Developers VALUES ('Sucker Punch', 'US');
INSERT INTO Developers VALUES ('343 Industries', 'US');
INSERT INTO Developers VALUES ('FromSoftware', 'JP');
INSERT INTO Developers VALUES ('Sora Ltd.', 'JP');
INSERT INTO Developers VALUES ('Bungie', 'US');
GO

/* Genres */
INSERT INTO Genres VALUES ('Action');
INSERT INTO Genres VALUES ('Adventure');
INSERT INTO Genres VALUES ('Stealth');
INSERT INTO Genres VALUES ('First Person Shooter');
INSERT INTO Genres VALUES ('Role Playing Game');
INSERT INTO Genres VALUES ('Fighter');
INSERT INTO Genres VALUES ('Platformer');
GO

/* Platforms */
INSERT INTO Platforms VALUES ('WiiU', 'Nintendo');
INSERT INTO Platforms VALUES ('Switch', 'Nintendo');
INSERT INTO Platforms VALUES ('PS3', 'Sony');
INSERT INTO Platforms VALUES ('PS4', 'Sony');
INSERT INTO Platforms VALUES ('Xbox 360', 'Microsoft');
INSERT INTO Platforms VALUES ('Xbox One', 'Microsoft');
INSERT INTO Platforms VALUES ('PC', 'Misc');
GO

/* Ratings */
INSERT INTO Ratings VALUES ('Everyone');
INSERT INTO Ratings VALUES ('Everyone 10+');
INSERT INTO Ratings VALUES ('Teen');
INSERT INTO Ratings VALUES ('Mature');
INSERT INTO Ratings VALUES ('Adult Only');
INSERT INTO Ratings VALUES ('Rating Pending');
GO

/* Games */
INSERT INTO Games VALUES ('Ghost of Tsushima', '7/17/2020', 1, 4);
INSERT INTO Games VALUES ('Halo 5 Guardians', '10/27/2016', 2, 3);
INSERT INTO Games VALUES ('Dark Souls 3', '4/12/2016', 3, 4);
INSERT INTO Games VALUES ('Bloodborne', '3/24/2015', 3, 4);
INSERT INTO Games VALUES ('Super Smash Brothers Ultimate', '12/7/2018', 4, 2);
GO

/* GameGenre */
INSERT INTO GameGenre VALUES (1, 1);
INSERT INTO GameGenre VALUES (1, 2);
INSERT INTO GameGenre VALUES (1, 3);
INSERT INTO GameGenre VALUES (2, 4);
INSERT INTO GameGenre VALUES (3, 1);
INSERT INTO GameGenre VALUES (3, 5);
INSERT INTO GameGenre VALUES (4, 1);
INSERT INTO GameGenre VALUES (4, 5);
INSERT INTO GameGenre VALUES (5, 6);
INSERT INTO GameGenre VALUES (5, 7);
GO

/* GamePlatform */
INSERT INTO GamePlatform VALUES (1, 1);
INSERT INTO GamePlatform VALUES (2, 6);
INSERT INTO GamePlatform VALUES (3, 4);
INSERT INTO GamePlatform VALUES (3, 6);
INSERT INTO GamePlatform VALUES (3, 7);
INSERT INTO GamePlatform VALUES (4, 4);
INSERT INTO GamePlatform VALUES (5, 2);
GO