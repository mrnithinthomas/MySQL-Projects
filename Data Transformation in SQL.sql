-- Assignment 2

-- Create a database named vgsales
Create database vgsales;

-- Use vgsales
Use vgsales;

-- Create table named vgsales with column names
CREATE TABLE vgsales (
    Vg_Name VARCHAR(200),
    Platform VARCHAR(100),
    Year_of_Release YEAR,
    Genre VARCHAR(100),
    Publisher VARCHAR(200),
    NA_Sales DOUBLE,
    EU_Sales DOUBLE,
    JP_Sales DOUBLE,
    Other_Sales DOUBLE,
    Global_Sales DOUBLE,
    Critic_Score DOUBLE,
    Critic_Count INT,
    User_Score DOUBLE,
    User_Count INT,
    Developer VARCHAR(100),
    Rating VARCHAR(50)
);


-- Creating "STATUS" column that labels records before 2010 as 'pre-2010' and after 2010 as 'post-2010'
SELECT 
    *,
    CASE
        WHEN Year_of_Release >= 2010 THEN 'POST-2010'
        WHEN Year_of_Release < 2010 THEN 'PRE-2010'
    END AS STATUS
FROM
    vgsales.vgsales;
    
    
-- To feed "Post-2010" or "Pre-2010" into STATUS column based on Year_of_Release and to find out average of Post-2010 and Pre-2010 global sales.
SELECT 
    AVG(Global_Sales) as Average_Global_Sales,
    CASE
        WHEN Year_of_Release >= 2010 THEN 'POST-2010'
        WHEN Year_of_Release < 2010 THEN 'PRE-2010'
    END AS STATUS
FROM
    vgsales.vgsales
GROUP BY STATUS;



-- Submitted codes
SELECT 
    AVG(Global_Sales) as Average_Global_Sales,
    CASE
        WHEN Year_of_Release >= 2010 THEN 'POST-2010'
        WHEN Year_of_Release < 2010 THEN 'PRE-2010'
    END AS Pre_or_POST_2010
FROM
    videogames.vgsales_2016
GROUP BY Pre_or_POST_2010;

SELECT 
    *,
    CASE
        WHEN Year_of_Release >= 2010 THEN 'Post-2010'
        WHEN Year_of_Release < 2010 THEN 'Pre-2010'
    END AS Pre_or_POST_2010
FROM
    videogames.vgsales_2016;

