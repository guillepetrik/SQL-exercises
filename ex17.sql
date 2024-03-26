/*
Exercise: 17
Get the laptop models that have a speed smaller than the speed of any PC.
Result set: type, model, speed.
*/

SELECT DISTINCT 'laptop' AS type, model, speed
FROM laptop 
WHERE speed < ALL (SELECT speed 
    FROM pc
    );