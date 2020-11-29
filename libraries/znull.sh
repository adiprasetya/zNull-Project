#!/system/bin/sh

if [ "$(whoami)" != "root" ]
then
echo -e 'RUN WITH ROOT PERMISSIONS !!!'
exit
fi

clear -x;clear

echo -e "zNull Project\n\n"
echo "Only PUBG MOBILE 32bit!"

if [[ -f /data/media/0/Android/znull.conf ]]; then
	source /data/media/0/Android/znull.conf
else
	echo "znull.conf not found! Don't delete the config! reflash zNull Module!"
	exit 1
fi

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
		echo "LIST SUPPORTED PUBG MOBILE!"
		echo "1. PUBG MOBILE LITE"
		echo "2. PUBG MOBILE GLOBAL"
		echo "3. PUBG MOBILE KOREA"
		echo "4. PUBG MOBILE VIETNAM"
		echo
		echo "Usage: znull [-s|set] [number]" 
		echo "Example: znull set 2 ( znull.conf will be changed to PUBG MOBILE GLOBAL )"
		echo
		exit 1
	fi
fi

export DD="/data/data"
export DMAD="/data/media/0/Android/data"
export FU="files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved"
export DM0="/data/media/0"
export LIB="/data/app/${PKG}-*/lib/arm"
SRC="/data/media/0/Android/data/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini"
PAKS="/data/media/0/Android/data/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks"
export librariesDir="/data/adb/modules/znull/libraries"

appPUBG=$(ls -d /data/app/$PKG*/ | wc -l)
lib32bit=$(ls -d $LIB/* | wc -l)

if [[ $appPUBG == 0 ]]; then
	if [[ $PKG == com.tencent.iglite ]]; then
		echo -e "You don't have a PUBG MOBILE LITE!\nYou can change on /Internal/Android/znull.conf or you can use command: znull [-s|set]"
		exit 1
	elif  [[ $PKG == com.tencent.ig ]]; then
		echo -e "You don't have a PUBG MOBILE GLOBAL!\nYou can change on /Internal/Android/znull.conf or you can use command: znull [-s|set]"
		exit 1
	elif  [[ $PKG == com.pubg.krmobile ]]; then
		echo -e "You don't have a PUBG MOBILE KOREA!\nYou can change on /Internal/Android/znull.conf or you can use command: znull [-s|set]"
		exit 1
	elif  [[ $PKG == com.vng.pubgmobile ]]; then
		echo -e "You don't have a PUBG MOBILE VIETNAM!\nYou can change on /Internal/Android/znull.conf or you can use command: znull [-s|set]"
		exit 1
	else
		echo "WHAT IS ${PKG}, its package name PUBG?\nChange! on /Internal/Android/znull.conf or you can use command: znull [-s|set]"
		exit 1
	fi
else
	if [[ $lib32bit == 0 ]]; then
		echo "Your PUBG is 64bit. not support, sorry :v"
		exit 1
	fi
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

rm -rf $DD/$PKG/files 
rm -rf $DD/$PKG/app_crashrecord
rm -rf $DD/$PKG/app_bugly
rm -rf $DD/$PKG/code_cache
rm -rf $DD/$PKG/cache
rm -rf $DD/$PKG/no_backup

touch $DD/$PKG/files
touch $DD/$PKG/app_crashrecord
touch $DD/$PKG/app_bugly
touch $DD/$PKG/code_cache
touch $DD/$PKG/cache
touch $DD/$PKG/no_backup


listingLibMod=$(ls /data/adb/modules/znull/libraries/LibMod 2> /dev/null | wc -l)


if [[ $listingLibMod != 8 ]];then
	echo "Please Wait, Generating Lib Mod for First Time..."
	dd if=/dev/urandom of=${librariesDir}/LibMod/libIMSDK.so bs=2000 count=1234  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libtprt.so bs=2000 count=1345  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libUE4.so bs=2300 count=3312  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libcubehawk.so bs=2000 count=1232  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libTDataMaster.so bs=2000 count=1111  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libtersafe.so bs=2000 count=1322  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libzip.so bs=2000 count=1211  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libzlib.so bs=2000 count=1212  &> /dev/null
	echo -e "Done! ENJOY # NO CHEAT NO LIFE\nEvery UPDATE module, lib mod will be disappear :v\n"
fi



#rm -rf $DMAD/$PKG/files/login-identifier.txt
#rm -rf $DD/$PKG/databases
#cp -F /data/media/0/PUBGMLITE/Paks/* /data/media/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/.

am force-stop com.wago
am force-stop com.whatsapp
am force-stop org.schabi.newpipe
am force-stop com.mobile.legends
am force-stop com.tencent.iglite
am force-stop org.telegram.messenger
am force-stop com.dts.freefireth
#am force-stop org.videolan.vlc
am force-stop com.animatedstickers.maker
am force-stop org.bromite.bromite
am force-stop com.orpheusdroid.screenrecorder
am force-stop com.google.android.apps.nbu.files
#am force-stop net.openvpn.openvpn
#am force-stop ch.deletescape.lawnchair.ci
am force-stop com.supercell.clashofclans

#echo "Generating fake SRC..."
#rm -rf $SRC
#echo "[version]
#appversion=0.20.0.13777
#srcversion=0.20.0.99999." > $SRC
# echo "GOBLOK
#branch_name = trunk_stable > $PAKS/core_patch_0.20.0.99999.pak
#chmod -Rf 550 $SRC
#chmod -Rf 550 $PAKS

# freeding memory
bfree=$(free -m | grep Mem | awk '{print $4}')
echo 3 > /proc/sys/vm/drop_caches
afree=$(free -m | grep Mem | awk '{print $4}')
echo "Ram Freed $((afree-bfree)) MB!"

sleep 1
echo "Try To Open zNull GG, Please Wait... "

am start -n com.dclztB/com.dclztB.MainActivity &> /dev/null
sleep 2
#am start -n com.d4c.injectorlite/com.androlua.Welcome &> /dev/null
#am start -n com.lite.mod/com.androlua.Welcome &> /dev/null
#am start -n com.dclztz/com.dclztz.MainActivity &> /dev/null
#am start -n com.lite.mod/com.androlua.Welcome &> /dev/null
#am start -n com.termux/com.termux.app.TermuxActivity &> /dev/null

chmod 755 /data/data/com.tencent.iglite/lib/*
echo "Try To Open Game, Please Wait..."

am start -n $PKG/com.epicgames.ue4.SplashActivity &> /dev/null

echo "Please wait..."
sleep 25

am start -n com.termux/com.termux.app.TermuxActivity &> /dev/null

cp -f --remove-destination /data/adb/modules/znull/libraries/LibMod/* ${LIB}/. && echo "Succes replacing lib." || 64bit
chmod 755 /data/data/com.tencent.iglite/lib/*
am force-stop com.google.android.inputmethod.latin
sleep 1
am start -n $PKG/com.epicgames.ue4.SplashActivity &> /dev/null

clear
echo -e "zNull Project\n\n"
echo "Only PUBG MOBILE 32bit!"
echo -e "Game is already started...\n\n"

while true
do
if pidof $PKG &> /dev/null
then :
else break
fi
done

am force-stop com.dclztB
echo -e "Game closed, restoring all to normal."

#chmod 777 $SRC
#chmod -Rf 777 $PAKS
#rm -rf $PAKS/core_patch_0.20.0.99999.pak
#rm -rf $SRC
#chmod -Rf 775 $PAKS
su -c /system/bin/pm install -i com.android.vending -r /data/app/$PKG*/*.apk &> /dev/null

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

