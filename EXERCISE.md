# Exercise: Propagate a column change

*You are on branch `exercise-column-propagation`, based on the finished practice project (`ch7-practice`).*

Adding a column to a staging model is one of the most common dbt changes on the job. The column does **not** appear in a downstream mart automatically: `fct_trips` uses an explicit column list, so you must add it there too and rebuild the whole chain with the `+` prefix.

## Your task

1. In `models/staging/stg_trips.sql`, add a `trip_duration_minutes` column (see the TODO). Build staging and verify:

   ```bash
   dbt run --select stg_trips
   ```

2. **Before** editing the mart, query it: `select trip_duration_minutes from <your_schema>.fct_trips limit 3;`. It errors. Write down why.
3. In `models/marts/fct_trips.sql`, propagate `t.trip_duration_minutes` (see the TODO), then rebuild the full chain:

   ```bash
   dbt build --select +fct_trips
   ```

4. Re-run the mart query. It now returns rows.

## Success criteria

- `trip_duration_minutes` appears in both `stg_trips` and `fct_trips`.
- You can state why the step-2 query errored, and what `--select +fct_trips` does that `--select fct_trips` would not.

Compare your work: `git diff exercise-column-propagation exercise-column-propagation-solution`.
