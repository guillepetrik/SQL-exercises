/*
Exercise: 25 
Find the printer makers also producing PCs with the lowest RAM capacity and the highest processor speed of all PCs having the lowest RAM capacity.
Result set: maker.
*/
SELECT DISTINCT product.maker
FROM product
INNER JOIN pc ON product.model = pc.model
WHERE pc.ram = (
    SELECT MIN(ram) FROM pc
)
AND pc.speed = (
    SELECT MAX(speed) FROM pc
    WHERE ram = (
        SELECT MIN(ram) FROM pc
)
)
AND product.maker IN (
    SELECT maker FROM product WHERE type = 'printer'
)