/*
Exercise: 24
List the models of any type having the highest price of all products present in the database.
*/
WITH max AS (
  SELECT MAX(price) AS max
  FROM (
    SELECT price FROM pc
    UNION
    SELECT price FROM laptop
    UNION
    SELECT price FROM printer
  ) AS all_prices
)
SELECT model
FROM (
    SELECT model, price FROM pc
    UNION
    SELECT model, price FROM laptop
    UNION
    SELECT model, price FROM printer
  ) AS all_prod
JOIN  max ON all_prod.price = max.max;
