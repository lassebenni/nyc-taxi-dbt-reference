# Incremental timing write-up

Sample answers from the reference port on the class 2X-Small serverless warehouse. Your seconds will differ; the reasoning pattern should not.

## Timings

| Run | Command | Wall-clock time (seconds) |
| --- | --- | --- |
| 1 (full or cold) | `dbt build --select fct_trips` | ~62 |
| 2 (incremental) | `dbt build --select fct_trips` | ~10 |

## Explanation

On the first run the `fct_trips` table does not exist yet, so `is_incremental()` is false and dbt reads all ~128M staged trips, joins zones, and builds the mart from scratch. On the second run the table already exists, so `is_incremental()` is true and dbt adds a `where` clause that only selects trips newer than `max(pickup_datetime)` from `{{ this }}` — the existing `fct_trips` Delta table in my schema. That means the second run processes almost no new rows and merges a tiny batch instead of rebuilding the whole history.

## Interview one-liner

Incremental models skip re-reading data you already transformed by filtering staging against the existing target table (`{{ this }}`) whenever `is_incremental()` is true.
