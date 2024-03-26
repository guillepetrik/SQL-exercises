/*
Exercise: 44 
Find all ship names beginning with the letter R.
*/

SELECT name FROM ships WHERE name LIKE 'R%'
UNION
SELECT ship as name FROM outcomes WHERE ship LIKE 'R%';