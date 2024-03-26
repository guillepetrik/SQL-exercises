/*
Exercise: 68 
Find out the number of routes with the greatest number of flights (trips).
Notes.
1) A - B and B - A are to be considered the SAME route.
2) Use the Trip table only.
*/

SELECT COUNT(*)
FROM (
    SELECT TOP 1 WITH TIES SUM(c) cc, c1, c2
    FROM (
        SELECT COUNT(*) c, town_from c1, town_to c2 FROM trip
        WHERE town_from >= town_to
        GROUP BY town_from, town_to
        UNION ALL
        SELECT COUNT(*) c, town_to, town_from FROM trip
        WHERE town_to > town_from
        GROUP BY town_from, town_to
    ) AS t
    GROUP BY c1, c2
    ORDER BY cc DESC
) AS tt