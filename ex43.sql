/*
Exercise: 43 
Get the battles that occurred in years when no ships were launched into water.
*/

SELECT  DISTINCT name FROM battles WHERE EXTRACT(YEAR FROM date) NOT IN (
    SELECT launched FROM ships WHERE launched IS NOT NULL);
