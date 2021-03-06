#!/bin/bash

hdfs namenode -format
hdfs dfs -mkdir /user
hdfs dfs -mkdir /user/zeminlu
hdfs dfs -mkdir /user/zeminlu/subwayPassengers/
hdfs dfs -mkdir /user/zeminlu/subwayPassengers/input
hdfs dfs -mkdir /user/zeminlu/trafficFlow/
hdfs dfs -mkdir /user/zeminlu/trafficFlow/input
hdfs dfs -mkdir /user/zeminlu/trafficFlow/output
hdfs dfs -put inputs/subwayPassengers/* /user/zeminlu/subwayPassengers/input
hdfs dfs -put inputs/trafficFlow/* /user/zeminlu/trafficFlow/input