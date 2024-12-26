/*You are preparing holiday gifts for your family. Who in the family_members table are celebrating their birthdays in December 2024? List their name and birthday.*/
SELECT 
    name, birthday
FROM
    family_members
WHERE
    birthday BETWEEN '2024-12-01' AND '2024-12-31'