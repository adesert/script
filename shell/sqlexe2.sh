#!/bin/sh
sqlserver=84
sqlname=""
sqlandroid="ad_balli"
sqlios="ios_balli"
# for i in "" 1 24 3 32 39 4 41 5 50 55 58 6 73 77 78

# for server in "" 1 10 100 11 12 13 132 133 14 144 148 15 16 168 17 170 171 172 18 19 2 20 21 22 24 25 26 27 28 29 3 31 32 33 34 35 36 37 4 45 48 5 6 63 65 7 8 9

sql="select name,guid from role where guid='"
sqls="'"
sk=""
count=0
for i in 9
do
	sqlname=$sqlandroid$i

	for s in ISNNNhxP42y0uhqMH6lrGT3iqvg ClE9dL134KjbXNx6IGnDmWDbhs4 SB0TdyYXKDG8mtlx4qReN1zWz4c AB/aLiuFxfdJMuQZsr1BDZMXTKs 6KV5fncnfItLOkHPc8uZ65UeGQw 4fWrbBnrW5Nuhb+27JKYpwxiMh8 gqtnoE5YkBd50SH4Ls0H1aETzRA J7WbwFFNojeS+OK+arH1w2z50VM /UesCWD6wMHpzmKLYX/F/6UgqTY
		do
			let count+=1
			mysql -uroot $sqlname -e "$sql$s$sqls" > /Users/DD/Downloads/sqlconfig/android/1/t----$i----$count.txt
			echo $sqlname
	done
done




