# Exercise: Incremental timing write-up

**Chapter:** Week 13, [dbt on Databricks](https://github.com/lassebenni/datatrack/blob/main/Data%20Track/Week%2013/week_13__4_dbt_on_databricks.md)

## Goal

Run `fct_trips` twice on Databricks, record wall-clock time for each build, and explain why the second run is faster using `is_incremental()` and `{{ this }}` in your own words.

You can use **this reference project** (already ported) or your own Week 10 port. If your port is broken, `git switch week-13-databricks` in this repo gives you a known-good starting point.

## Setup

1. Copy `profiles.yml.example` to `profiles.yml` and export `DBRICKS_HOST`, `DBRICKS_HTTP_PATH`, `DBRICKS_TOKEN`, `DBT_SCHEMA`.
2. `uv sync && uv run dbt deps && uv run dbt debug`
3. Optional: drop your existing `fct_trips` table in your schema so the first run is a true full build (`drop table if exists hyf.<your_schema>.fct_trips` in the SQL warehouse).

## Your task

1. Time and run: `time uv run dbt build --select fct_trips`
2. Without changing any code, time and run the **exact same command** again.
3. Fill in `WRITEUP.md` with:
   - Both timings (seconds, approximate is fine)
   - Two or three sentences explaining the speed difference
   - Explicit mentions of `is_incremental()` and `{{ this }}`

## Success criteria

- `WRITEUP.md` has two recorded timings and a plain-English explanation you could say in an interview.
- Your explanation connects the faster second run to the incremental filter reading only new rows from staging, not rebuilding 128M rows from scratch.

## Compare

See `week-13-incremental-timing-solution` for a sample `WRITEUP.md`. Your timings will differ by warehouse size and cluster load — the explanation matters more than the exact seconds.
