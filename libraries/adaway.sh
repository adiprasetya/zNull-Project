#!/system/bin/sh

if [ "$(whoami)" != "root" ]
then
echo -e 'RUN WITH ROOT PERMISSIONS !!!'
exit 1
fi

name="hosts"
dir="/system/etc"
source="https://adaway.org/hosts.txt"

if [[ $(which curl) == "" ]]; then
	echo -e "\nERROR, curl command not found.\n"
	echo "Trying using wget :)"
	if [[ $(which wget) == "" ]]; then
		echo -e "ERROR, wget command not found too.\n" && exit 1
	else
		echo -e "\nDownloading and Patching AdBlocker by Adaway..."
		sleep 1
		chmod 777 $dir/$name
		wget -q -O $dir/$name $source  &> /dev/null && echo "Done, AdBlocker has been Planted.\n" || echo "Failed. maybe no internet.\n" 
		chmod 644 $dir/$name
		sleep 1
	fi
else 
# download hosts file using curl
	echo -e "\nDownloading and Patching AdBlocker by Adaway..."
	sleep 1
	chmod 777 $dir/$name
	curl -s -o $dir/$name $source &> /dev/null && echo "Done, AdBlocker has been Planted.\n" || echo "Failed. maybe no internet.\n" 
	chmod 644 $dir/$name
	sleep 1
fi
