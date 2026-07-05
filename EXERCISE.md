# Solution: Macros and computed columns

*You are on branch `exercise-macros-solution`.* `macros/safe_divide.sql` returns `numerator / NULLIF(denominator, 0)`, and `stg_trips` calls it for both `tip_pct` and `fare_per_mile`. The guard against a zero denominator now lives in one place.
