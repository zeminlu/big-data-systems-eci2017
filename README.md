# Big Data Systems - ECI 2017 - Exam Resolution

In this repository, you can find the excercises resolutions.
Three different problems were approached with tools explained during the course, in order to implement and test the exam resolution.

passengersCount: A DataSet from the Buenos Aires Government regarding the amount of passengers for each subway line and station that paid for a ride, in time slots of 15 minutes, during the first half of 2017. Using both Hadoop and Spark (independant solutions), a map reduce approach processes the data (imported to HDFS) and outputs how many passengers used each subway line. 

trafficFlow: A DataSet from the Buenos Aires Government regarding the amount of vehicles that paid highway tolls during 2015. Using both Hadoop and Spark (independant solutions), a map reduce approach processes the data (imported to HDFS) and outputs how many vehicles passed through each toll station.

namesHistory: A DataSet from the Buenos Aires Government regarding the registered peoples names, by year, since 1922. Using Pig, a map reduce approach processes the data (imported to HBASE) and outputs how many times each name was registered since 1922.

Folders Details:

  course-material: Has all the course slides and exam details.

  hadoop: Has the code and script for the processing of the passengersCount problem.

  spark: Has the code and script for the processing of the trafficFlow problem.

  pig: Has the code and script for the processing of the namesHistory problem.

  hdfs: Has the code and script for the setup and import of data to HDFS, as well as for exporting the resulting data outputted by the tools.

  hbase: Has the code and script for the setup and import of data to HBASE, as well as for exporting the resulting data outputted by the tools.

  inputs: The Data Sets for each problem. Given github doesn't allow to upload such large files, a script to download them is supplied.

Steps to reproduce:
  It is assumed you have all of the used technologies properly installed, and that the ports in the script are set according to your setup, including the output directory.
  It is also assumed you have adjusted the paths in the scripts to your file system structure.
  For Pig, correct connection to HBASE is needed, so Pig should be capable of reading the HBASE configuration files (either through classpath or in the default location).

  First, run the setup scripts from both HDFS and HBASE.
  Then, run the scripts of resolutions of each problem (Hadoop, Spark, Pig).
  Finally, inspect the output files.