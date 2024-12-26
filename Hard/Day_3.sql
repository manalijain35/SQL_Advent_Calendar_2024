/*You’re trying to identify the most calorie-packed candies to avoid during your holiday binge. Write a query to rank candies based on their calorie count within each category. 
Include the candy_name, candy_category, calories, and rank (rank_in_category) within the category.*/
Select 
candy_name, 
candy_category, 
calories,
Rank() over(partition by candy_category order by calories DESC) as rank_in_category
from candy_nutrition;
