#!/system/bin/sh

chmod 755 /system/bin/znull
bfree=$(free -m | grep Mem | awk '{print $4}')
echo 3 > /proc/sys/vm/drop_caches
afree=$(free -m | grep Mem | awk '{print $4}'
