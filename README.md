# nyc_taxi — Going Further: snapshots

> **You are on `going-further`.** This is the finished `solution` project plus the optional **snapshot exercise** reference: the `mutable_zones` seed and the `mutable_zones_snapshot`. It backs the Week 10 Going Further section *Exercising snapshots safely*. Nothing here is required for the assignment; the teaching chain (`ch2`…`solution`) is deliberately snapshot-free.

## What this is for

Use this branch to see the finished shape of the project, or to compare your own work against a known-good build. It is identical to the [`ch7-practice-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/ch7-practice-solution) tag.

To build it: set up `profiles.yml` (see the landing README on the `main` branch), then `dbt deps && dbt build --profiles-dir .`.

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
