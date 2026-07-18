# Databricks notebook source
# MAGIC %md
# MAGIC # Week 13 Practice — PySpark exploration
# MAGIC
# MAGIC Read `hyf.nyc_yellow.raw_trips`, join `raw_zones`, and answer the two questions below.
# MAGIC Use `show()` for each answer — do **not** `collect()` the raw table.

# COMMAND ----------

from pyspark.sql import functions as F

# TODO: read the shared Delta tables into DataFrames
trips = None  # spark.read.table("hyf.nyc_yellow.raw_trips")
zones = None  # spark.read.table("hyf.nyc_yellow.raw_zones")

# COMMAND ----------

# MAGIC %md
# MAGIC ## Question 1: Which pickup borough has the most trips?

# COMMAND ----------

# TODO: join zones on pickup_location_id = location_id,
# group by borough, count trips, order descending, show top row
borough_counts = None

# borough_counts.show(1)

# COMMAND ----------

# MAGIC %md
# MAGIC ## Question 2: Average total_amount per payment_type

# COMMAND ----------

# TODO: group by payment_type, avg(total_amount), show result
payment_avg = None

# payment_avg.show()
