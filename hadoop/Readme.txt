In this folder you can find the solutions to both subwayPassengers and trafficFlow problems.
A script is included in each one for running the code. Hadoop code is in a .java file.
Adjust Paths as needed before executing.
Also, setup of HDFS is assumed to be already done, you can find said setup script in the hdfs directory.

Resolution:
SubwayPassengers: DataSet is fetched from HDFS, a map procedure is done to map subway stations to passenger amounts, and then a reduce procedure sums the amounts of passengers for each station. The output is stored in HDFS.
TrafficFlow: DataSet is fetched from HDFS, a map procedure is done to map toll stations stations to vehicles amounts, and then a reduce procedure sums the amounts of vehicles for each station. The output is stored in HDFS.