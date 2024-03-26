/*
Exercise: 146
For the PC in the PC table with the maximum code value, obtain all its characteristics (except for the code) 
and display them in two columns:
- name of the characteristic (title of the corresponding column in the PC table);
- its respective value.
*/
SELECT chr, value FROM (
    SELECT 
        CAST(model AS CHAR(25)) model,
        CAST(speed AS CHAR(25)) speed, 
        CAST(ram AS CHAR(25)) ram, 
        CAST(hd AS CHAR(25)) hd, 
        CAST(cd AS CHAR(25)) cd, 
        CAST(price AS CHAR(25)) price 
    FROM pc
    WHERE code = (SELECT MAX(code) FROM pc)
    ) as x
UNPIVOT ( value
FOR chr IN (model, speed, ram, hd, cd, price)
) as unpvt;

/*
SELECT chr, 
       CASE chr 
           WHEN 'cd' THEN CONVERT(VARCHAR(25), value) + 'x'
           WHEN 'price' THEN FORMAT(value, '0.00')
           ELSE CONVERT(VARCHAR(25), value) 
       END AS value
FROM (
    SELECT 
        CAST(model AS NUMERIC) model,
        CAST(speed AS NUMERIC) speed, 
        CAST(ram AS NUMERIC) ram, 
        CAST(hd AS NUMERIC) hd, 
        CAST(REPLACE(cd, 'x', '') AS NUMERIC) cd, 
        CAST(price AS NUMERIC) price 
    FROM pc
    WHERE code = (SELECT MAX(code) FROM pc)
) AS x
UNPIVOT (value FOR chr IN (model, speed, ram, hd, cd, price)) AS unpvt;
*/