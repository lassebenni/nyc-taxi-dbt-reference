# nyc-taxi-dbt-reference

Reference dbt project for **HYF Data Track Week 10**. Mirrors the `nyc_taxi` project that the
chapters in `Data Track/Week 10/` walk you through building.

This repo is a **safety net**, not a starter. The chapters expect you to type each file
yourself. If you fall behind or something breaks, check out the tag for the chapter you are
on and diff your local copy against this one.

## Tags (one per chapter checkpoint)

| Tag                     | Chapter                                  | What you should have at this point                                  |
| ----------------------- | ---------------------------------------- | ------------------------------------------------------------------- |
| `ch2-dbt-setup-azure`   | Ch 2 — dbt Setup for Azure PostgreSQL    | `dbt_project.yml`, `profiles.yml.example`, `_sources.yml`, plain `stg_trips.sql` |
| `ch3-sql-jinja`         | Ch 3 — SQL and Jinja Templating          | `stg_trips.sql` extended with `payment_type_label`, `tip_pct`, `fare_per_mile` |
| `ch4-materializations`  | Ch 4 — Materializations & Layers         | `stg_zones.sql`, `fct_trips.sql`, materialization config in `dbt_project.yml` |
| `ch5-dbt-tests`         | Ch 5 — dbt Tests                         | All schema YAML, singular test, unit test, `packages.yml`           |
| `ch6-docs-extras`       | Ch 6 — Docs & Extras                     | Fleshed-out `_fct_trips.yml` descriptions, doc block, `mutable_zones` seed + snapshot |

```bash
git checkout ch4-materializations   # rewind to end of Chapter 4
git checkout main                   # latest (= end of Chapter 6)
```

## Setup

Prereqs: dbt-core 1.11 with `dbt-postgres` (see [Ch 2](https://github.com/hackyourfuture/datatrack/blob/main/Data%20Track/Week%2010/week_10__2_dbt_setup_azure.md) for install).

```bash
cp profiles.yml.example profiles.yml      # then edit `schema:` to dev_<your_name>
export PG_PASSWORD='your-week-6-password'  # macOS/Linux/WSL
just deps                                  # dbt deps  (only needed from v4 onward)
just build                                 # dbt build --select +fct_trips
```

`profiles.yml` is gitignored — it stays local so the file never lands in version control with a real password.

## CI

Every push runs `dbt build --select +fct_trips` against the shared Azure PostgreSQL instance. If the curriculum prose drifts away from runnable reality (test result counts change, columns get renamed, etc.) CI fails and the chapter gets fixed. See `.github/workflows/dbt-build.yml`.
