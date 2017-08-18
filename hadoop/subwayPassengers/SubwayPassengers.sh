#!/bin/bash

hadoop com.sun.tools.javac.Main SubwayPassengers.java
#javac -cp /usr/lib/hadoop/*:/usr/lib/hadoop-mapreduce/* SubwayPassengers.java #for cloudera distros
jar cf sp.jar SubwayPassengers*.class
hadoop jar sp.jar SubwayPassengers /user/zeminlu/subwayPassengers/input /user/zeminlu/subwayPassengers/output
hdfs dfs -get /user/zeminlu/subwayPassengers/output/* outputs/subwayPassengers/hadoop
