/*A collector wants to identify the top 3 snow globes with the highest number of figurines. Write a query to rank them and include their globe_name, number of figurines, and material.*/
with cte as (select globe_id, count(distinct(figurine_type)) as number_of_figurines from figurines
group by globe_id) 

select s.globe_name, c.number_of_figurines, s.material,
rank() over (order by c.number_of_figurines desc) as Ranking
from cte c
join snow_globes s on c.globe_id = s.globe_id
order by Ranking 
limit 3;