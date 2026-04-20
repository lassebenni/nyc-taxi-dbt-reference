# nyc_taxi — Chapter 5 start (Chapter 4 done)

> **You are on `ch5-dbt-testing`.** Chapter 4 is finished: the `fct_trips` mart is built from `stg_trips` and `stg_zones`. This is the clean starting point for Chapter 5.

## Your task: Chapter 5 — dbt Tests

1. Add `packages.yml` with `dbt_utils`, then `dbt deps`.
2. Add generic tests in schema YAML: `not_null`, `unique`, `accepted_values`, and a `relationships` test between models.
3. Add a singular test in `tests/` and a unit test.
4. Run everything: `dbt build --select +fct_trips`. Some tests warn on real source-data gaps: that is expected, and you triage them.

When you finish, switch to the next branch to continue with Chapter 6.

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
