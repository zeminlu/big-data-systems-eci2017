val textFile = sc.textFile("hdfs://localhost:9000/user/zeminlu/trafficFlow/input/flujo-vehicular-2015.csv")
val SubwayPassengers = textFile.map(line => (line.split(";")(5), line.split(";")(8).toInt)).reduceByKey(_ + _)
SubwayPassengers.repartition(1).saveAsTextFile("hdfs://localhost:9000/user/zeminlu/trafficFlow/output/vehiclesByTollStation.txt")
System.exit(0)