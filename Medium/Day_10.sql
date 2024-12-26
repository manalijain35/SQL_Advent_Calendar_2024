/*You are tracking your friends' New Year’s resolution progress. Write a query to calculate the following for each friend: number of resolutions they made, number of resolutions they completed, and success percentage (% of resolutions completed) and a success category based on the success percentage:
- Green: If success percentage is greater than 75%.
- Yellow: If success percentage is between 50% and 75% (inclusive).
- Red: If success percentage is less than 50%.*/
WITH resolutions_counts AS (
    SELECT 
        friend_name, 
        COUNT(resolution) AS number_of_resolution, 
        SUM(is_completed) AS completed_resolution
    FROM 
        resolutions
    GROUP BY 
        friend_name
)

SELECT 
    friend_name, 
    number_of_resolution, 
    completed_resolution,
    CASE 
        WHEN number_of_resolution = 0 THEN 0
        ELSE (CAST(completed_resolution AS FLOAT) * 100.0 / CAST(number_of_resolution AS FLOAT))
    END AS success_percentage,
    CASE 
        WHEN number_of_resolution = 0 THEN 'Red'
        WHEN (CAST(completed_resolution AS FLOAT) * 100.0 / CAST(number_of_resolution AS FLOAT)) > 75 THEN 'Green'
        WHEN (CAST(completed_resolution AS FLOAT) * 100.0 / CAST(number_of_resolution AS FLOAT)) BETWEEN 50 AND 75 THEN 'Yellow'
        ELSE 'Red'
    END AS success_category
FROM 
    resolutions_counts
ORDER BY 
    success_percentage DESC;

