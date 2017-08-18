#!/bin/bash

spark-shell -i SubwayPassengers.scala
hdfs dfs -get /user/zeminlu/subwayPassengers/output/* outputs/subwayPassengers/spark