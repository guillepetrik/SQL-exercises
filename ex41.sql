/*
Exercise: 41 
For each maker who has models at least in one of the tables PC, Laptop, or Printer, determine the maximum price for his products.
Output: maker; if there are NULL values among the prices for the products of a given maker, display NULL for this maker, otherwise, the maximum price.
*/
SELECT maker, CASE 
WHEN MAX(CASE WHEN price IS NULL THEN 1 ELSE 0 END) = 0
THEN MAX(price) END price FROM(
SELECT maker, price FROM product JOIN pc ON pc.model = product.model
UNION
SELECT maker, price FROM product JOIN laptop ON laptop.model = product.model
UNION
SELECT maker, price FROM product JOIN printer ON printer.model = product.model
) algo GROUP BY maker;