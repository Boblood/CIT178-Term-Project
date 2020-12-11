USE FinalDB;

/* Get Count of games per platform */
SELECT PlatformName AS [Platform Name], COUNT(GameName) AS [Total Games]
FROM Games
LEFT JOIN GamePlatform ON Games.GameID = GamePlatform.GameID
LEFT JOIN Platforms ON GamePlatform.PlatformID = Platforms.PlatformID
GROUP BY PlatformName;

/* Get Highest rated games */
SELECT GameName AS [Highest Rated Games], RatingName AS Rating
FROM Games
LEFT JOIN Ratings ON Games.RatingID = Ratings.RatingID
WHERE Games.RatingID = (SELECT MAX(Games.RatingID) FROM Games WHERE Games.RatingID <> 6);

/* Get Lowest rated games */
SELECT GameName AS [Lowest Rated Games], RatingName AS Rating
FROM Games
LEFT JOIN Ratings ON Games.RatingID = Ratings.RatingID
WHERE Games.RatingID = (SELECT MIN(Games.RatingID) FROM Games WHERE Games.RatingID <> 6);

/* Get the average rating */
SELECT RatingName AS [Average Rating]
FROM Games
LEFT JOIN Ratings ON Games.RatingID = Ratings.RatingID
WHERE Games.RatingID = (SELECT ROUND(AVG(Games.RatingID), 0) FROM Games WHERE Games.RatingID <> 6);