#!/bin/sh
sqlserver=84
sqlname=""
sqlandroid="ad_balli"
sqlios="ios_balli"
for (( i = 1; i < $sqlserver; i++ )); do
		sqlname=$sqlios$i
		mysql -uroot $sqlname -e "select * from allkeys where guid='C5Q+GSr40AO+bxTpzuT3416h/dQ'" > /Users/DD/Downloads/sqlconfig/ios/test$i.txt
		echo $sqlname
done