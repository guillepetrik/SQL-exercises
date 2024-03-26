/*
Exercise: 23 
Get the makers producing both PCs having a speed of 750 MHz or higher and laptops with a speed of 750 MHz or higher.
Result set: maker
*/
SELECT maker
FROM product 
WHERE type = 'pc' AND model IN (
    SELECT model
    FROM pc
    WHERE speed >= 750
)
INTERSECT
SELECT maker
FROM product 
WHERE type = 'laptop' AND model IN (
    SELECT model
    FROM laptop
    WHERE speed >=750
);