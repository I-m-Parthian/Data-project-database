-- IPL analysis problem 4. Grouped chart of matches played by team by season


SELECT DISTINCT(season), team1,count(team1) FROM(
	SELECT season,team1 FROM matches
	UNION ALL
	SELECT season,team2 FROM matches
)
AS combineSet
GROUP BY season,team1
ORDER BY season;