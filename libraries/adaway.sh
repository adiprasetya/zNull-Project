#!/system/bin/sh

if [ "$(whoami)" != "root" ]
then
echo -e 'RUN WITH ROOT PERMISSIONS !!!'
exit 1
fi

if [[ $(which curl) == "" ]]; then
	echo -e "\nERROR, curl command not found.\n"
	echo "Trying using wget :)"
	if [[ $(which wget) == "" ]]; then
		echo -e "ERROR, wget command not found too.\n" && exit 1
	else
		echo -e "\nDownloading and Patching AdBlocker by Adaway..."
		sleep 1
		wget -q -O /system/etc/hosts https://adaway.org/hosts.txt && echo "Done, AdBlocker has been Planted.\n" || echo "Failed. maybe no internet.\n" 
		sleep 1
	fi
else 
# download hosts file using curl
	echo -e "\nDownloading and Patching AdBlocker by Adaway..."
	sleep 1
	curl -s -o /system/etc/hosts https://adaway.org/hosts.txt && echo "Done, AdBlocker has been Planted.\n" || echo "Failed. maybe no internet.\n" 
	sleep 1
fi
