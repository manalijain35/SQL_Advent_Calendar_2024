/*You’re planning your next ski vacation and want to find the best regions with heavy snowfall. Given the tables resorts and snowfall, find the average snowfall for each region and sort the regions in descending order of average snowfall. 
Return the columns region and average_snowfall.*/
SELECT 
    t1.Region, AVG(t2.snowfall_inches) AS Average_snowfall
FROM
    ski_resorts t1
        JOIN
    snowfall t2 ON t1.resort_id = t2.resort_id
GROUP BY Region
ORDER BY Average_snowfall DESC;