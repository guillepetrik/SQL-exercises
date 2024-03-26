/*
Exercise: 19
For each maker having models in the Laptop table, find out the average screen size of the laptops he produces.
Result set: maker, average screen size.
*/
SELECT DISTINCT p.maker, AVG(l.screen) AS "avg_screen"
FROM product p 
JOIN laptop l ON p.model = l.model
GROUP BY p.maker;