#!/system/bin/sh

if [ "$(whoami)" != "root" ];then
	echo -e 'RUN WITH ROOT PERMISSIONS !!!'
	exit 1
fi

clear -x;clear

echo -e "zNull Project\n\n"

if [[ -f /data/media/0/Android/znull.conf ]]; then
	source /data/media/0/Android/znull.conf
else
	echo "znull.conf not found! Don't delete the config! reflash zNull Module!"
	exit 1
fi


export DD="/data/data"
export DMAD="/data/media/0/Android/data"
export FU="files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved"
export DM0="/data/media/0"
export LIB="/data/data/${PKG}/lib"
#export LIB="/data/app/${PKG}-*/lib/arm"
SRC="/data/media/0/Android/data/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini"
PAKS="/data/media/0/Android/data/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks"
export librariesDir="/data/adb/modules/znull/libraries"



if [[ "$1" == "-s" || "$1" == "set" ]]; then
	if [[ "$2" == "1" ]]; then
		sed -i 's/PKG=.*/PKG="com.tencent.iglite"/g' /data/media/0/Android/znull.conf
		echo
		echo "znull.conf Setted to PUBG MOBILE LITE!"
		echo
		exit
	elif [[ "$2" == "2" ]]; then
		sed -i 's/PKG=.*/PKG="com.tencent.ig"/g' /data/media/0/Android/znull.conf
		echo
		echo "znull.conf Setted to PUBG MOBILE GLOBAL!"
		echo
		exit
	elif [[ "$2" == "3" ]]; then
		sed -i 's/PKG=.*/PKG="com.pubg.krmobile"/g' /data/media/0/Android/znull.conf
		echo
		echo "znull.conf Setted to PUBG MOBILE KOREA!"
		echo
		exit
	elif [[ "$2" == "4" ]]; then
		sed -i 's/PKG=.*/PKG="com.vng.pubgmobile"/g' /data/media/0/Android/znull.conf
		echo
		echo "znull.conf Setted to PUBG MOBILE VIETNAM!"
		echo
		exit
	else
		echo
		echo "LIST SUPPORTED PUBG MOBILE!"
		echo "1. PUBG MOBILE LITE"
		echo "2. PUBG MOBILE GLOBAL"
		echo "3. PUBG MOBILE KOREA"
		echo "4. PUBG MOBILE VIETNAM"
		echo
		echo "Usage: znull [-s|set] [number]" 
		echo
		exit 1
	fi
fi



appPUBG=$(ls -d /data/app/$PKG*/ 2> /dev/null | wc -l)
lib32bit=$(ls -d /data/app/$PKG-*/lib/arm/ 2> /dev/null | wc -l)

if [[ $appPUBG == 0 ]]; then
	if [[ $PKG == com.tencent.iglite ]]; then
		echo -e "You don't have a PUBG MOBILE LITE!\nYou can change on Internal/Android/znull.conf or you can use command: znull [-s|set]"
		exit 1
	elif  [[ $PKG == com.tencent.ig ]]; then
		echo -e "You don't have a PUBG MOBILE GLOBAL!\nYou can change on Internal/Android/znull.conf or you can use command: znull [-s|set]"
		exit 1
	elif  [[ $PKG == com.pubg.krmobile ]]; then
		echo -e "You don't have a PUBG MOBILE KOREA!\nYou can change on Internal/Android/znull.conf or you can use command: znull [-s|set]"
		exit 1
	elif  [[ $PKG == com.vng.pubgmobile ]]; then
		echo -e "You don't have a PUBG MOBILE VIETNAM!\nYou can change on Internal/Android/znull.conf or you can use command: znull [-s|set]"
		exit 1
	else
		echo "WHAT IS ${PKG}, its package name PUBG?\nChange! on Internal/Android/znull.conf or you can use command: znull [-s|set]"
		exit 1
	fi
else
	if [[ $lib32bit == 0 ]]; then
		echo "Your PUBG is 64bit. not support, sorry :v"
		exit 1
	fi
fi


resetGuest() {
    sed -E "s/(^\s*.*uuid.*>)(.*)(<.*)/\1$RANDOM$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM$RANDOM$RANDOM\3/" /data/data/$PKG/shared_prefs/device_id.xml
}


