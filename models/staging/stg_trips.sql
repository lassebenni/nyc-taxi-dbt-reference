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
    {{ safe_divide('tip_amount', 'fare_amount') }} as tip_pct,
    {{ safe_divide('fare_amount', 'trip_distance') }} as fare_per_mile,
    case payment_type
        {% for code, label in payment_types.items() %}
        when {{ code }} then '{{ label }}'
        {% endfor %}
        else 'Other'
    end as payment_type_label,
    extract(epoch from (dropoff_datetime - pickup_datetime)) / 60 as trip_duration_minutes
from {{ source('nyc_taxi', 'raw_trips') }}
where pickup_location_id is not null
    and fare_amount >= 0
