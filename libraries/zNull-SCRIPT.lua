gg.setVisible(false)

	gg.toast("Give access to Internet!")
	gg.sleep(300)

if gg.getTargetPackage() == "com.tencent.iglite" then
	LITE = load(gg.makeRequest("https://raw.githubusercontent.com/adiprasetya/zNull-Project/main/libraries/LITE.lua").content)
	pcall(LITE)
elseif gg.getTargetPackage() == "com.tencent.ig" then
	GLOBAL = load(gg.makeRequest("https://raw.githubusercontent.com/adiprasetya/zNull-Project/main/libraries/GLOBAL.lua").content)
	pcall(GLOBAL)
else
    print("ㅤ\n🇲🇨zNull🇲🇨\nYou are not running PUBG MOBILE GLOBAL or LITE !!!.\nnot support all, yet :p")
    os.exit()
end
