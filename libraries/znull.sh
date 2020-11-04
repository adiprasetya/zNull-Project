#!/system/bin/sh

if [ "$(whoami)" != "root" ]
then
echo -e 'RUN WITH ROOT PERMISSIONS !!!'
exit
fi

clear
export DD="/data/data"
export DMAD="/data/media/0/Android/data"
export PKG="com.tencent.iglite"
export FU="files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved"
export DM0="/data/media/0"

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
echo "Only PUBG MOBILE LITE 32bit!"


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

sleep 1
echo "Try To Open D4C GG, Please Wait... "

am start -n com.dclztA/com.dclztA.MainActivity &> /dev/null
sleep 2
#am start -n com.d4c.injectorlite/com.androlua.Welcome &> /dev/null
#am start -n com.lite.mod/com.androlua.Welcome &> /dev/null
#am start -n com.dclztz/com.dclztz.MainActivity &> /dev/null
#am start -n com.lite.mod/com.androlua.Welcome &> /dev/null
#am start -n com.termux/com.termux.app.TermuxActivity &> /dev/null

echo "Try To Open Game, Please Wait..."

am start -n com.tencent.iglite/com.epicgames.ue4.SplashActivity &> /dev/null

echo "Please wait..."
sleep 15

am start -n com.termux/com.termux.app.TermuxActivity &> /dev/null

cp -f --remove-destination /data/adb/modules/znull/libraries/LibMod/* /data/app/$PKG*/lib/*/.
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

am force-stop com.dclztA
echo -e "Game closed, restoring all to normal."

su -c /system/bin/pm install -i com.android.vending -r /data/app/$PKG*/*.apk

echo "Done. Succesfully restoring to normal."
sleep 1
echo "Exiting automatically in 5 seconds, CTRL + C for canceling."

#pm install -r /data/app/$PKG*/base.apk /data/app/$PKG*/base.apk  &> /dev/null

sleep 5
#am force-stop com.dclztA
am force-stop com.lite.mod
am force-stop com.dclztz
am force-stop com.termux

