CHERNAE-- -- 6. Find the player who had the most success stealing bases in 2016, where __success__ is measured as the percentage of stolen base attempts which are successful.
-- (A stolen base attempt results either in a stolen base or being caught stealing.) Consider only players who attempted _at least_ 20 stolen bases.

Stolen bases:
*From the Batting Table total 302,195****
*Opponent stolen bases by catchers from the Fielding Table total 152,589
*From the Teams Table total 302,292 
*From the Batting Post Table total 2,031
*From stolen bases allowd by catcher from the Fielding Post Table total 864 

Caught Stealing:
*From the Batting Table total 97,296****
*Opponent caught stealing by catchers from the Fielding Table total 73,692
*From the Teams Table total 95,900 
*From the Batting Post Table total 921
*From caught stealing by catcher from the Fielding Post Table total 736

Formula: (Stolen Base)/(Stolen Base + Caught Stealing)

Attempt = (batting.sb) /(batting.sb + batting.cs)


SELECT yearid, namefirst, namelast, batting.sb, batting.cs, ROUND(((batting.sb::numeric) /(batting.sb::numeric + batting.cs::numeric)), 3) AS perc_successful_attempts 
FROM batting 
INNER JOIN people
USING(playerid)
WHERE yearid = '2016'
AND sb > 0
AND cs > 0
AND (sb+cs) >= 20 
ORDER BY perc_successful_attempts DESC;

Chris Owings 



