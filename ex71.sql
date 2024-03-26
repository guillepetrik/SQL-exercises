/*
Exercise: 71
Find the PC makers with all personal computer models produced by them being present in the PC table.
*/

SELECT p.maker
FROM product p
LEFT JOIN pc ON pc.model = p.model
WHERE p.type = 'PC'
GROUP BY p.maker
HAVING COUNT(p.model) = COUNT(pc.model);