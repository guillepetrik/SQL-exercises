/*
Exercise: 54 
With a precision of two decimal places,
determine the average number of guns for all battleships
(including the ones in the Outcomes table).
*/

SELECT CAST(AVG(CAST(numGuns AS DECIMAL(10,2))) AS DECIMAL(10,2)) avgnum
FROM (
    SELECT c.numGuns FROM classes c 
    JOIN ships s ON s.class = c.class
    WHERE c.type = 'bb' AND c.numGuns IS NOT NULL
    UNION
    SELECT c.numGuns FROM classes c 
    JOIN outcomes o ON o.ship = c.class
    WHERE c.type = 'bb' AND c.numGuns IS NOT NULL
) sub_q 
