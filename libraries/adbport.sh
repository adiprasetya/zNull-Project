#!/system/bin/sh

if [ "$(whoami)" != "root" ];then
	echo -e 'RUN WITH ROOT PERMISSIONS !!!'
	exit 1
fi


case "$1" in
	0|enable|start)
		echo "Setting properties to enable..."
		su -c setprop service.adb.tcp.port 5555 && echo "Succes to Setting Properties..."
		echo "Restarting adbd..."
		stop adbd
		start adbd
		echo "Done! adb tcp with port 5555 enabled."
		;;

	1|disable|stop)
		echo "Setting properties to disable..."
		su -c setprop service.adb.tcp.port -1 && echo "Succes to Setting Properties..."
		echo "Restarting adbd..."
		stop adbd
		start adbd
		echo "Done! adb tcp with port 5555 disabled."
		;;

	*)
		echo "Usage: adb [enable|disable]"
		exit 1
		;;

esac