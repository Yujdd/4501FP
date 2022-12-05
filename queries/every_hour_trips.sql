
        WITH hired_trips AS(
        SELECT
            DATE(pickup_datetime) AS DATE,
            COUNT(*) as number_of_rides
        FROM taxi_trips
        WHERE pickup_datetime BETWEEN '2014-01-01 00:00:00' AND '2014-12-31 24:00:00'
        GROUP BY DATE
        
        UNION ALL
        
        SELECT 
            DATE(pickup_datetime) AS DATE,
            COUNT(*) as number_of_rides
        FROM uber_trips
        WHERE pickup_datetime BETWEEN '2014-01-01 00:00:00' AND '2014-12-31 24:00:00'
        GROUP BY DATE
        )
              
        SELECT DATE(daily_weather.DATE) as D,
                hired_trips.number_of_rides
              
        FROM daily_weather
            INNER JOIN hired_trips
                ON daily_weather.DATE = hired_trips.DATE
        WHERE D BETWEEN '2014-01-01' AND '2015-01-01'
        GROUP BY D
        ORDER BY daily_weather.WINDSPEED DESC
        LIMIT 10 
        