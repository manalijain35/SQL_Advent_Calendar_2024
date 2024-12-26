/*A family reunion is being planned, and the organizer wants to identify the three family members with the most children. 
Write a query to calculate the total number of children for each parent and rank them. Include the parent’s name and their total number of children in the result.*/
with cte as (select parent_id, count(child_id) as Number_of_child 
from parent_child_relationships
group by parent_id
)

select f.name, c.Number_of_child, 
rank() over (order by c.Number_of_child Desc) as Ranking
from family_members f
join cte c on f.member_id = c.parent_id
order by Number_of_child Desc
limit 3;