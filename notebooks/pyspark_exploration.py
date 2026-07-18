# Databricks notebook source
# MAGIC %md
# MAGIC # Week 13 Practice — PySpark exploration (solution)
# MAGIC
# MAGIC Reference answers for the two practice questions.

# COMMAND ----------

from pyspark.sql import functions as F

trips = spark.read.table("hyf.nyc_yellow.raw_trips")
zones = spark.read.table("hyf.nyc_yellow.raw_zones")

# COMMAND ----------

# MAGIC %md
# MAGIC ## Question 1: Which pickup borough has the most trips?

# COMMAND ----------

borough_counts = (
    trips
    .join(zones, trips.pickup_location_id == zones.location_id)
    .groupBy("borough")
    .agg(F.count("*").alias("trip_count"))
    .orderBy(F.col("trip_count").desc())
)

borough_counts.show(1)

# COMMAND ----------

# MAGIC %md
# MAGIC ## Question 2: Average total_amount per payment_type

# COMMAND ----------

payment_avg = (
    trips
    .groupBy("payment_type")
    .agg(F.round(F.avg("total_amount"), 2).alias("avg_total_amount"))
    .orderBy("payment_type")
)

payment_avg.show()
