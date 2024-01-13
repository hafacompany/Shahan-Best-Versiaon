#!/bin/bash
#By Hamed Ap
chmod 0646 /var/log/auth.log
chmod 0644 /var/www/userlog.txt
chmod 0644 /etc/ssh/sshd_config

i=0
while [ $i -lt 20 ]; do 
php /var/www/html/p/kill.php &
  sleep 3
  i=$(( i + 1 ))
done
