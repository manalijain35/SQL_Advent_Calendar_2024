/*Scientists are studying the diets of polar bears. Write a query to find the maximum amount of food (in kilograms) consumed by each polar bear in a single meal December 2024. 
Include the bear_name and biggest_meal_kg, and sort the results in descending order of largest meal consumed.*/
SELECT 
    t1.bear_name, MAX(t2.food_weight_kg) AS biggest_meal
FROM
    polar_bears t1
        JOIN
    meal_log t2 ON t1.bear_id = t2.bear_id
WHERE
    date BETWEEN '2024-12-01' AND '2024-12-31'
GROUP BY t1.bear_id
ORDER BY biggest_meal DESC;