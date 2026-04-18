select
    pickup_datetime,
    dropoff_datetime,
    pickup_location_id,
    dropoff_location_id,
    fare_amount,
    tip_amount,
    trip_distance
from {{ source('nyc_taxi', 'raw_trips') }}
where pickup_location_id is not null
