grep dropbear /var/log/auth.log | sort | uniq >> /var/www/userlog.txt &
grep sshd /var/log/auth.log | sort | uniq >> /var/www/userlog.txt &
grep dropbear /var/log/auth.log | sort | uniq >> /var/www/onlinelog.txt &
grep sshd /var/log/auth.log | sort | uniq >> /var/www/onlinelog.txt &
cat >  /var/log/auth.log << ENDOFFILE

ENDOFFILE
systemctl restart syslog &
wait
