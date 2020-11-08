#setup

appGG=$(ls -d /data/app/com.dclztB* | wc -l)
dirGG="/data/media/0/Download/zNull_GG.apk"

mkdir -p /data/media/Download
mkdir -p $MODPATH/system/bin
mkdir -p $MODPATH/libraries/LibMod
mkdir -p $MODPATH/libraries/PaksMod
mv -f $MODPATH/libraries/znull.sh $MODPATH/system/bin/znull
mv -f $MODPATH/libraries/adaway.sh $MODPATH/system/bin/adaway
rm -rf $MODPATH/libraries/*.apk
rm -rf $MODPATH/libraries/*.lua

# set permission magisk module
set_perm $MODPATH/system/bin/znull 0 0 0755 
set_perm $MODPATH/system/bin/adaway 0 0 0755

echo -e "\nzNull Project desu...\n"


if [[ ${appGG} == 0 ]];then
	if [ -f ${dirGG} ];then
		echo -e "zNull GG not installed."
		echo -e "GG file is on internal, no need to download again :p"
		echo -e "Installing zNull GG..."
		su -c /system/bin/pm install -r ${dirGG} &> /dev/null && echo -e "Done GG Installed.\n" || 	echo -e "Failed to install GG.\n"
	else
		echo -e "zNull GG not installed, Downloading GG using curl..."
		echo -e "GG size is <35mb so be patient to download it :v"
		curl -L -s -o ${dirGG} https://github.com/adiprasetya/zNull-Project/releases/download/v0.0.0/ZNL_GG.apk && echo -e "Downloading Succesful!" || echo -e "Download Failed! maybe no internet.\nSkipping, reflash module if you want zNull GG\n"
		if [ -f ${dirGG} ];then
			echo -e "Installing zNull GG..."
			su -c /system/bin/pm install -r ${dirGG} &> /dev/null && echo -e "Done GG Installed.\n" || 	echo -e "Failed to install GG.\n"
		fi
    fi
else
	echo -e "zNull GG was installed on your Device, skipping.\n"
fi

mv -f $MODPATH/libraries/zNull-PUBG_MOBILE_LITE.lua /data/media/0/.
echo -e "You can use our script on Internal"
echo -e "Usage: su -c znull or su > znull\n"

 
