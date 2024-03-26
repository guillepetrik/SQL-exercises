/*
Exercise: 64 
Using the Income and Outcome tables, determine for each buy-back center the days when it received funds but
made no payments, and vice versa.
Result set: point, date, type of operation (inc/out), sum of money per day.
*/
SELECT COALESCE(incs.point, outs.point) point, COALESCE(incs.date, outs.date) date, 
    CASE WHEN incs.date IS NULL THEN 'out' ELSE 'inc' END operation, COALESCE(inc, out) moneys
FROM (
    SELECT point, date, COALESCE(SUM(inc), 0) inc 
    FROM Income
    GROUP BY point, date) incs 
    FULL JOIN
    (SELECT point, date, COALESCE(SUM(out), 0) out 
    FROM Outcome
    GROUP BY point, date) outs 
    ON incs.point = outs.point AND incs.date = outs.date
    WHERE incs.date IS NULL OR outs.date IS NULL
