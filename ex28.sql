/*
Exercise: 28
Using Product table, find out the number of makers who produce only one model.
*/
SELECT COUNT(*) 
FROM (
    SELECT maker 
    FROM product 
    GROUP BY maker 
    HAVING COUNT(DISTINCT model) = 1
) AS single_model_makers;
