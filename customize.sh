#setup

mkdir -p /data/media/0/Download
mkdir -p $MODPATH/system/bin
mkdir -p $MODPATH/libraries/LibMod
mv -f $MODPATH/libraries/znull.sh $MODPATH/system/bin/znull
mv -f $MODPATH/libraries/adaway.sh $MODPATH/system/bin/adaway
rm -rf $MODPATH/libraries/*.apk


# set permission magisk module
set_perm $MODPATH/system/bin/znull 0 0 0755 
set_perm $MODPATH/system/bin/adaway 0 0 0755

echo -e "\nzNull Project desu...\n"

mv -f $MODPATH/libraries/znull.conf /data/media/0/Android/. && echo -e "You can change package name on Internal/Android/znull.conf\nor use znull [-s|set].\n"

mv -f $MODPATH/libraries/zNull-SCRIPT.lua /data/media/0/. && echo -e "You can use our script on Internal.\nOur script is OnLy for PUBG MOBILE LITE and GLOBAL!"


rm -rf $MODPATH/libraries/*.lua

echo -e "Usage: su -c znull [-h|help|--help]"
echo -e "Not for noob, sorry :v\n"
 
