--Initial query--
SELECT player_name, position, jersey_number, week, headshot_url
FROM roster;

--Get unique positions for case statement--
SELECT DISTINCT position
FROM roster;

--Final query--
SELECT 
    player_name, position, 
    CAST(jersey_number AS INTEGER) AS jersey_number, 
    CAST(week AS INTEGER) AS week, 
    headshot_url,
    CASE
        WHEN position IN ('QB', 'WR', 'RB', 'TE', 'OL') THEN 'Offense'
        WHEN position IN ('DL', 'DB', 'LB') THEN 'Defense'
        ELSE 'Special Teams'
    END AS team_side
FROM roster;
