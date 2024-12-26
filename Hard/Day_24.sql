/*Santa is tracking how many presents he delivers each night leading up to Christmas. He wants a running total to see how many gifts have been delivered so far on any given night. 
Using the deliveries table, calculate the cumulative sum of gifts delivered, ordered by the delivery date.*/
select delivery_date, gifts_delivered, 
sum(gifts_delivered) over (order by delivery_date) as running_total
from deliveries;