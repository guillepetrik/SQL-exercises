/*
Exercise: 13 
Find out the average speed of the PCs produced by maker A.
*/
SELECT AVG(SPEED)
FROM pc
WHERE model IN (SELECT model
    FROM product
    WHERE maker = 'A'
);