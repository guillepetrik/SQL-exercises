/*
Exercise: 27
Find out the average hard disk drive capacity of PCs produced by makers who also manufacture printers.
Result set: maker, average HDD capacity.
*/
SELECT p.maker, AVG(a.hd) 
FROM product p 
JOIN pc a ON p.model = a.model 
WHERE maker IN (
    SELECT maker FROM product WHERE type='Printer'
) 
GROUP BY p.maker;