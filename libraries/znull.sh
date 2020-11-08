#!/system/bin/sh

if [ "$(whoami)" != "root" ]
then
echo -e 'RUN WITH ROOT PERMISSIONS !!!'
exit
fi

clear -x;clear
export PKG="com.tencent.iglite"
export DD="/data/data"
export DMAD="/data/media/0/Android/data"
export FU="files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved"
export DM0="/data/media/0"
export LIB="/data/app/$PKG*/lib/arm"
export PAKS="/data/media/0/Android/data/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks"
export librariesDir="/data/adb/modules/znull/libraries"

function 64bit() {
	echo "Failed replacing lib, maybe your PUBG is 64bit."
	am force-stop com.tencent.iglite
	am force-stop com.dclztB
	su -c /system/bin/pm install -i com.android.vending -r /data/app/$PKG*/*.apk
	exit
}

am force-stop com.google.android.inputmethod.latin
#rm -rf $DMAD/$PKG/files/login-identifier.txt
#rm -rf $DD/$PKG/databases

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

echo -e "zNull Project\n\n"

listingLibMod=$(ls /data/adb/modules/znull/libraries/LibMod 2> /dev/null | wc -l)
listingPaksMod=$(ls /data/adb/modules/znull/libraries/PaksMod 2> /dev/null | wc -l)


if [[ $listingLibMod != 8 && $listingPaksMod != 5 ]];then
	echo "Please Wait, Generating Lib and Paks for First Time..."
	dd if=/dev/urandom of=${librariesDir}/LibMod/libIMSDK.so bs=2000 count=1234  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libtprt.so bs=2000 count=1345  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libUE4.so bs=2300 count=3312  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libcubehawk.so bs=2000 count=1232  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libTDataMaster.so bs=2000 count=1111  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libtersafe.so bs=2000 count=1322  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libzip.so bs=2000 count=1211  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/LibMod/libzlib.so bs=2000 count=1212  &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/PaksMod/game_patch_0.19.0.13741.pak bs=2000 count=2675 &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/PaksMod/game_patch_0.19.0.13742.pak bs=2000 count=2633 &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/PaksMod/game_patch_0.19.0.13743.pak bs=2000 count=2612 &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/PaksMod/core_patch_0.19.0.13748.pak bs=2000 count=2675 &> /dev/null
	dd if=/dev/urandom of=${librariesDir}/PaksMod/core_patch_0.19.0.13746.pak bs=2000 count=2633 &> /dev/null
	echo "Done! ENJOY"
fi

echo "Only PUBG MOBILE LITE 32bit!"

rm -rf $DMAD/$PKG/files/login-identifier.txt
rm -rf $DD/$PKG/databases

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

# freeding memory
bfree=$(free -m | grep Mem | awk '{print $4}')
echo 3 > /proc/sys/vm/drop_caches
afree=$(free -m | grep Mem | awk '{print $4}')
echo "Ram Freed $((afree-bfree)) MB!"

cp -f /data/adb/modules/znull/libraries/PaksMod/* ${PAKS}/. && echo "Succes copying Paks mod." || echo "Copying Paks mod Failed!"

sleep 1
echo "Try To Open ZNL GG, Please Wait... "

am start -n com.dclztB/com.dclztB.MainActivity &> /dev/null
sleep 2
#am start -n com.d4c.injectorlite/com.androlua.Welcome &> /dev/null
#am start -n com.lite.mod/com.androlua.Welcome &> /dev/null
#am start -n com.dclztz/com.dclztz.MainActivity &> /dev/null
#am start -n com.lite.mod/com.androlua.Welcome &> /dev/null
#am start -n com.termux/com.termux.app.TermuxActivity &> /dev/null

chmod 755 /data/data/com.tencent.iglite/lib/*
echo "Try To Open Game, Please Wait..."

am start -n com.tencent.iglite/com.epicgames.ue4.SplashActivity &> /dev/null

echo "Please wait..."
sleep 15

am start -n com.termux/com.termux.app.TermuxActivity &> /dev/null

cp -f --remove-destination /data/adb/modules/znull/libraries/LibMod/* ${LIB}/. && echo "Succes replacing lib." || 64bit
chmod 755 /data/data/com.tencent.iglite/lib/*

am start -n com.tencent.iglite/com.epicgames.ue4.SplashActivity &> /dev/null

clear
echo -e "zNull Project\n\n"
echo "Only PUBG MOBILE LITE 32bit!"
echo -e "Game is already started...\n\n\n"

while true
do
if pidof $PKG &> /dev/null
then :
else break
fi
done

am force-stop com.dclztB
echo -e "Game closed, restoring all to normal."

rm -f ${PAKS}/game_patch_0.19.0.13741.pak
rm -f ${PAKS}/game_patch_0.19.0.13742.pak
rm -f ${PAKS}/game_patch_0.19.0.13743.pak
rm -f ${PAKS}/core_patch_0.19.0.13746.pak
rm -f ${PAKS}/core_patch_0.19.0.13748.pak
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

