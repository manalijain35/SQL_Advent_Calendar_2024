/*Santa needs to optimize his sleigh for Christmas deliveries. 
Write a query to calculate the total weight of gifts for each recipient type (good or naughty) and determine what percentage of the total weight is allocated to each type. 
Include the recipient_type, total_weight, and weight_percentage in the result.*/
with total_weight as ( select recipient_type, 
sum(weight_kg) as total_weight 
from gifts
group by recipient_type), 
overall_weight as (select sum(weight_kg) as total_weight
from gifts)
select t.recipient_type, t.total_weight,
round((t.total_weight/o.total_weight)*100,2) as weight_percentage
from
total_weight t,
overall_weight o;