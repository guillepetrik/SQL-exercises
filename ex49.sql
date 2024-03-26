/*
Exercise: 49 
Find the names of the ships having a gun caliber of 16 inches (including ships in the Outcomes table).
*/
SELECT name
FROM (
    SELECT s.name, c.bore
    FROM ships s
    LEFT JOIN classes c ON s.class = c.class
    UNION
    SELECT o.ship, c.bore
    FROM outcomes o
    LEFT JOIN classes c ON o.ship = c.class
) subquery
WHERE bore = 16;
