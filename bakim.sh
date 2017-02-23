#!/bin/bash

param=info
sockstat='netstat -antp | grep LISTEN'

if [ "$1" == "stop" ]; then 
###################################################################
echo "************************************************************"
echo "******** Servisler icin $1 parametresi verildi...*******"
echo "************************************************************"

/etc/init.d/mysql stop
/etc/init.d/apache2 stop
/etc/init.d/mysql status
/etc/init.d/apache2 status


/bin/netstat -antp | grep LISTEN
echo "=============================="
echo "=== Servisler durduruldu...==="
echo "=============================="

###################################################################
elif [ "$1" == "start" ]; then

echo "************************************************************"
echo "******** Servisler icin $1 parametresi verildi...*******"
echo "************************************************************"

/etc/init.d/mysql start
/etc/init.d/apache2 start
/etc/init.d/mysql status
/etc/init.d/apache2 status

/bin/netstat -antp | grep LISTEN
echo "=============================="
echo "=== Servisler baslatildi...==="
echo "=============================="

###################################################################
elif [ "$1" == "--help" ]; then

echo " Parametreler start ve stop "
echo " ./bakim.sh (start|stop) " 

else

echo $'Kullanilabilir parametreler icin \e[32;1m\e[4mbakim.sh --help' 

fi

