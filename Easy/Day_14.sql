/*Which ski resorts had snowfall greater than 50 inches?*/
SELECT 
    resort_name, location, snowfall_inches
FROM
    snowfall
WHERE
    snowfall_inches > 50