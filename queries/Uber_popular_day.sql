
    SELECT strftime('%w', pickup_datetime) as day_of_week, COUNT(*) AS frequency
    FROM uber_trips
    GROUP BY day_of_week
    ORDER BY frequency DESC;
