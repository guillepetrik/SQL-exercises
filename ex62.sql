/*
Exercise: 62 
For the database with money transactions being recorded not more than once a day,
calculate the total cash balance of all buy-back centers at the beginning of 04/15/2001.
*/
SELECT
    (SELECT SUM(inc) FROM income_o WHERE date < '2001-04-15') -
    (SELECT SUM(out) FROM outcome_o WHERE date < '2001-04-15') AS diff;
