#setup
echo -e "\nzNull Project desu..."
echo -e "Installing D4C GG..."
su -c /system/bin/pm install -r $MODPATH/libraries/D4C_GG.apk  &> /dev/null
echo -e "Done.\n"
cp -f $MODPATH/libraries/zNull-PUBG_MOBILE_LITE.lua /data/media/0/.
echo -e "You can use our script on Internal"
echo -e "Usage: su -c znull or su > znull\n"

mkdir -p $MODPATH/system/bin
mv -f $MODPATH/libraries/znull.sh $MODPATH/system/bin/znull

rm -rf $MODPATH/libraries/*.apk
rm -rf $MODPATH/libraries/*.lua

# set permission magisk module
set_perm $MODPATH/system/bin/znull 0 0 0755 
