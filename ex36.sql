/*
Exercise: 36 
List the names of lead ships in the database (including the Outcomes table).
*/
SELECT Ship
FROM (
    SELECT Name AS Ship FROM Ships
    UNION
    SELECT Ship FROM Outcomes
) AS all_s
JOIN Classes c ON c.class = all_s.Ship 
ORDER BY Ship;
-- CHECK