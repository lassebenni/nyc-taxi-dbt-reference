# nyc_taxi — Chapter 6 start (Chapter 5 done)

> **You are on `ch6-docs-and-extras`.** Chapter 5 is finished: the models carry tests and `packages.yml` is in place. This is the clean starting point for Chapter 6.

## Your task: Chapter 6 — Docs and Extras

1. Add `description:` fields to models and columns in your schema YAML files.
2. Generate and browse the docs site: `dbt docs generate` then `dbt docs serve`, and explore the lineage graph.
3. Explore the package ecosystem (`packages.yml` + `dbt deps`).

When you finish, switch to the next branch for the practice exercises.

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
