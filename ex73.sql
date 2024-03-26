/*
Exercise: 73 
For each country, determine the battles in which the ships of this country did not participate.
Result set: country, battle.
*/

WITH cte AS (
    SELECT c.country, o.battle
    FROM classes c
    JOIN outcomes o ON c.class = o.ship
    UNION
    SELECT c.country, o.battle
    FROM classes c
    JOIN ships s ON c.class = s.class
    JOIN outcomes o ON s.name = o.ship
)
SELECT DISTINCT c.country, b.name
FROM classes c
CROSS JOIN battles b
WHERE NOT EXISTS (
    SELECT 1
    FROM cte
    WHERE cte.country = c.country
    AND cte.battle = b.name
);
