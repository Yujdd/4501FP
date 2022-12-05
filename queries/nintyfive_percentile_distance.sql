 WITH hired_trips AS(
        SELECT
            distance
        FROM taxi_trips
        WHERE pickup_datetime BETWEEN '2013-07-01 00:00:00' AND '2013-07-31 24:00:00'
        
        UNION ALL
        
        SELECT 
            distance
        FROM uber_trips
        
        WHERE pickup_datetime BETWEEN '2013-07-01 00:00:00' AND '2013-07-31 24:00:00')
        
        
        SELECT distance
        FROM hired_trips
        ORDER BY distance DESC
        LIMIT  (SELECT 
                COUNT(*) 
                FROM hired_trips) 
                * 5/100      
        