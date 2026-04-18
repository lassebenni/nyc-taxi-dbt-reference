# nyc_taxi — Chapter 2 starter (skeleton)

> **You are on `ch2-dbt-setup-azure-postgres`.** This is the Chapter 2 starting skeleton: project config and empty `models/` and `macros/` folders. There are no models yet: building them is the point of the week.

## Your task: Chapter 2 — dbt Setup for Azure PostgreSQL

1. Set up your connection (once):
   ```bash
   cp profiles.yml.example profiles.yml     # then edit `user` and `schema`
   export PG_PASSWORD='your-personal-password-from-week-9'
   dbt debug --profiles-dir .               # or: just debug
   ```
   Use the **personal Postgres login your teacher gave you in Week 9**, not a shared admin account. `profiles.yml` is gitignored.
2. Declare the Week 9 raw tables as sources in `models/staging/_sources.yml` (`raw_trips`, `raw_zones`, schema `nyc_taxi`).
3. Write your first staging model, `models/staging/stg_trips.sql`, and run it: `dbt run --select stg_trips`.

When you finish, switch to the next branch to keep going (it already has Chapter 2 done as its starting point).

## The chapter chain

Each branch begins from the previous chapter's finished solution, so switching forward always lands you on a clean, working starting point.

| Chapter | Work on this branch | Compare against this tag (finished chapter) |
| --- | --- | --- |
| Ch2 — dbt Setup for Azure PostgreSQL | [`ch2-dbt-setup-azure-postgres`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch2-dbt-setup-azure-postgres) *(skeleton)* | [`ch2-dbt-setup-azure-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch2-dbt-setup-azure-solution) |
| Ch3 — SQL and Jinja Templating | [`ch3-sql-jinja-templating`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch3-sql-jinja-templating) | [`ch3-sql-jinja-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch3-sql-jinja-solution) |
| Ch4 — Materializations and Layers | [`ch4-materializations`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch4-materializations) | [`ch4-materializations-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch4-materializations-solution) |
| Ch5 — dbt Tests | [`ch5-dbt-testing`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch5-dbt-testing) | [`ch5-dbt-tests-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch5-dbt-tests-solution) |
| Ch6 — Docs and Extras | [`ch6-docs-and-extras`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch6-docs-and-extras) | [`ch6-docs-extras-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch6-docs-extras-solution) |
| Ch7 — Practice | [`ch7-practice`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch7-practice) | [`ch7-practice-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch7-practice-solution) |
| Full finished project | [`solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/solution) | [`ch7-practice-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch7-practice-solution) |

- **Fell behind or broke something?** Switch to the *next* chapter's branch to get a clean start with the previous chapter already done.
- **Compare your work:** the `*-solution` tags are immutable snapshots. `git checkout <tag>` is read-only (detached HEAD); create a branch (`git switch -c mywork <tag>`) to build on one.
