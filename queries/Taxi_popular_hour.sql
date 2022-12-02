
    SELECT strftime('%H', pickup_datetime) as hour_of_day, COUNT(*) AS frequency
    FROM taxi_trips
    GROUP BY hour_of_day
    ORDER BY frequency DESC;
