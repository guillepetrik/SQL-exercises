/*
Exercise: 56 
For each class, find out the number of ships of this class that were sunk in battles.
Result set: class, number of ships sunk.
*/
SELECT c.class, COUNT(name) FROM classes c 
LEFT JOIN (
    SELECT c.class, s.name FROM classes c 
    JOIN ships s ON c.class = s.class 
    WHERE name IN (
        SELECT ship FROM outcomes WHERE result = 'sunk'
    )
    UNION 
    SELECT class, ship FROM classes 
    JOIN outcomes ON class = ship 
    WHERE result = 'sunk'
) sq ON c.class = sq.class 
GROUP BY c.class