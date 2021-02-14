-- First check the data 
SELECT  *  FROM players LIMIT 10;
SELECT  *  FROM seasons_stats LIMIT 10;

-- Join players with seasons_stats
SELECT 
	p.id,
	p.player,
	p.height,
	p.weight,
	p.college,
	p.born,
	s.position,
	s.tm
FROM players as p
JOIN seasons_stats as s
on p.id = s.player_id;


-- Join seasons_stats with players

SELECT 
	p.id,
	p.college,
	s.year,
	s.position,
	s.two_point_percentage,
	s.fg_percentage,
	s.ft_percentage,
	s.ts_percentage
FROM players as p
JOIN seasons_stats as s
on p.id = s.player_id;