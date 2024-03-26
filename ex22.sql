/*
Exercise: 22
For each value of PC speed that exceeds 600 MHz, find out the average price of PCs with identical speeds.
Result set: speed, average price.
*/
SELECT DISTINCT speed, AVG(price) AS "avg_speed"
FROM pc
WHERE speed > 600
GROUP BY speed;