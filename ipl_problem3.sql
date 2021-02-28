-- IPL analysis problem 3. Foreign umpire analysis


SELECT nationality, COUNT(ump_id)
FROM umpires
GROUP BY nationality 
HAVING nationality != 'India';