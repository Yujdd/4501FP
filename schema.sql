
        CREATE TABLE IF NOT EXISTS hourly_weather
        (
            id INTEGER PRIMARY KEY,
            DATE DATE,
            HourlyPrecipitation FLOAT,
            HourlyWindSpeed FLOAT
            );

         CREATE TABLE IF NOT EXISTS daily_weather
        (
            id INTEGER PRIMARY KEY,
            DATE DATE,
            Precipitation FLOAT,
            Windspeed FLOAT
            );


        CREATE TABLE IF NOT EXISTS taxi_trips
        (
            id INTEGER PRIMARY KEY,
            pickup_datetime DATE,
            dropoff_datetime DATE,
            tip_amount FLOAT,
            pickup_longitude FLOAT,
            pickup_latitude FLOAT,
            dropoff_longitude FLOAT,
            dropoff_latitude FLOAT,
            distance FLOAT
            
        );
        

    CREATE TABLE IF NOT EXISTS uber_trips
        (
            id INTEGER PRIMARY KEY,
            pickup_datetime DATE,
            pickup_longitude FLOAT,
            pickup_latitude FLOAT,
            dropoff_longitude FLOAT,
            dropoff_latitude FLOAT,
            distance FLOAT
            
        );

         CREATE TABLE IF NOT EXISTS daily_sunrise_sunset
        (
            id INTEGER PRIMARY KEY,
            DATE DATE,
            Sunrise DATE,
            Sunset DATE,
            );
