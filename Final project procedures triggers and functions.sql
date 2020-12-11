/* Final Project Procedures*/
USE FinalDB;
GO

--CREATE PROC spGetGames
--AS
--SELECT GameName, ReleaseDate 
--FROM Games
--ORDER BY ReleaseDate DESC;
--GO

--EXEC spGetGames

--CREATE PROC spFindDeveloper
--	@Developer nvarchar(100) = '%'
--AS
--BEGIN
--	SELECT GameName, DeveloperName
--	FROM Games g
--	JOIN Developers d ON g.DeveloperID = d.DeveloperID
--	WHERE DeveloperName LIKE @Developer;
--END
--GO

--EXEC spFindDeveloper '%From%'

--CREATE PROC spFindDeveloperGameCount
--	@Developer nvarchar(100) = NULL,
--	@GameCount int OUTPUT
--AS
--BEGIN
--	DECLARE @DeveloperID int
--	IF @Developer IS NULL
--		PRINT 'Developer cannot be null'

--	SELECT @DeveloperID = DeveloperID FROM Developers 
--	WHERE DeveloperName = @Developer;

--	SELECT @GameCount = COUNT(DeveloperID)
--	FROM Games
--	WHERE DeveloperID = @DeveloperID
--	GROUP BY DeveloperID;

--	RETURN @GameCount;
--END
--GO

--DECLARE @GameCount int;
--EXEC @GameCount = spFindDeveloperGameCount 'FromSoftware', @GameCount OUTPUT
--SELECT @GameCount AS [Number of Games]

/* Final Project User Defined Functions */

/* Returns 0 for false and 1 for true */
--CREATE FUNCTION fnCanBuyMature
--	(@GameID int,
--	@Age int)
--	RETURNS int
--BEGIN
--	DECLARE @CurrentRating int

--	SELECT @CurrentRating = RatingID FROM Games
--	WHERE GameID = @GameID;

--	IF @CurrentRating < 4
--		RETURN 1;
--	ELSE
--		IF @Age >= 18
--			RETURN 1;
--		ELSE
--			RETURN 0;

--	RETURN 0;
--END

--SELECT dbo.fnCanBuyMature(2, 12);
--SELECT dbo.fnCanBuyMature(3, 12);
--SELECT dbo.fnCanBuyMature(3, 20);

--CREATE FUNCTION fnGetGenres
--	(@GameID int)
--	RETURNS table
--RETURN
--	(SELECT GameName, GenreName FROM Games g 
--	JOIN GameGenre gg ON g.GameID = gg.GameID
--	JOIN Genres gen ON gg.GenreID = gen.GenreID
--	WHERE g.GameID = @GameID);

--SELECT * FROM dbo.fnGetGenres(1);
--SELECT * FROM dbo.fnGetGenres(3);
--SELECT * FROM dbo.fnGetGenres(5);

/* Final Project Triggers */

--CREATE TABLE GamesArchive(
--GameID INT,
--Action VARCHAR(100)
--);

--SELECT * FROM GamesArchive;

--CREATE TRIGGER Games_Delete ON Games
--    AFTER DELETE
--AS
--BEGIN
--    SET NOCOUNT ON;
--    DECLARE @GameID int
--    SELECT @GameID = DELETED.GameID
--    FROM DELETED

--    INSERT INTO GamesArchive
--    VALUES(@GameID, 'Deleted')
--END
--GO

--CREATE TRIGGER Games_Inserted ON Games
--    AFTER INSERT
--AS
--BEGIN
--    SET NOCOUNT ON;
--    DECLARE @GameID int
--    SELECT @GameID = INSERTED.GameID
--    FROM INSERTED

--    INSERT INTO GamesArchive
--    VALUES(@GameID, 'Insert')
--END
--GO

--CREATE TRIGGER Games_Updated ON Games
--    AFTER UPDATE
--AS
--BEGIN
--    SET NOCOUNT ON;
--    DECLARE @GameID int
--    SELECT @GameID = INSERTED.GameID
--    FROM INSERTED

--    INSERT INTO GamesArchive
--    VALUES(@GameID, 'Updated')
--END