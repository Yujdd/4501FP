 WITH hired_trips AS(
        SELECT
            distance,
            pickup_datetime
        FROM taxi_trips
        WHERE pickup_datetime BETWEEN '2009-01-01 00:00:00' AND '2019-12-31 24:00:00'
        
        UNION
        
        SELECT 
            distance,
            pickup_datetime
        FROM uber_trips
        
        WHERE pickup_datetime BETWEEN '2009-01-01 00:00:00' AND '2019-12-31 24:00:00')
        
        
        SELECT DATE(pickup_datetime) AS date, 
                AVG(distance) AS avgdistance,
                count(*) as number_of_rides
                
        FROM hired_trips
        GROUP BY date
        ORDER BY number_of_rides DESC
        LIMIT 10 
        
        
        