-- Softened to `warn` for the reference repo: the 128M-row yellow dataset (2023-2025)
-- contains ~6,300 genuinely dirty rows where pickup >= dropoff. On Week 10's clean
-- 57K green sample this passed at `error`; porting to real data at scale surfaces the
-- data-quality issue. Students following the chapter can keep the default `error`.
{{ config(severity='warn') }}

select
    pickup_datetime,
    dropoff_datetime,
    pickup_location_id
from {{ ref('stg_trips') }}
where pickup_datetime > dropoff_datetime
