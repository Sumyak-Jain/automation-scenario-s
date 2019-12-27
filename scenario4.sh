#!/bin/bash
if [ -f "$access_log.txt" ]; then
    rm $accesse_log.txt
fi

if [ -f "$error_log.txt" ]; then
    rm $error_log.txt
fi

cat /var/log/apache2/access_log > /home/sumyak/downloads/url.txt
cat /var/log/apache2/error_log > /home/sumyak/downloads/url.txt

read -e -p "Enter the name of the Access logs of HTTP  web server: " access_logfile
read -e -p "Enter the name of the Error logs of the HTTP web server: " error_logfile
read -e -p "Enter the Email ID: " Email

access_log1=$(realpath $access_logfile)
error_log1=$(realpath $error_logfile)
if [ ! -f "$access_log1" ]; then
    echo "ERROR: The access log file does not exist" >&2; exit 1;
fi

if [ ! -f "$error_log1" ]; then 
    echo "ERROR: The error log file does not exist" >&2; exit 1;
fi

cat $access_log1 | mail -s "Apache web server access logs" $Email
if [[ $? != 0 ]]; then
     echo "ERROR: Error in sending access log to email to $Email" >&2; exit 1;
fi

cat $error_log1 | mail -s "Apache web server error logs" $Email
if [[ $? != 0 ]]; then
     echo "ERROR: Error in sending error log to mail to $Email" >&2; exit 1;
fi

echo "The access and error logs both are successfully sent to $Email"
exit 0
