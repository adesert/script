#!/bin/sh
sqlserver=172
sqlname=""
sqldump=""
dbname="balli"
qote="_"
for (( i = 1; i <= $sqlserver; i++ )); do

        sqlname=$dbname$i$qote`date +%u`.sql
        sqldump=$dbname$i

        # echo $i
        if [[ $i -eq 1 ]]; then
                sqldump=$dbname
                sqlname=$dbname$qote`date +%u`.sql
        fi

        mysqldump -uroot -p'dbmima' $sqldump > /data/dbbackup/$sqlname

        echo $sqlname
        #echo $sqldump
done