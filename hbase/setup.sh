#!/bin/bash

hbase shell setup.txt
hbase org.apache.hadoop.hbase.mapreduce.ImportTsv -Dimporttsv.separator=',' -Dimporttsv.columns='HBASE_ROW_KEY,name,amount,year' names_history hdfs://localhost:9000/user/zeminlu/peopleNames/input/historico-nombres.csv