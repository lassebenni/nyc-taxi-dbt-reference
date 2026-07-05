# Exercise: Add the four generic tests

*You are on branch `exercise-generic-tests`, based on the finished practice project (`ch7-practice`) with the column-level generic tests removed.*

Generic tests (`not_null`, `unique`, `accepted_values`, `relationships`) are the highest-frequency test type in real dbt projects, and the one an interviewer is most likely to ask you to write on the spot. Here you attach all four yourself, then read a *real* failure that is a fact about the source data, not a bug in your code.

## Your task

Complete the `# TODO` markers in the two staging schema files:

1. `models/staging/_stg_zones.yml`: `unique` and `not_null` on `location_id` (the zone primary key must be a clean key first).
2. `models/staging/_stg_trips.yml`:
   - `not_null` on `pickup_datetime` and on `pickup_location_id`.
   - `accepted_values` on `payment_type` with `values: [1, 2, 3, 4, 5, 6]`.
   - `relationships` on `pickup_location_id` asserting every value exists as a `location_id` in `stg_zones`.
3. Run the staging tests:

   ```bash
   dbt test --select stg_trips stg_zones
   ```

   The `relationships` test **fails**: some trips carry a `pickup_location_id` with no matching zone (the same trips that show a NULL `pickup_borough` in `fct_trips`). This is a real source-data gap, not a code bug.
4. Inspect the failing rows (open the compiled test under `target/compiled/...` and run it in `psql`), then set `config: severity: warn` on the `relationships` test. Re-run: it now reports `WARN`, not `ERROR`.

## Success criteria

- You can state in one sentence what each of the four generic tests checks.
- You can explain why `warn` (not `error`) is reasonable for a known source-data gap.

Compare your work: `git diff exercise-generic-tests exercise-generic-tests-solution`.
