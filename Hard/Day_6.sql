/*Scientists are tracking polar bears across the Arctic to monitor their migration patterns and caloric intake. 
Write a query to find the top 3 polar bears that have traveled the longest total distance in December 2024. Include their bear_id, bear_name, and total_distance_traveled in the results.*/
SELECT 
    t1.bear_id,
    t1.bear_name,
    SUM(t2.distance_km) AS total_distance_traveled
FROM
    polar_bears t1
        JOIN
    tracking t2 ON t1.bear_id = t2.bear_id
WHERE
    t2.date BETWEEN '2024-12-01' AND '2024-12-31'
GROUP BY t1.bear_id , t1.bear_name
ORDER BY total_distance_traveled DESC
LIMIT 3;