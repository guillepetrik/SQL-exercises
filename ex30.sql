/*
Exercise: 30 
Under the assumption that receipts of money (inc) and payouts (out) can be registered any number of times a day for each collection point [i.e. the code column is the primary key], display a table with one corresponding row for each operating date of each collection point.
Result set: point, date, total payout per day (out), total money intake per day (inc).
Missing values are considered to be NULL.
*/
SELECT COALESCE(i.point, o.point) AS point, COALESCE(i.date, o.date) AS date, SUM(o.out) as outcome, SUM(i.inc) as income
FROM Income i
FULL OUTER JOIN Outcome o ON i.code = o.code AND i.point = o.point AND i.date = o.date
GROUP BY COALESCE(i.point, o.point), COALESCE(i.date, o.date)
ORDER BY point, date;
