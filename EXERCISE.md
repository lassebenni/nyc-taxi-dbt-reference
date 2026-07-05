# Solution: Add the four generic tests

*You are on branch `exercise-generic-tests-solution`.* The two staging schema files carry all four generic-test types: `unique` + `not_null` on `stg_zones.location_id`; `not_null` on `stg_trips.pickup_datetime` and `pickup_location_id`; `accepted_values` on `payment_type`; and `relationships` on `pickup_location_id` at `severity: warn` (the 5 unmatched zones are a known source-data gap, surfaced as a warning rather than a blocked build).
