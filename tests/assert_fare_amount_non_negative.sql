-- Singular test: return every row with a negative fare. Zero rows returned = pass.
-- A singular test (not a generic YAML test) is the right tool because the check is
-- on the column's value (a numeric range), not its presence or an allowed set.
select *
from {{ ref('stg_trips') }}
where fare_amount < 0
