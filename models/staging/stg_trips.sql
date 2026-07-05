{{ config(materialized='view') }}

{% set payment_types = {
    1: 'Credit card',
    2: 'Cash',
    3: 'No charge',
    4: 'Dispute',
    5: 'Unknown',
    6: 'Voided trip'
} %}

select
    pickup_datetime,
    dropoff_datetime,
    pickup_location_id,
    dropoff_location_id,
    fare_amount,
    tip_amount,
    trip_distance,
    payment_type,
    case
        when fare_amount > 0 then round((tip_amount / fare_amount)::numeric, 4)
        else null
    end as tip_pct,
    case
        when trip_distance > 0 then round((fare_amount / trip_distance)::numeric, 4)
        else null
    end as fare_per_mile,
    case payment_type
        {% for code, label in payment_types.items() %}
        when {{ code }} then '{{ label }}'
        {% endfor %}
        else 'Other'
    end as payment_type_label
    -- TODO: add a trip_duration_minutes column. Put a comma after payment_type_label
    -- above, then add this on a new line:
    --   extract(epoch from (dropoff_datetime - pickup_datetime)) / 60 as trip_duration_minutes
from {{ source('nyc_taxi', 'raw_trips') }}
where pickup_location_id is not null
