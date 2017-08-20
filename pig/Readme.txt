In this folder you can find the solutions to both namesHistory problem using Pig.
A script is included in each one for running the code. Pig code is in a .pig file.
Adjust Paths as needed before executing.
Also, setup of HBASE is assumed to be already done, you can find said setup script in the hdfs directory.
Pig should be aware and configured properly to work with HBASE, this task must be done by the user given it depends on each environment and OS.

Resolution:
Data from names_history db is fetched from HBASE, and in memory, it is grouped by name and afterwards, the names amount gets summed up and then the results are stored in HDFS throuh PigStorage.