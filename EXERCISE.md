# Exercise: Write a singular test

*You are on branch `exercise-singular-test`, based on the finished practice project (`ch7-practice`).*

A **singular test** is a plain `.sql` file that returns the *bad* rows. dbt passes it when the query returns zero rows. Unlike a generic YAML test (`not_null`, `accepted_values`), a singular test can express any SQL predicate, including a numeric range like "fare must not be negative."

`stg_trips` currently does **not** filter negative fares, and the January 2024 TLC data has 182 of them.

## Your task

1. Complete `tests/assert_fare_amount_non_negative.sql` so it returns every `stg_trips` row where `fare_amount < 0`. Run it and confirm it catches the bad data:

   ```bash
   dbt build --select stg_trips
   dbt test --select test_type:singular
   ```

   It must report `FAIL 182`. That proves the test works.
2. Fix the data at the source model: add `and fare_amount >= 0` to the `where` clause in `models/staging/stg_trips.sql`. Rebuild and re-test:

   ```bash
   dbt build --select stg_trips
   dbt test --select test_type:singular
   ```

   It must now report `PASS`.

## Success criteria

- The test reports `FAIL 182` before the filter and `PASS` after.
- You can state in one sentence why a singular test is the right tool here rather than a generic `not_null`.

Compare your work: `git diff exercise-singular-test exercise-singular-test-solution`.
