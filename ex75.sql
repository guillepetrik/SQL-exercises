/*
Exercise: 75 
For makers who have products with a known price in at least one of the Laptop, PC, or Printer tables, find the maximum price for each product type.
Output: maker, maximum price of laptops, maximum price of PCs, maximum price of printers. For missing products/prices, use NULL.
*/

SELECT
    p.maker,
    MAX(l.price) AS laptop,
    MAX(pc.price) AS pc,
    MAX(pr.price) AS printer
FROM Product p
    LEFT JOIN Laptop l ON p.model = l.model
    LEFT JOIN PC pc ON p.model = pc.model
    LEFT JOIN Printer pr ON p.model = pr.model
WHERE
    l.price IS NOT NULL OR pc.price IS NOT NULL OR pr.price IS NOT NULL
GROUP BY p.maker
