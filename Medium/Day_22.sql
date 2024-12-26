/*We are hosting a gift party and need to ensure every guest receives a gift. 
Using the guests and guest_gifts tables, write a query to identify the guest(s) who have not been assigned a gift (i.e. they are not listed in the guest_gifts table).*/
SELECT 
    t1.guest_name
FROM
    guests t1
        LEFT JOIN
    guest_gifts t2 ON t1.guest_id = t2.guest_id
WHERE
    t2.guest_id IS NULL;