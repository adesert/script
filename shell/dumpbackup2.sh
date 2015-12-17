#!/bin/sh
qote="_"
ns="mh_"
sn="balli"
for server in "" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
do
     sqldump=$ns$sn$server.sql
     mysqldump -uroot -p'dbmima' balli$server > /data/databackup/$sqldump
     echo $sqldump
done