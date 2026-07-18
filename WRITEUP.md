# Incremental timing write-up

Fill this in after running `dbt build --select fct_trips` twice.

## Timings

| Run | Command | Wall-clock time (seconds) |
| --- | --- | --- |
| 1 (full or cold) | `dbt build --select fct_trips` | TODO |
| 2 (incremental) | `dbt build --select fct_trips` | TODO |

## Explanation

TODO: In your own words (2-3 sentences), explain why run 2 was faster. Reference:

- `is_incremental()` — what does it evaluate to on run 1 vs run 2?
- `{{ this }}` — what table does it point at during the incremental filter?

## Interview one-liner

TODO: One sentence you could say in a junior data-engineering interview about incremental models on Delta.
