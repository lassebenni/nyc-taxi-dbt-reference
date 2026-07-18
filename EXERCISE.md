# Exercise: PySpark exploration on the class taxi tables

**Chapter:** Week 13, [PySpark in Databricks](https://github.com/lassebenni/datatrack/blob/main/Data%20Track/Week%2013/week_13__3_pyspark_notebooks_databricks.md)

## Goal

Read the shared yellow-taxi Delta tables in a Databricks notebook, join the zone lookup, and answer two aggregation questions using **one action** (`show()`) per question. Do not `collect()` the raw trip table.

## Setup

1. In the Databricks workspace, create a new notebook (Python) and attach it to your cluster.
2. Upload `notebooks/pyspark_exploration.py` as a notebook, or copy its cells into a fresh notebook.
3. Run the setup cell to confirm the cluster can read `hyf.nyc_yellow.raw_trips`.

## Your task

In `notebooks/pyspark_exploration.py` (look for `TODO` markers):

1. Read `hyf.nyc_yellow.raw_trips` and `hyf.nyc_yellow.raw_zones` into DataFrames.
2. **Question 1:** Which pickup borough has the most trips? Join zones on `pickup_location_id = location_id`, group by `borough`, order by trip count descending, and `show()` the top row.
3. **Question 2:** What is the average `total_amount` per `payment_type`? Group by `payment_type`, compute `avg("total_amount")`, and `show()` the result.

Use `from pyspark.sql import functions as F` for aggregations. Keep transformations lazy until the final `show()`.

## Success criteria

- Both answers come from aggregated DataFrames displayed with `show()`, not from `collect()` on millions of raw rows.
- Question 1 names a borough (not a numeric location id).
- Question 2 shows one row per `payment_type` with an average `total_amount`.

## Compare

Check your notebook against the `exercise-pyspark-exploration-solution` branch.
