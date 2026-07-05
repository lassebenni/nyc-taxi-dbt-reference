# Solution: Debug a broken `ref()`

*You are on branch `exercise-debug-ref-solution`.* `models/marts/fct_trips.sql` uses the correct `{{ ref('stg_trips') }}`.

dbt resolves every `ref()` at compile time and builds the DAG from it, so a typo surfaces immediately as a `Compilation Error` naming the missing node, before any SQL reaches Postgres.
