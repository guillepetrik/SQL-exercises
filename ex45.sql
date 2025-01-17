/*
Exercise: 45 
Find all ship names consisting of three or more words (e.g., King George V).
Consider the words in ship names to be separated by single spaces, and the ship names to have no leading or trailing spaces.
*/
SELECT name FROM ships WHERE name LIKE '% % %'
UNION
SELECT ship as name FROM outcomes WHERE ship LIKE '% % %';