/*
Exercise: 16
Get pairs of PC models with identical speeds and the same RAM capacity. Each resulting pair should be displayed only once, i.e. (i, j) but not (j, i).
Result set: model with the bigger number, model with the smaller number, speed, and RAM.
*/
SELECT DISTINCT pc1.model, pc2.model, pc1.speed, pc1.ram
FROM pc pc1
JOIN pc pc2 ON pc1.speed = pc2.speed AND pc1.ram = pc2.ram AND pc1.model > pc2.model
ORDER BY pc1.model DESC;