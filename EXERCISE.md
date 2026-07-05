# Exercise: Debug a broken `ref()`

*You are on branch `exercise-debug-ref`, based on the finished practice project (`ch7-practice`).*

When dbt cannot resolve a `{{ ref() }}`, it fails at **compile time**, not run time. That is different from a plain SQL `CREATE VIEW`: Postgres would not catch a bad table name until someone queries the view. This drill trains the compile-to-find-the-typo workflow you will use on every real dbt error.

## Your task

`models/marts/fct_trips.sql` has one broken `{{ ref() }}`.

1. Compile the mart:

   ```bash
   dbt compile --select fct_trips
   ```

2. Read the error message. Write down: which **node** did dbt name, and which **file** did it point at? (Do this *before* reading the file top to bottom.)
3. Find the typo and fix it in `models/marts/fct_trips.sql`.
4. Re-run `dbt compile --select fct_trips` and confirm it compiles cleanly, then `dbt build --select +fct_trips`.

## Success criteria

- You spotted the typo from the error message alone.
- You can state in one sentence why dbt reports this at compile time, not run time.

Compare your fix: `git diff exercise-debug-ref exercise-debug-ref-solution`.
