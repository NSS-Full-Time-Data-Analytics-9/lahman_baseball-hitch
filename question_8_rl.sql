--8. Using the attendance figures from the homegames table, find the teams and parks which had the top 5 average attendance per game in 2016 (where average attendance is defined as total attendance 
--divided by number of games). Only consider parks where there were at least 10 games played. Report the park name, team name, and average attendance. Repeat for the lowest 5 average attendance.

SELECT team, park_name, attendance/games AS average_attendance --top 5 average attendance per game in 2016
FROM homegames 
	LEFT JOIN parks USING(park)
WHERE year = 2016
	AND games > 10
ORDER BY average_attendance DESC
LIMIT 5;
--Dodger Stadium/LAN, Busch Stadium III/SLN, Rogers Centre/TOR, AT&T Park/SFN, Wrigley Field/CHN

SELECT team, park_name, attendance/games AS average_attendance --lowest 5 average attendance per game in 2016
FROM homegames 
	LEFT JOIN parks USING(park)
WHERE year = 2016
	AND games > 10
ORDER BY average_attendance 
LIMIT 5;
--Tropicana Field/TBA, Oakland-Alameda County Coliseum/OAK, Progressive Field/CLE, Marlins Park/MIA, U.S. Cellular Field/CHA