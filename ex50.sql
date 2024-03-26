/*
Exercise: 50 
Find the battles in which Kongo-class ships from the Ships table were engaged.
*/
SELECT DISTINCT battle FROM outcomes WHERE ship IN (
    SELECT name FROM ships WHERE class = 'Kongo'
);