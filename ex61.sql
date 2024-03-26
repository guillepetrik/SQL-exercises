/*
Exercise: 61 
For the database with money transactions being recorded not more than once a day, 
calculate the total cash balance of all buy-back centers
*/
SELECT SUM(rm) rm FROM(
    SELECT SUM(inc) rm 
    FROM income_o 
    UNION
    SELECT -SUM(out) rm 
    FROM outcome_o 
) sq
