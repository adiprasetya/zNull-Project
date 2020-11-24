#!/system/bin/sh

if [ "$(whoami)" != "root" ]
then
echo -e 'RUN WITH ROOT PERMISSIONS !!!'
exit 1
fi

name="hosts"
dir="/system/etc"
dlDir="/data/adb/modules/znull/adaway"
source="https://adaway.org/hosts.txt"

if [[ $(which curl) == "" ]]; then
	echo -e "\nERROR, curl command not found.\n"
	echo "Trying using wget :)"
	if [[ $(which wget) == "" ]]; then
		echo -e "ERROR, wget command not found too.\n" && exit 1
	else
		mkdir -p $dlDir
		echo -e "\nDownloading and Patching AdBlocker by Adaway..."
		sleep 1
		wget -q -O $dlDir/$name $source  &> /dev/null && echo "Done, AdBlocker has been Planted.\n" || echo "Failed. maybe no internet.\n" 
		mv -f $dlDir/$name $dir/. &> /dev/null
		sleep 1
	fi
else 
# download hosts file using curl
	echo -e "\nDownloading and Patching AdBlocker by Adaway..."
	sleep 1
	curl -s -o $dir/$name $source &> /dev/null && echo "Done, AdBlocker has been Planted.\n" || echo "Failed. maybe no internet.\n" 
	sleep 1
fi
