-- IPL analysis problem 1: Total runs scored by team

SELECT batting_team, SUM(total_runs) as runs FROM deliveries
GROUP BY batting_team ORDER BY runs DESC;
