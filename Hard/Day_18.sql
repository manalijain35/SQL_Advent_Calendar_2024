/*A travel agency is promoting activities for a "Summer Christmas" party. 
They want to identify the top 2 activities based on the average rating. Write a query to rank the activities by average rating.*/
with cte as ( select activity_id, 
avg(rating) as average_rating
from activity_ratings
group by activity_id)

select a.activity_name, c.average_rating,
rank() over (order by c.average_rating) as Ranking
from activities a
join cte c on a.activity_id = c.activity_id
order by c.average_rating desc
limit 2;