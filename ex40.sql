/*
Exercise: 40 
Get the makers who produce only one product type and more than one model. Output: maker, type.
*/
SELECT maker, type FROM product WHERE maker IN (
SELECT maker FROM (
    SELECT maker, type 
    FROM product
    GROUP BY maker, type
) t1 GROUP BY maker HAVING COUNT(*) = 1
) GROUP BY maker, type HAVING COUNT(*) > 1;