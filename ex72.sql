/*

*/

SELECT TOP 1 WITH TIES name, trip_Qty FROM passenger
JOIN
(SELECT c1, MAX(trip_Qty) trip_Qty FROM
(SELECT pass_in_trip.ID_psg c1, Trip.ID_comp c2, COUNT(*) trip_Qty FROM pass_in_trip
JOIN trip ON trip.trip_no=pass_in_trip.trip_no
GROUP BY pass_in_trip.ID_psg, Trip.ID_comp
) AS t
GROUP BY c1
HAVING COUNT(*)=1) AS tt
ON ID_psg=c1
ORDER BY trip_Qty DESC

/* works on first db but fails in the other test cases

WITH sq AS (
    SELECT t.trip_no, t.ID_comp, pit.ID_psg, psg.name
    FROM Trip t
    JOIN Pass_in_trip pit ON t.trip_no = pit.trip_no
    JOIN Passenger psg ON pit.ID_psg = psg.ID_psg
), sq2 AS (
    SELECT name, COUNT(*) AS qty
    FROM sq
    GROUP BY name
)
SELECT name, qty
FROM sq2
WHERE qty = (SELECT MAX(qty) FROM sq2);

*/
