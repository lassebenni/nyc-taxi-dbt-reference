# nyc-taxi-dbt-reference

Reference dbt project for **HYF Data Track Week 10**. This is the `nyc_taxi` project that the chapters in `Data Track/Week 10/` walk you through building, one chapter at a time.

The chapters are laid out as a **connected chain of branches**. Each branch is where you *do* one chapter, starting from the finished state of the chapter before it. You clone once, switch to your chapter's branch, and commit your work as you go.

## Start here

```bash
git clone https://github.com/lassebenni/nyc-taxi-dbt-reference.git nyc_taxi
cd nyc_taxi
git switch ch2-dbt-setup-azure-postgres   # the Ch2 starter skeleton
cp profiles.yml.example profiles.yml      # then edit `user` and `schema`
export PG_PASSWORD='your-personal-password-from-week-9'
dbt debug --profiles-dir .                # or: just debug
```

Do a **plain clone** and **keep `.git`** (do not `rm -rf .git`): that is what lets you switch between chapter branches. Use the **personal Postgres login your teacher gave you in Week 9**, not a shared admin account. `profiles.yml` is gitignored.

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

**How to use it:**

- **Do a chapter:** `git switch <chapter branch>` and build. Each branch already contains every earlier chapter's work.
- **Fell behind or broke something?** Switch to the *next* chapter's branch to get a clean start with the previous chapter already done, and keep up with the class.
- **Compare your work:** the `*-solution` **tags** are immutable snapshots of each finished chapter. `git checkout <tag>` lands you in "detached HEAD" (read-only), so create a branch (`git switch -c mywork <tag>`) if you want to build on one.

You cannot push to this repo (it is read-only to you) and you do not need to: the chapter project is local learning, and the graded assignment lives in a separate template repo.

## Practice exercises

The Week 10 practice drills are **branches too**, each starting from the finished project (`ch7-practice`) so `dbt` actually runs. Do them in any order: `git switch` to a branch, read its `EXERCISE.md`, do the work, then `git diff` against the matching `-solution` branch.

| Exercise | Start branch | Solution branch |
| --- | --- | --- |
| Macros and computed columns (`safe_divide`) | [`exercise-macros`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/exercise-macros) | [`exercise-macros-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/exercise-macros-solution) |
| Write a singular test | [`exercise-singular-test`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/exercise-singular-test) | [`exercise-singular-test-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/exercise-singular-test-solution) |
| Debug a broken `ref()` | [`exercise-debug-ref`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/exercise-debug-ref) | [`exercise-debug-ref-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/exercise-debug-ref-solution) |
| Propagate a column change | [`exercise-column-propagation`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/exercise-column-propagation) | [`exercise-column-propagation-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/exercise-column-propagation-solution) |
| Add the four generic tests | [`exercise-generic-tests`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/exercise-generic-tests) | [`exercise-generic-tests-solution`](https://github.com/lassebenni/nyc-taxi-dbt-reference/tree/exercise-generic-tests-solution) |
