
SELECT 
    AVG(Global_Sales),
    IF(Year_of_Release > 2010,
        'post-2010',
        'pre-2010') AS STATUS
FROM
    videogames.vgsales-2016
GROUP BY STATUS;

SELECT 
    AVG(Global_Sales) as Average_Global_Sales,
    CASE
        WHEN Year_of_Release >= 2010 THEN 'post-2010'
        WHEN Year_of_Release < 2010 THEN 'pre-2010'
    END AS STATUS
FROM
    videogames.vgsales_2016
GROUP BY STATUS;


-- Create a column 
alter  table testing add column Status varchar(50);
SET SQL_SAFE_UPDATES=0;
UPDATE testing 
SET 
    status = 'Post 2010'
WHERE
    Year_of_Release >= 2010;
UPDATE testing 
SET 
    status = 'Pre 2010'
WHERE
    Year_of_Release < 2010;

SELECT 
    *,
    CASE
        WHEN Year_of_Release >= 2010 THEN 'Post-2010'
        WHEN Year_of_Release < 2010 THEN 'Pre-2010'
    END AS STATUS
FROM
    cleandata.testing;



SELECT *,
if(Year_of_Release>2010, "Post-2010", "Pre-2010") as status
FROM cleandata.testing;