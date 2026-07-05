# nyc-taxi-dbt-reference

Reference dbt project for **HYF Data Track Week 10**. Mirrors the `nyc_taxi` project that the
chapters in `Data Track/Week 10/` walk you through building.

This repo has two roles:

1. **A starter for the setup chapter.** Cloning the `ch2-start` branch gives you a ready-made
   project skeleton so you can skip the `dbt init` boilerplate and get straight to configuring
   your connection. Setup is not the skill you are here to learn.
2. **A safety net for the modelling chapters.** From Chapter 3 on, you type each model yourself:
   that typing is how the dbt mental model sticks. When you fall behind or something breaks,
   switch to the matching `*-start` branch to continue, or check out a `chN-...` tag to diff your
   work against the finished chapter.

## Start here: clone and switch to the skeleton

```bash
git clone https://github.com/lassebenni/nyc-taxi-dbt-reference.git nyc_taxi
cd nyc_taxi
git switch ch2-start                     # the starter skeleton
cp profiles.yml.example profiles.yml     # then edit `user` and `schema`
export PG_PASSWORD='your-personal-password-from-week-9'   # macOS/Linux/WSL
dbt debug --profiles-dir .               # or: just debug
```

Do a **plain clone** (not `--single-branch`) and **keep `.git`**: that is what lets you
`git switch ch3-start`, `ch4-start`, ... later to catch up. Work on the `ch2-start` branch and
commit as you go; you cannot push to this repo (it is read-only to you), and you do not need to:
the chapter project is local learning, and the graded assignment is a separate template repo.

Use the **personal Postgres login your teacher gave you in Week 9** (your own username and
password), not a shared admin account. `profiles.yml` is gitignored so it never lands in version
control with a real password.

## Chapter checkpoints

Every chapter has a **branch** you switch to and keep working from, and a **tag** for a clean,
unchanged copy to compare against or roll back to.

| Switch to continue a chapter | Diff against the finished chapter | What you should have at the end of that chapter |
| --- | --- | --- |
| `git switch ch2-start` (skeleton) | — | `dbt_project.yml`, `profiles.yml.example`, empty `models/` |
| `git switch ch3-start` | `git checkout ch2-dbt-setup-azure` | `_sources.yml`, plain `stg_trips.sql` |
| `git switch ch4-start` | `git checkout ch3-sql-jinja` | `stg_trips.sql` with `payment_type_label`, `tip_pct`, `fare_per_mile` |
| `git switch ch5-start` | `git checkout ch4-materializations` | `stg_zones.sql`, `fct_trips.sql`, materialization config |
| `git switch ch6-start` | `git checkout ch5-dbt-tests` | all schema YAML, singular test, unit test, `packages.yml` |
| `git switch ch7-start` | `git checkout ch6-docs-extras` | fleshed-out descriptions, doc block, snapshot |

Switch to a `*-start` **branch** to begin a chapter from a clean state and commit your own work
onto it. Check out a `chN-...` **tag** only to look at the finished solution: tags land you in
"detached HEAD", so create a branch (`git switch -c mywork <tag>`) before building on one.

## Handy commands

```bash
cp profiles.yml.example profiles.yml      # then edit `user` and `schema`
export PG_PASSWORD='your-personal-password-from-week-9'
just deps                                  # dbt deps  (only needed once packages.yml exists, Ch5+)
just build                                 # dbt build --select +fct_trips
```

## CI

Every push to `main` runs `dbt build --select +fct_trips` against the shared Azure PostgreSQL
instance. If the curriculum prose drifts away from runnable reality (test result counts change,
columns get renamed, etc.) CI fails and the chapter gets fixed. See `.github/workflows/dbt-build.yml`.
