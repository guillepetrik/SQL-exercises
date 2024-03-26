
/*Exercise: 63 
Find the names of different passengers that ever travelled more than once occupying seats with the same number.
*/
SELECT name FROM Passenger
WHERE ID_psg IN(
    SELECT ID_psg FROM (
        SELECT ID_psg, place FROM Pass_in_trip
        GROUP BY ID_psg, place
        HAVING count(place)>1
        ) sq
);

