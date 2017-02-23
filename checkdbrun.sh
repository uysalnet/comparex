#!/bin/bash

# test -f $file
#test 5 -eq 5 && echo Yes || echo No

mpid="/var/run/mysqld/mysqld.pid"
sname=$(ps cax | grep mysqld$ | awk '{print $5 }')
spid=$(ps cax | grep mysqld$ | awk '{print $1 }')

if [ ! -f "$mpid" ]
then 
echo "Dosya bulunamadi!!"
else
echo "Dosya kontrol edildi ==> $mpid ==> OK!"
fi

o=$(ps cax | grep -c ' mysqld$')
if [ $o -eq 1 ]; then
echo -n "mysql servisi calisiyor... "
echo "pid:["$spid"]"
else

echo "mysql yeniden baslatilacak..."

MSTART="/etc/init.d/mysql start"
# try to start mysql
$MSTART>/dev/null

#sname=$(ps cax | grep mysqld$ | awk '{print $5 }'| xargs echo -e "\033[33;31m")
#sname=$(ps cax | grep mysqld$ | awk '{print $5 }')
echo "`date` tarihinde mysqld servisi yeniden baslatildi..." | tee -a /var/log/mlogs/mysql_srv_trace.log


#echo $sname $mpid

fi
 
