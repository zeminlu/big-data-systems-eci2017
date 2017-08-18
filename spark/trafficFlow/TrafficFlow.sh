#!/bin/bash

spark-shell -i TrafficFlow.scala
hdfs dfs -get /user/zeminlu/trafficFlow/output/* outputs/trafficFlow/spark