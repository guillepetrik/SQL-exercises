/*
Exercise: 42
Find the names of ships sunk at battles, along with the names of the corresponding battles.
*/

SELECT o.ship, b.name FROM outcomes o
JOIN battles b ON o.battle = b.name
WHERE result = 'sunk';



