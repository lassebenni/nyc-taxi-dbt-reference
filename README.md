# nyc_taxi — Databricks port (Week 13)

> **You are on `week-13-ch-4-dbt`.** This is the **starter branch** for Week 13 Chapter 4 ([dbt on Databricks](https://github.com/lassebenni/datatrack/blob/main/Data%20Track/Week%2013/week_13__4_dbt_on_databricks.md)). It contains the finished Week 10 project with `profiles.yml` pre-configured for Databricks. As you follow Chapter 4, you will update `models/staging/_sources.yml` to point at Unity Catalog (`hyf.nyc_yellow`) and configure `fct_trips.sql` as an incremental model.
>
> To see the completed solution, check out [`week-13-ch-4-dbt-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/week-13-ch-4-dbt-solution).

## Quick start

1. `profiles.yml` is committed and reads environment variables.
2. Export the four env vars from [dbt on Databricks](https://github.com/lassebenni/datatrack/blob/main/Data%20Track/Week%2013/week_13__4_dbt_on_databricks.md): `DATABRICKS_HOST`, `DATABRICKS_HTTP_PATH`, `DATABRICKS_TOKEN`, `DBT_SCHEMA`.
3. `uv sync && uv run dbt deps && uv run dbt debug`
4. `uv run dbt build --select fct_trips` — run twice and compare wall-clock time.

## Week 13 practice exercise branches

Clone once, then `git switch` to the branch for each practice exercise. Each branch has an `EXERCISE.md` at the repo root; compare against the matching `-solution` branch when you are stuck.

| Practice exercise | Work on this branch | Compare against |
| --- | --- | --- |
| Ex 1: PySpark exploration | [week-13-practice-exercise-pyspark-exploration](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/week-13-practice-exercise-pyspark-exploration) | [week-13-practice-exercise-pyspark-exploration-solution](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/week-13-practice-exercise-pyspark-exploration-solution) |
| Ex 2: Incremental timing write-up | [week-13-practice-exercise-incremental-timing](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/week-13-practice-exercise-incremental-timing) | [week-13-practice-exercise-incremental-timing-solution](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/week-13-practice-exercise-incremental-timing-solution) |
| Ex 3: Lakehouse synthesis write-up | [week-13-practice-exercise-lakehouse-writeup](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/week-13-practice-exercise-lakehouse-writeup) | [week-13-practice-exercise-lakehouse-writeup-solution](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/week-13-practice-exercise-lakehouse-writeup-solution) |

## Week 10 chapter chain (Postgres)

The branches below are the Week 10 teaching chain on Azure Postgres. Week 13 builds on the finished `solution` shape, then ports it here.

| Chapter | Work on this branch | Compare against this tag (finished chapter) |
| --- | --- | --- |
| Ch2 — dbt Setup for Azure PostgreSQL | [`ch2-dbt-setup-azure-postgres`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch2-dbt-setup-azure-postgres) *(skeleton)* | [`ch2-dbt-setup-azure-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch2-dbt-setup-azure-solution) |
| Ch3 — SQL and Jinja Templating | [`ch3-sql-jinja-templating`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch3-sql-jinja-templating) | [`ch3-sql-jinja-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch3-sql-jinja-solution) |
| Ch4 — Materializations and Layers | [`ch4-materializations`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch4-materializations) | [`ch4-materializations-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch4-materializations-solution) |
| Ch5 — dbt Tests | [`ch5-dbt-testing`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch5-dbt-testing) | [`ch5-dbt-tests-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch5-dbt-tests-solution) |
| Ch6 — Docs and Extras | [`ch6-docs-and-extras`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch6-docs-and-extras) | [`ch6-docs-extras-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch6-docs-extras-solution) |
| Ch7 — Practice | [`ch7-practice`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch7-practice) | [`ch7-practice-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch7-practice-solution) |
| Full finished project (Postgres) | [`solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/solution) | [`ch7-practice-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch7-practice-solution) |

- **Fell behind on the port?** Check out [`week-13-ch-4-dbt-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/week-13-ch-4-dbt-solution).
- **Compare your work:** `*-solution` branches and tags are read-only checkpoints. `git switch -c mywork <branch>` to build on one.