if [[ "$1" == "-r" || "$1" == "reset" ]]; then

	znull="/data/data/$PKG/shared_prefs/device_id.xml"
	if [[ $PKG == com.tencent.iglite ]]; then
		am force-stop $PKG
		resetGuest && { echo -e "Guest PUBG MOBILE LITE Resetted.\n"
		rm -rf /data/data/$PKG/databases
		rm -rf /data/media/0/Android/data/$PKG/files/login-identifier.txt }
		exit
	elif  [[ $PKG == com.tencent.ig ]]; then
		am force-stop $PKG
		resetGuest && { echo -e "Guest PUBG MOBILE GLOBAL Resetted.\n"
		rm -rf /data/data/$PKG/databases
		rm -rf /data/media/0/Android/data/$PKG/files/login-identifier.txt }
		exit
	elif  [[ $PKG == com.pubg.krmobile ]]; then
		am force-stop $PKG
		resetGuest && { echo -e "Guest PUBG MOBILE KOREA Resetted.\n"
		rm -rf /data/data/$PKG/databases
		rm -rf /data/media/0/Android/data/$PKG/files/login-identifier.txt }
		exit
	elif  [[ $PKG == com.vng.pubgmobile ]]; then
		am force-stop $PKG
		resetGuest && { echo -e "Guest PUBG MOBILE VIETNAM Resetted.\n"
		rm -rf /data/data/$PKG/databases
		rm -rf /data/media/0/Android/data/$PKG/files/login-identifier.txt }
		exit
	else
		echo "WHAT IS ${PKG}, its package name PUBG?\nChange! on Internal/Android/znull.conf or you can use command: znull [-s|set]"
		exit
	fi
fi

if [[ "$1" == "gg" ]]; then
	if [[ "$2" == "" ]]; then
		echo
		echo "Input the your GG packagename!"
		echo "Usage: znull gg [packagename]"
		echo "Example: znull gg com.znull.gg"
		echo
		exit 1
	else
		echo "Checking GG with package name $2 ..."
		checkGG=$(ls -d /data/app/${2}-* 2> /dev/null | wc -l)
		if [[ ${checkGG} == 0 ]];then
			echo
			echo "GG not found :p"
			echo "Set the GG packagename properly..."
			echo
			exit 1
		else
			sed -i "s/GG=.*/GG='$2'/g" /data/media/0/Android/znull.conf
			echo
			echo "GG Packagename setted to $2."
			echo
			exit
		fi
	fi
fi


if [[ "$1" == "-h" || "$1" == "help" || "$1" == "--help" ]]; then
	echo
	echo "zNull Module Helper."
	echo
	echo "Usage: znull (for normal running)"
	echo "       znull [-s|set] [number] (for set packagename)"
	echo "       znull [-r|reset] (for reset guest)"
	echo "       znull gg [packagename] (for set gg app)"
	echo
	echo "Example: znull set 2 (will be setted to PUBG MOBILE GLOBAL)"
	echo "         znull reset (the guest account will be resetted)" 
	echo "         znull gg com.znull.gg (gg package name will be setted)"
	echo
	exit
fi


function 64bit() {
	echo "Failed replacing lib, maybe your PUBG is 64bit."
	am force-stop com.tencent.iglite
	am force-stop com.dclztB
	su -c /system/bin/pm install -i com.android.vending -r /data/app/$PKG*/*.apk
	echo "Done. Succesfully restoring to normal."
	sleep 1
	echo "Exiting automatically in 5 seconds, CTRL + C for canceling."
	sleep 5
	am force-stop com.termux
	exit
}

am force-stop com.google.android.inputmethod.latin
#rm -rf $DMAD/$PKG/files/login-identifier.txt
#rm -rf $DD/$PKG/databases

rm -rf /data/media/0/Android/data/$PKG/cache 2> /dev/null

function fixfc() {
rm -rf $DD/$PKG/files 
touch $DD/$PKG/files
}

listingLibMod=$(ls /data/adb/modules/znull/libraries/LibMod 2> /dev/null | wc -l)

function checklibMod() {
if [[ $listingLibMod != 7 ]];then
	echo "Please Wait, Generating Lib Mod for First Time..."
	dd if=/dev/urandom of=${librariesDir}/LibMod/libUE4.so bs=5500 count=18899  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libcubehawk.so bs=2000 count=7075  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libTDataMaster.so bs=2100 count=9067  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libtersafe.so bs=2200 count=9986  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libzip.so bs=2300 count=8977  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libzlib.so bs=2400 count=7899  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libtprt.so bs=2400 count=7899  &> /dev/null
	echo -e "Done! Happy Cheating without ban :v (if ban, sorry wwwww)\nEvery UPDATE module, lib mod will be disappear :v\n"
fi
}

#rm -rf $DMAD/$PKG/files/login-identifier.txt
#rm -rf $DD/$PKG/databases
#cp -F /data/media/0/PUBGMLITE/Paks/* /data/media/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/.


function disablingapps() {
am force-stop com.whatsapp.bussiness
am force-stop com.whatsapp
am force-stop org.schabi.newpipe
am force-stop com.mobile.legends
am force-stop com.tencent.iglite
am force-stop org.telegram.messenger
am force-stop com.dts.freefireth
am force-stop org.bromite.bromite
am force-stop com.google.android.apps.nbu.files
am force-stop com.supercell.clashofclans
}


function freedingmemory() {
bfree=$(free -m | grep Mem | awk '{print $4}')
echo 3 > /proc/sys/vm/drop_caches
afree=$(free -m | grep Mem | awk '{print $4}')
echo "Ram Freed $((afree-bfree)) MB!"
}

#sleep 1


function checkGG() {
appGG=$(ls -d /data/app/${GG}-* 2> /dev/null | wc -l)

if [[ $GG == "" ]]; then
	echo "Your GG Packagename not setted on znull.conf, skipping..."
	echo "Usage: znull gg [packagename] (for setup the gg packagename)"
else
	if [[ ${appGG} == 0 ]];then
		echo "GG not found :p skipping..."
		echo "How to set? Usage: znull gg [packagename]"
	else
		echo "Try To Open GG, Please Wait... "
		am start -n ${GG}/${GG}.MainActivity &> /dev/null && echo "Succes Launching GG..." || echo "Failed Launching GG, maybe the packagename isn't GG!"
		sleep 2
	fi
fi
}

function opening() {
echo "Try To Open Game, Please Wait..."

am start -n $PKG/com.epicgames.ue4.SplashActivity &> /dev/null

echo "Please wait..."
sleep 1

if pidof $PKG &> /dev/null
then
	sleep 27
else
	am force-stop $GG
	echo -e "Game closed immediatly, maybe before script is dead."
	echo "Fixing..."
	su -c /system/bin/pm install -i com.android.vending -r /data/app/$PKG*/*.apk &> /dev/null
	rm -rf $DD/$PKG/files 
	rm -rf $DD/$PKG/app_crashrecord
	rm -rf $DD/$PKG/app_bugly
	rm -rf $DD/$PKG/code_cache
	rm -rf $DD/$PKG/cache
	rm -rf $DD/$PKG/no_backup
	echo "Done. Succesfully fixing to normal."
	sleep 1
	echo "Exiting automatically in 5 seconds, CTRL + C for canceling."
fi
}

