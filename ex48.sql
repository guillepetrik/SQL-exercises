/*
Exercise: 48 
Find the ship classes having at least one ship sunk in battles.
*/

SELECT classes.class FROM classes 
JOIN ships ON classes.class = ships.class 
WHERE name IN (
    SELECT ship 
    FROM outcomes 
    WHERE result = 'sunk')
UNION
SELECT class FROM classes 
JOIN outcomes ON class = ship
WHERE result = 'sunk';