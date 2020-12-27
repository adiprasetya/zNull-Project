#setup

mkdir -p /data/media/0/Download
mkdir -p $MODPATH/system/bin
mkdir -p $MODPATH/libraries/LibMod
mv -f $MODPATH/libraries/znull $MODPATH/system/bin/znull
mv -f $MODPATH/libraries/adaway.sh $MODPATH/system/bin/adaway
mv -f $MODPATH/libraries/tcpip.sh $MODPATH/system/bin/tcpip
rm -rf $MODPATH/libraries/*.apk


# set permission magisk module
set_perm $MODPATH/system/bin/znull 0 0 0755 
set_perm $MODPATH/system/bin/adaway 0 0 0755
set_perm $MODPATH/system/bin/tcpip 0 0 0755

echo
cat $MODPATH/libraries/zNull-Project.txt

if [[ ! -s /data/media/0/Android/znull.conf ]]; then
	mv -f $MODPATH/libraries/znull.conf /data/media/0/Android/znull.conf
	echo -e "You can change package name on Internal/Android/znull.conf\nor use znull [-s|set].\n"
else
	source /data/media/0/Android/znull.conf 2> /dev/null
	if [[ "$newver" != "true" ]]; then
		mv -f $MODPATH/libraries/znull.conf /data/media/0/Android/znull.conf
		echo -e "Updated to new Template znull.conf"
		echo -e "You can configure it again!\n"
	fi
fi


mv -f $MODPATH/libraries/znull.sh /data/media/0/Android/.
chmod +x /data/media/0/Android/znull.sh

mv -f $MODPATH/libraries/zNull-SCRIPT.lua /data/media/0/. && echo -e "You can use our script on Internal.\nOur script is OnLy for PUBG MOBILE LITE and GLOBAL!"
rm -rf $MODPATH/libraries/*.lua

echo -e "Usage: su -c znull [-h|help|--help]"
echo -e "Not for noob, sorry :v\n"
 
