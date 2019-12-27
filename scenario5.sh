# bin/bash 
a=`echo $?`  
read -p "Enter listening port : " listening_port 
netstat -au | grep -q ":listening_port" 
b=`echo $?` 
if [ $b != $a ];  
then 
echo "ERROR, Web server is not running" >&2 
/etc/init.d/apache2 restart  
fi 
backupfolder="/home/sumyak/backup" 
cp -r /var/log/apache2/ $backupfolder  
netstat -au 
netstat –lu 
