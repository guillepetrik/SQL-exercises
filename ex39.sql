/*
Exercise: 39 
Find the ships that `survived for future battles`; that is, after being damaged in a battle, they participated in another one, which occurred later.
*/
SELECT DISTINCT ship FROM outcomes o 
JOIN battles s ON battle = name
WHERE result = 'damaged' AND
EXISTS (
    SELECT ship FROM outcomes 
    JOIN battles ON battle = name 
    WHERE ship = o.ship 
    AND s.date < date
);