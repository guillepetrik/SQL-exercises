/*
Exercise: 37 
Find classes for which only one ship exists in the database (including the Outcomes table).
*/
SELECT class FROM (
    SELECT c.class, name FROM classes c JOIN ships s ON c.class = s.class
    UNION
    SELECT class, ship FROM classes JOIN outcomes ON class= ship
) sub_q 
GROUP BY class
HAVING COUNT(*) =1;