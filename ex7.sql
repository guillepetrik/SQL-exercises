/*
Exercise: 7
Get the models and prices for all commercially available products (of any type) produced by maker B.
*/
SELECT product.model, price
FROM product
JOIN (
    SELECT DISTINCT model, price
    FROM pc
    UNION ALL
    SELECT DISTINCT model, price
    FROM laptop
    UNION ALL
    SELECT DISTINCT model, price
    FROM printer
) AS products ON product.model = products.model
WHERE product.maker = 'B'
ORDER BY price;