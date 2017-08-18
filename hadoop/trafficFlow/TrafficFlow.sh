#!/bin/bash

hadoop com.sun.tools.javac.Main TrafficFlow.java
jar cf tf.jar TrafficFlow*.class
hadoop jar tf.jar TrafficFLow /user/zeminlu/trafficFlow/input /user/zeminlu/trafficFlow
hdfs dfs -get /user/zeminlu/trafficFlow/output/* outputs/trafficFlow/hadoop