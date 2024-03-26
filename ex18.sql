/*
Exercise: 18
Find the makers of the cheapest color printers.
Result set: maker, price.
*/

SELECT DISTINCT m.maker, pr.price
FROM product m
JOIN printer pr ON m.model = pr.model AND pr.color = 'y'
JOIN (
    SELECT MIN(price) min_price
    FROM printer
    WHERE color = 'y'
) z ON pr.price = z.min_price;
