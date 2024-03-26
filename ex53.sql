/*
Exercise: 53 
With a precision of two decimal places, determine the average number of guns for the battleship classes.
*/

SELECT CAST(AVG(numGuns) AS DECIMAL(10, 2))
FROM Classes  
WHERE type = 'bb';