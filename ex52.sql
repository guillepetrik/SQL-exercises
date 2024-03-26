/*
Exercise: 52 
Determine the names of all ships in the Ships table that can be a Japanese battleship
having at least nine main guns with a caliber of less than 19 inches 
and a displacement of not more than 65 000 tons.
*/
SELECT name FROM Ships s 
JOIN Classes  c ON c.class=s.class
WHERE (type = 'bb' OR type IS NULL )
    AND (numGuns >= 9 OR numGuns IS NULL)
    AND (country = 'Japan')
    AND (bore < 19 OR bore IS NULL)
    AND (displacement <= 65000 OR displacement IS NULL);    