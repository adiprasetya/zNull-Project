#!/system/bin/sh

if [ "$(whoami)" != "root" ]
then
echo -e 'RUN WITH ROOT PERMISSIONS !!!'
exit 1
fi

name="hosts"
dir="/system/etc"
source="https://adaway.org/hosts.txt"

if [[ ! -f /data/adb/modules/hosts/auto_mount ]]; then
	echo "Must Installed Systemlessly Hosts Module by Magisk!"
	echo "Enable it on Magisk Manager Settings > Systemless Hosts!"
	echo "then reboot your device, then re-run adaway"
	exit 1
fi

if [[ $(which curl) == "" ]]; then
	echo -e "curl command not found."
	echo "Trying using wget :)"
	if [[ $(which wget) == "" ]]; then
		echo -e "wget command not found too." && exit 1
	else
		echo -e "\nDownloading and Patching AdBlocker by Adaway..."
		sleep 1
		wget -q -O $dir/$name $source  &> /dev/null && echo "Done, AdBlocker has been Planted.\n" || echo "Failed. maybe no internet." 
		sleep 1
	fi
else 
# download hosts file using curl
	echo -e "Downloading and Patching AdBlocker by Adaway..."
	sleep 1
	curl -s -o $dir/$name $source &> /dev/null && echo "Done, AdBlocker has been Planted.\n" || echo "Failed. maybe no internet." 
	sleep 1
fi

echo "Only if u get banned 3rd on rooted device :)"
echo -n "Need bypass ban 3rd party? [y/N]: " && read bypass
if [[ $bypass == yes || $bypass == Y || $bypass == y || $bypass == ya ]]; then
	echo "127.0.0.1 down.anticheatexpert.com" >> $dir/$name
	echo "127.0.0.1 cloud.gsdk.proximabeta.com" >> $dir/$name
	echo "127.0.0.1 file.igamecj.com" >> $dir/$name
	echo "Bypass ban 3rd party Done!"
	exit
else
	echo "Bypass ban 3rd party Skipped."
	exit
fi