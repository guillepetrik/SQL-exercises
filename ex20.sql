/*
Exercise: 20 
Find the makers producing at least three distinct models of PCs.
Result set: maker, number of PC models.
*/
SELECT maker, COUNT(DISTINCT model) AS "number of PC models"
FROM product
WHERE type = 'PC'
GROUP BY maker
HAVING COUNT(DISTINCT model) >= 3;