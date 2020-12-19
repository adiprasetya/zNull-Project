gg.setVisible(false)



if gg.getTargetPackage() == "com.tencent.iglite" then
	gg.toast("Give access to Internet!")
	gg.sleep(500)
	LITE = load(gg.makeRequest("https://raw.githubusercontent.com/adiprasetya/zNull-Project/main/libraries/LITE.lua").content)
	pcall(LITE)
elseif gg.getTargetPackage() == "com.tencent.ig" then
	gg.toast("Give access to Internet!")
	gg.sleep(500)
	GLOBAL = load(gg.makeRequest("https://raw.githubusercontent.com/adiprasetya/zNull-Project/main/libraries/GLOBAL.lua").content)
	pcall(GLOBAL)
else
	gg.toast("LOL!")
    print("ㅤ\n🇲🇨zNull🇲🇨\nYou are not targeting PUBG MOBILE GLOBAL or LITE !!!.")
    print("Your Target: " .. gg.getTargetPackage)
    print("not support all, LOL")
    os.exit()
end
