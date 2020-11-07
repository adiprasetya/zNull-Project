#setup

checkingGG=$(su -c /system/bin/pm path com.dclztB)

echo -e "\nzNull Project desu...\n"
if [[ ${checkingGG} = "" ]];then
	echo -e "Installing zNull GG..."
	su -c /system/bin/pm install -r $MODPATH/libraries/ZNL_GG.apk  &> /dev/null && echo -e "Done.\n" || echo -e "Failed to install GG.\n"
else
	echo "GG was installed on your Device, skipping.\n"
fi
mv -f $MODPATH/libraries/zNull-PUBG_MOBILE_LITE.lua /data/media/0/.
echo -e "You can use our script on Internal"
echo -e "Usage: su -c znull or su > znull\n"

mkdir -p $MODPATH/system/bin
mv -f $MODPATH/libraries/znull.sh $MODPATH/system/bin/znull
mv -f $MODPATH/libraries/adaway.sh $MODPATH/system/bin/adaway

rm -rf $MODPATH/libraries/*.apk
rm -rf $MODPATH/libraries/*.lua

# set permission magisk module
set_perm $MODPATH/system/bin/znull 0 0 0755 
set_perm $MODPATH/system/bin/adaway 0 0 0755 
