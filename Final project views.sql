/* Final Project Views */

USE FinalDB;

--GO
--CREATE VIEW GameSummary
--AS
--SELECT GameName, RatingName
--FROM Games g
--JOIN Ratings r ON g.RatingID = r.RatingID;
--GO

--GO
--CREATE VIEW RestrictedGames
--AS
--SELECT GameName, RatingName
--FROM Games g
--JOIN Ratings r ON g.RatingID = r.RatingID
--WHERE g.RatingID IN (4, 5);
--GO

--GO
--CREATE VIEW GameOnPlatforms
--AS
--SELECT GameName, PlatformName, PlatformManufacturer
--FROM Games g
--JOIN GamePlatform gp ON g.GameID = gp.GameID
--JOIN Platforms p ON gp.PlatformID = p.PlatformID
--GO

--GO
--CREATE VIEW GameGenres
--AS
--SELECT GameName, GenreName
--FROM Games g
--JOIN GameGenre gg ON g.GameID = gg.GameID
--JOIN Genres gen ON gg.GenreID = gen.GenreID
--GO