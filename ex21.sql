/*
Exercise: 21
Find out the maximum PC price for each maker having models in the PC table. Result set: maker, maximum price.
*/
SELECT m.maker, MAX(pc.price) AS "max_price"
FROM product m
JOIN pc ON m.model = pc.model
GROUP BY m.maker
