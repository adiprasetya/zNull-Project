#setup
echo -e "\nzNull desu..."
echo -e "Installing D4C GG..."
su -c /system/bin/pm install -r $MODPATH/libraries/D4C_GG.apk  &> /dev/null
echo -e "Done.\n"
cp -f $MODPATH/libraries/zNull-PUBG_MOBILE_LITE.lua /data/media/0/.
echo -e "You can use our script on Internal"
echo -e "Usage: su -c znull or su > znull\n"

cp -f $MODPATH/system/bin/znull /system/bin/.

# set permission magisk module
set_perm_recursive $MODPATH 0 0 0755 0755
set_perm $MODPATH/system/bin 0 0 0755 
