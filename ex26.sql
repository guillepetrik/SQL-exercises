/* 
Exercise: 26 
Find out the average price of PCs and laptops produced by maker A.
Result set: one overall average price for all items.
*/
SELECT AVG(price) avg_price FROM (
    SELECT price FROM pc JOIN product p ON p.model = pc.model WHERE p.maker = 'A'
    UNION ALL
    SELECT price FROM laptop JOIN product q ON q.model = laptop.model WHERE q.maker = 'A'
) AS T;