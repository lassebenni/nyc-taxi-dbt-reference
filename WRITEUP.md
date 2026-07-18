# Lakehouse week synthesis

Sample structure for the Week 13 practice write-up. Replace with your own specifics.

## What is a lakehouse?

A lakehouse keeps raw and curated data on cheap object storage but adds a table layer (Delta Lake) so SQL engines and notebooks see ACID tables instead of opaque files. Compute (Databricks clusters and SQL warehouses) spins up on demand to query or transform those tables. The point is one copy of the data serving both exploratory Python and governed SQL marts, without maintaining separate silos.

## Why we moved dbt to Databricks

Our Week 10 `fct_trips` mart worked on a 57K-row Postgres sample; porting the same project to Databricks meant changing only the profile and making `fct_trips` incremental. The models and tests stayed familiar, but the data grew to 128M yellow-taxi rows in Unity Catalog (`hyf.nyc_yellow`). Incremental merge on Delta turned a ~60-second full build into a ~10-second rerun, which is the difference between "demo" and "production cadence." Unity Catalog also gave us a shared namespace so everyone reads the same raw tables while writing marts into personal schemas.

## One thing that surprised me

I knew incremental models in theory, but watching `is_incremental()` flip from false to true on the second `dbt build` — and seeing the warehouse scan almost nothing — made the pattern click. The other surprise was data quality at scale: tests that passed on the green sample now warn on real yellow data (payment type `0`, a few thousand impossible pickup/dropoff timestamps). Porting is not just changing the host; the warehouse teaches you what production data actually looks like.
