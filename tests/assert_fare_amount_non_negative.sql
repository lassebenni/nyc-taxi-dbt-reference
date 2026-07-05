-- TODO: write a singular test that returns every row in stg_trips with a
-- negative fare_amount. dbt passes a singular test when it returns ZERO rows.
-- See EXERCISE.md. Replace the placeholder below.
select *
from {{ ref('stg_trips') }}
where false
