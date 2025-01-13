SELECT ROUND(COUNT(*)/(SELECT COUNT(DISTINCT player_id) FROM Activity),2) as fraction
FROM (SELECT A.player_id
FROM (SELECT player_id,Min(event_date) as event_date FROM Activity group by player_id ) as A JOIN Activity as A1
on A.player_id = A1.player_id and A.event_date  + INTERVAL 1 DAY= A1.event_date) as A2