function replacelib() {
am start -n com.termux/com.termux.app.TermuxActivity &> /dev/null
am force-stop com.google.android.inputmethod.latin
cp -f --remove-destination /data/adb/modules/znull/libraries/LibMod/* ${LIB}/. && echo "Succes replacing lib." || 64bit
chmod 755 $LIB/*
am force-stop com.google.android.inputmethod.latin
sleep 1
am start -n $PKG/com.epicgames.ue4.SplashActivity &> /dev/null
}

function closing() {
clear
echo -e "zNull Project\n\n"
		echo -e "PUBG MOBILE LITE 32bit!."
	if  [[ $PKG == com.tencent.ig ]]; then
		echo -e "PUBG MOBILE GLOBAL 32bit!."
	elif  [[ $PKG == com.pubg.krmobile ]]; then
		echo -e "PUBG MOBILE KOREA 32bit!."
	elif  [[ $PKG == com.vng.pubgmobile ]]; then
		echo -e "PUBG MOBILE VIETNAM 32bit!."
	else
		echo "WHAT IS ${PKG}, its package name PUBG?\nChange! on Internal/Android/znull.conf or you can use command: znull [-s|set]"
		exit 1
	fi
echo -e "Game is already started...\n\n"

while true
do
if pidof $PKG &> /dev/null
then :
else break
fi
done

am force-stop $GG
echo -e "Game closed, restoring all to normal."

#chmod 777 $SRC
#chmod -Rf 777 $PAKS
#rm -rf $PAKS/core_patch_0.20.0.99999.pak
#rm -rf $SRC
#chmod -Rf 775 $PAKS
su -c /system/bin/pm install -i com.android.vending -r /data/app/$PKG*/*.apk &> /dev/null

rm -rf $DD/$PKG/files 

echo "Done. Succesfully restoring to normal."
sleep 1
echo "Exiting automatically in 5 seconds, CTRL + C for canceling."

#pm install -r /data/app/$PKG*/base.apk /data/app/$PKG*/base.apk  &> /dev/null

sleep 5
#am force-stop com.dclztB
am force-stop com.tencent.iglite
am force-stop com.lite.mod
am force-stop com.dclztz
am force-stop com.termux
}

	if [[ $PKG == com.tencent.iglite ]]; then
		am force-stop $PKG
		echo -e "PUBG MOBILE LITE Detected.\n"
		checklibMod
		fixfc
		disablingapps
		freedingmemory
		checkGG
		opening
		replacelib
		closing
		exit
	elif  [[ $PKG == com.tencent.ig ]]; then
		echo -e "PUBG MOBILE GLOBAL Detected.\n"
		checklibMod
		fixfc
		disablingapps
		freedingmemory
		checkGG
		opening
		replacelib
		closing
		exit
	elif  [[ $PKG == com.pubg.krmobile ]]; then
		am force-stop $PKG
		echo -e "PUBG MOBILE KOREA Detected.\n"
		checklibMod
		fixfc
		disablingapps
		freedingmemory
		checkGG
		opening
		replacelib
		closing
		exit
	elif  [[ $PKG == com.vng.pubgmobile ]]; then
		am force-stop $PKG
		echo -e "PUBG MOBILE VIETNAM Detected.\n"
		checklibMod
		fixfc
		disablingapps
		freedingmemory
		checkGG
		opening
		replacelib
		closing
		exit
	else
		echo "WHAT IS ${PKG}, its package name PUBG?\nChange! on Internal/Android/znull.conf or you can use command: znull [-s|set]"
		exit
	fi
fi

