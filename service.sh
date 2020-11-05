#!/system/bin/sh

bfree=$(free -m | grep Mem | awk '{print $4}')
echo 3 > /proc/sys/vm/drop_caches
afree=$(free -m | grep Mem | awk '{print $4}'

ping -c 10 google.com
