/*
Exercise: 55
For each class, determine the year the first ship of this class was launched.
If the lead ship’s year of launch is not known, get the minimum year of launch for the ships of this class.
Result set: class, year.
*/
SELECT c.class, MIN(s.launched) min_year
FROM classes c 
LEFT JOIN ships s ON c.class = s.class
GROUP BY c.class;
