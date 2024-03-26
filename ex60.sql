/*
Exercise: 60 
For the database with money transactions being recorded not more than once a day, 
calculate the cash balance of each buy-back center at the beginning of 4/15/2001.
Note: exclude centers not having any records before the specified date.
Result set: point, balance
*/
SELECT point, SUM(rm) rm FROM(
    SELECT point, SUM(inc) rm 
    FROM income_o 
    WHERE date < '2001-04-15'
    GROUP BY point
    UNION
    SELECT point, -SUM(out) rm 
    FROM outcome_o 
    WHERE date < '2001-04-15'
    GROUP BY point
) sq 
GROUP BY point