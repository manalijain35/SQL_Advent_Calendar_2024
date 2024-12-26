/*The owner of a winter market wants to know which vendors have generated the highest revenue overall. 
For each vendor, calculate the total revenue for all their items and return a list of the top 2 vendors by total revenue. Include the vendor_name and total_revenue in your results.*/
SELECT 
    t1.vendor_name,
    SUM(t2.quantity_sold * t2.price_per_unit) AS total_revenue
FROM
    vendors t1
        JOIN
    sales t2 ON t1.vendor_id = t2.vendor_id
GROUP BY vendor_name
ORDER BY total_revenue DESC
LIMIT 2;