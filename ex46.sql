/*
Exercise: 46 
For each ship that participated in the Battle of Guadalcanal, get its name, displacement, and the number of guns.
*/
SELECT name, displacement, numGuns FROM classes RIGHT JOIN(
    SELECT COALESCE(name, ship) as name, class, battle FROM outcomes
    FULL JOIN ships ON ship = name
) sub_q ON classes.class = sub_q.class OR classes.class = sub_q.name
WHERE battle = 'Guadalcanal';