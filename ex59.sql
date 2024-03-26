/*
Exercise: 59 
Calculate the cash balance of each buy-back center for the database with money transactions being recorded not more than once a day.
Result set: point, balance.
*/
SELECT point, SUM(rm) rm FROM(
    SELECT point, SUM(inc) rm 
    FROM income_o 
    GROUP BY point
    UNION
    SELECT point, -SUM(out) rm 
    FROM outcome_o 
    GROUP BY point
) sq 
GROUP BY point
