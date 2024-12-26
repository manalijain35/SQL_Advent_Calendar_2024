/*This year, we're celebrating Christmas in the Southern Hemisphere! Which beaches are expected to have temperatures above 30°C on Christmas Day?*/
SELECT 
    beach_name, country, expected_temperature_c
FROM
    beach_temperature_predictions
WHERE
    expected_temperature_c > 30
        AND date = '2024-12-25';