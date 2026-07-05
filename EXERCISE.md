# Exercise: Macros and computed columns

*You are on branch `exercise-macros`, based on the finished practice project (`ch7-practice`).*

`stg_trips` computes two ratio columns, `tip_pct` and `fare_per_mile`. Both divide, and both must guard against a zero denominator (a voided trip has `fare_amount = 0`; a metered-time-only trip has `trip_distance = 0`). Repeating the guard is exactly the kind of duplication a **macro** removes.

`models/staging/stg_trips.sql` already calls `{{ safe_divide(...) }}` for both columns, but the macro is not implemented yet, so `dbt compile` fails.

## Your task

1. Open `macros/safe_divide.sql`. Implement the macro body so it returns `numerator / NULLIF(denominator, 0)`, then remove the `raise_compiler_error` line.
2. Compile and inspect the rendered SQL:

   ```bash
   dbt compile --select stg_trips
   ```

   Open `target/compiled/nyc_taxi/models/staging/stg_trips.sql` and confirm both `{{ safe_divide(...) }}` calls expanded to plain SQL.
3. Build and spot-check:

   ```bash
   dbt build --select stg_trips
   ```

## Success criteria

- `tip_pct` and `fare_per_mile` are non-null for rows with non-zero denominators, NULL otherwise.
- `dbt compile` exits with no Jinja errors and the compiled file contains `NULLIF(...)`.

Compare your work: `git diff exercise-macros exercise-macros-solution`.
