/*A community is hosting a series of festive feasts, and they want to ensure a balanced menu. 
Write a query to identify the top 3 most calorie-dense dishes (calories per gram) served for each event. Include the dish_name, event_name, and the calculated calorie density in your results.*/
with cte as (
    select event_id, dish_name, calories/weight_g as calorie_density,
    rank() over (partition by event_id order by calories/weight_g desc) as Dish_rank
from
    menu
)

select
    c1. event_id, c1.dish_name, c1.calorie_density, e.event_name
from cte c1
join events e on c1.event_id = e.event_id
where c1.Dish_rank <= 3
order by c1.event_id, c1.calorie_density DESC;