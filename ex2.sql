/* Exercise: 2 (Serge I: 2002-09-21)
List all printer makers. Result set: maker.
*/
SELECT DISTINCT maker
FROM product
WHERE type = 'printer';