/*
Exercise: 67 
Find out the number of routes with the greatest number of flights (trips).
Notes.
1) A - B and B - A are to be considered DIFFERENT routes.
2) Use the Trip table only.
*/

WITH counts AS (
    SELECT town_from, town_to, COUNT(*) AS rt
    FROM trip
    GROUP BY town_from, town_to
)
SELECT COUNT(*) AS max_fl
FROM counts
WHERE rt = (SELECT MAX(rt) FROM counts)
