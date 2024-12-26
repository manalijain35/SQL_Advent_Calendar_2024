/*The Grinch tracked his weight every day in December to analyze how it changed daily.
Write a query to return the weight change (in pounds) for each day, calculated as the difference from the previous day's weight.*/
select log_id, weight - LAG(weight) OVER (ORDER BY day_of_month)
as weight_change
from grinch_weight_log;