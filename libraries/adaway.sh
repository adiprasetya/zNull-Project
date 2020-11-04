#!/system/bin/sh

if [[ $(which curl) == "" ]]; then
	echo -e "\nERROR, curl not found. fix ban 10 minute failed\n"
# download hosts file using curl
else 
	echo -e "\nDownloading and Patching AdBlocker by Adaway..."
	sleep 1
	curl -o /system/etc/hosts https://adaway.org/hosts.txt &> /dev/null && echo "Done, AdBlocker for fix ban 10 minute has been Planted.\n" || echo "Failed. maybe no internet.\n"
	sleep 1
fi
