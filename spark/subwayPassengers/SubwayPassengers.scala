val textFile = sc.textFile("hdfs://localhost:9000/user/zeminlu/subwayPassengers/input/molinetes-2017.csv")
val SubwayPassengers = textFile.map(line => (line.split(";")(4), line.split(";")(10).toInt)).reduceByKey(_ + _)
SubwayPassengers.repartition(1).saveAsTextFile("hdfs://localhost:9000/user/zeminlu/subwayPassengers/output/passengersByStation.txt")
System.exit(0)