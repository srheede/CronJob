find /logfiles/ -mmin +2 -exec rm -f * {} \;
cd /archives/
find /logfiles/ -mmin +1 -exec tar -cf $(date +%F_%H-%M) {} \;
touch /logfiles/logfile_$(date +%F_%H-%M)_{1..100}.log
