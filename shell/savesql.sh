#!/bin/sh
#### 保存数据为sql 脚本
qote="_"
ns="mh_"
sn="balli"
for server in 4 7 10 13 16 19 22 25 28 31 34 37 40 43 46 49 52 55 58 61 64 67 70 73 76 79 82
do
     sqldump=$ns$sn$server.sql
     mysqldump -uroot -p'dre@mJ$11y' balli$server > /data/databackup/$sqldump
     echo $sqldump
done