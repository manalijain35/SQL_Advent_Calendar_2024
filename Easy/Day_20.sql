/*We are looking for cheap gifts at the market. Which vendors are selling items priced below $10? List the unique (i.e. remove duplicates) vendor names.*/
SELECT DISTINCT
    t1.vendor_name
FROM
    vendors t1
        JOIN
    item_prices t2 ON t1.vendor_id = t2.vendor_id
WHERE
    t2.price_usd < 10