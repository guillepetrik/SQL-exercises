/*
Exercise: 74
Get all ship classes of Russia. If there are no Russian ship classes in the database, display classes of all countries present in the DB.
Result set: country, class.
*/

WITH cte AS (
    SELECT DISTINCT c.country, c.class
    FROM Classes c
    JOIN Outcomes o ON o.ship = c.class
    UNION
    SELECT DISTINCT c.country, c.class
    FROM Classes c
    JOIN Ships s ON s.class = c.class
)
SELECT country, class FROM cte
WHERE( 
    country = 'Russia' AND class IN (
        SELECT class FROM cte WHERE country = 'Russia')
    )
    OR country <> 'Russia'
    -- WORKS ON FIRST DB BUT FAILS ON OTHERS