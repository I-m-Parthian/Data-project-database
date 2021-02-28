-- IPL analysis problem 2. Top batsman for Royal Challengers Bangalore



SELECT batsman, SUM(total_runs) as runs
FROM deliveries
WHERE batting_team='Royal Challengers Bangalore'
GROUP BY batsman
ORDER BY runs DESC
LIMIT 10;