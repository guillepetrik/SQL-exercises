/*
Exercise: 12
Find out the average speed of the laptops priced over $1000.
*/
SELECT AVG(speed) AVG_SPEED
FROM laptop
WHERE price IN (SELECT price
    FROM laptop
    WHERE price > 1000
);
