# Solution: Write a singular test

*You are on branch `exercise-singular-test-solution`.* `tests/assert_fare_amount_non_negative.sql` selects rows where `fare_amount < 0`, and `stg_trips` now filters them out with `and fare_amount >= 0`. The test failed with 182 rows against the unfiltered model and passes once the staging filter removes the bad data upstream.
