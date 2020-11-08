#!/system/bin/sh

echo 3 > /proc/sys/vm/drop_caches

ping -c 10 google.com
