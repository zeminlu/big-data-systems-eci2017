-- register /usr/lib/zookeeper/zookeeper-3.4.6-cdh5.0.0.jar
-- register /usr/lib/hbase/hbase-0.95.2-cdh5.0.0-security.jar

A = load 'hbase://names_history' using org.apache.pig.backend.hadoop.hbase.HBaseStorage('name:* year:* amount:*', '-loadKey true -caching 1000') AS (id:bytearray, name:chararray, year:int, amount:long);
B = group A by name;
C = foreach B generate group, SUM(A.amount);

STORE C INTO '/user/zeminlu/namesHistory/output' USING PigStorage('\t','-schema');
