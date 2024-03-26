/*
Exercise: 66 
For all days between 2003-04-01 and 2003-04-07 find the number of trips from Rostov with passengers aboard.
Result set: date, number of trips.
*/
WITH table1 AS (
SELECT '2003-04-01 00:00:00.000' dt UNION
SELECT '2003-04-02 00:00:00.000' dt UNION
SELECT '2003-04-03 00:00:00.000' dt UNION
SELECT '2003-04-04 00:00:00.000' dt UNION
SELECT '2003-04-05 00:00:00.000' dt UNION
SELECT '2003-04-06 00:00:00.000' dt UNION
SELECT '2003-04-07 00:00:00.000' dt
)
SELECT tt.dt, (
    SELECT COUNT(*) FROM (
        SELECT DISTINCT t.trip_no
        FROM pass_in_trip pit, trip t
        WHERE pit.trip_no = t.trip_no
        AND t.town_from = 'rostov'
        AND tt.dt = pit.date
    ) trips
)  FROM table1 tt
