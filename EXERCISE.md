# Solution: Propagate a column change

*You are on branch `exercise-column-propagation-solution`.* `stg_trips` computes `trip_duration_minutes` with `extract(epoch from (dropoff_datetime - pickup_datetime)) / 60`, and `fct_trips` selects `t.trip_duration_minutes`. Because the mart uses an explicit column list, the new column only appears after you add it there and rebuild upstream with `--select +fct_trips`.
