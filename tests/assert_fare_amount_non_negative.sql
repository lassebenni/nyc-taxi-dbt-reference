-- Ch7 Ex2: singular test enforcing "fare_amount must not be negative."
-- Paired with a WHERE clause in stg_trips that filters the 182 rows the TLC
-- ships with fare_amount < 0, so this test passes on the filtered data.
select
    pickup_datetime,
    fare_amount
from {{ ref('stg_trips') }}
where fare_amount < 0
