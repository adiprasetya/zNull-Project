if gg.getTargetPackage() == "com.tencent.ig" then
    gg.clearResults()
else
    print("ㅤ\n🇲🇨zNull🇲🇨\nYou are not running PUBG MOBILE GLOBAL !!!")
    os.exit()
end

local v = gg.getTargetInfo()

if v.versionName ~= "1.1.0" then
	print("ㅤ\n🇲🇨zNull🇲🇨\nOnly Works at version 1.1.0 32bit, ur version is", v.versionName, "\nForgive me :)\n\nBest Regards, Adi Prasetya.")
	os.exit()
end

gg.setVisible(false)

on = "丨【 ON 】"
off = "丨【 OFF 】"

HOMEG = 1
function HOMEG()
    MENUG =
        gg.choice(
        {
--            "➤ Bypass || Memory Freeze【 Lobby 】[Detected!]",
            "➤ Anti Report【 Island 】",
            "➤ More Cheats...",
            "☣ ＥＸＩＴ ☣"
        },
        nil,
        ("PUBG MOBILE GLOBAL v1.1.0!")
    )
    if MENUG == nil then
    else
--        if MENUG == 1 then
--            BYPASS()
--        end
        if MENUG == 1 then
            ANTIREPORT()
        end
        if MENUG == 2 then
            otherG()
        end
        if MENUG == 3 then
            exit()
        end
    end
    PUBGMGH = -1
end

function otherG()
    OTHERMENUG =
        gg.multiChoice(
        {
            "➭ Less Recoil [Game]",
            "➭ Magic Bullet [Game]",
            "➭ Aimbot [Game]",
            "➭ Aimlock [Game] ",
            "➭ Small Crosshair [Game] ",
            "➭ Remove Grass [Game] ",
            "➭ Remove Fog [Game] ",
            "➭ Wide View [Game] ",
            "➭ Black Body [Game] ",
            "➭ Night Mode [Game] ",
            "➭ Speed Prone [Game] (RiskBan)",
            "➭ Flash Speed [Game] (RiskBan)",
            "☣ Back ☣"
        },
        nil,
        ("Thanks to @FakeCez & @NotTeam14!")
    )

    if OTHERMENUG == nil then
    else
        if OTHERMENUG[1] == true then
            LESSRECOIL()
        end
        if OTHERMENUG[2] == true then
            MAGICBULLET()
        end
        if OTHERMENUG[3] == true then
            AIMBOT()
        end
        if OTHERMENUG[4] == true then
            AIMLOCK()
        end
        if OTHERMENUG[5] == true then
            SMALLCROSSHAIR()
        end
        if OTHERMENUG[6] == true then
            NOGRASS()
        end
        if OTHERMENUG[7] == true then
            NOFOG()
        end
        if OTHERMENUG[8] == true then
            WIDEVIEW()
        end
        if OTHERMENUG[9] == true then
            BLACKBODY()
        end
        if OTHERMENUG[10] == true then
            NIGHTMODE()
        end
        if OTHERMENUG[11] == true then
            SPEEDPRONE()
        end
        if OTHERMENUG[12] == true then
            FLASH()
        end
        if OTHERMENUG[13] == true then
            HOMEG()
        end
    end
    PUBGMGH = -1
end

-- VALUE

function bcwhG()
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineAddress("E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultsCount())
    gg.editAll("6", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Yellow ✔")
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultsCount())
    gg.editAll("130", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultsCount())
    gg.editAll("130", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("WallHack ✔")
end

function MB()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("h B8 41 00 00 C8 41 00 00 F4 41", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultsCount())
    if gg.getResultsCount() == 0 then
        gg.toast("Magic Bullet Failed!")
    else
        gg.toast("Magic Bullet ✔")
        gg.editAll("h B8 41 00 00 2F 44 00 00 2F 44", gg.TYPE_BYTE)
        gg.clearResults()
    end
end

function ZNULL()
end
function setvalue(address, flags, value)
    ZNULL("Modify address value(Address, value type, value to be modified)")
    local tt = {}
    tt[1] = {}
    tt[1].address = address
    tt[1].flags = flags
    tt[1].value = value
    gg.setValues(tt)
end


function ANTIREPORT()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x1D40C98
    setvalue(so + py, 16, 0)
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x1C57DEC
    setvalue(so + py, 16, 0)
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x1DBA718
    setvalue(so + py, 16, 0)
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x4C4325
    setvalue(so + py, 16, 0)
    gg.toast("Anti Report ✔")
end

function LESSRECOIL()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x130CBF0
    setvalue(so + py, 16, 0)
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x1BB7C74
    setvalue(so + py, 4, 70)
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x367EC84
    setvalue(so + py, 4, 70)
    gg.toast("Less Recoil ✓")
end
function SMALLCROSSHAIR()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x1B62FE0
    setvalue(so + py, 16, 0)
    gg.toast("Small Croshair ✓")
end
function AIMBOT()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0xFB4694
    setvalue(so + py, 16, 0)
    gg.toast("AimBot ✓")
end
function AIMLOCK()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x24A74B0
    setvalue(so + py, 16, 0)
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x24A74BC
    setvalue(so + py, 16, 0)
    gg.toast("AimLock ✓")
end
function MAGICBULLET()
    MagicBulletAlert =
        gg.alert(
        "\n☣ MAGIC BULLET 100%!!! ☣\nNote from FakeCez, don't use a pan. if you won't get bug blocked by the wall. Bug, u can't damage if enemy is proning.\nAre you sure about this?",
        "☣ SURE! ☣",
        "☣ CANCEL ☣"
    )
    if MagicBulletAlert == 1 then
        so = gg.getRangesList("libUE4.so")[1].start
        py = 0x3B64788
        setvalue(so + py, 16, 42)
        so = gg.getRangesList("libUE4.so")[1].start
        py = 0x62277512
        setvalue(so + py, 16, 42)
        gg.toast("Magic Bullet ✓")
    end
    if MagicBulletAlert == 2 then
        gg.toast("Magic Bullet Cancelled...")
        otherG()
    end
end

function NOGRASS()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x2475D58
    setvalue(so + py, 16, 0)
    gg.toast("Remove Grass ✓")
end
function NOFOG()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x2C344C8
    setvalue(so + py, 16, 0)
    gg.toast("Remove Fog ✓")
end

function BLACKBODY()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x2CBD788
    setvalue(so + py, 16, 14)
    gg.toast("Black Body ✓")
end

function NIGHTMODE()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x2E082FC
    setvalue(so + py, 16, 0)
    gg.toast("Night Mode ✓")
end

function WIDEVIEW()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x37307E0
    setvalue(so + py, 16, 320)
    gg.toast("Wide View ✓")
end

function SPEEDPRONE()
    ProneAlert =
        gg.alert(
        "\n☣ SPEED PRONE!!! ☣\nThis can't be deactivated, if you want deactivated just relogin (LOL), and maybe ban 10 minutes.\nAre you sure about this?",
        "☣ SURE! ☣",
        "☣ CANCEL ☣"
    )
    if ProneAlert == 1 then
        so = gg.getRangesList("libUE4.so")[1].start
        py = 18153752
        setvalue(so + py, 16, -2.73959308e28)
        gg.toast("Speed Prone ✓")
    end
    if ProneAlert == 2 then
        gg.toast("Speed Prone Cancelled...")
        otherG()
    end
end

function FLASH()
    FlashAlert =
        gg.alert(
        "\n☣ FLASH SPEED!!! ☣\nThis can't be deactivated, if you want deactivated just relogin (LOL), and maybe ban 10 minutes.\nAre you sure about this?",
        "☣ SURE! ☣",
        "☣ CANCEL ☣"
    )
    if FlashAlert == 1 then
        so = gg.getRangesList("libUE4.so")[1].start
        py = 0x3789A54
        setvalue(so + py, 4, 0)
        so = gg.getRangesList("libUE4.so")[1].start
        py = 0x12C6A30
        setvalue(so + py, 4, 0)
        gg.toast("Flash Speed ✓")
    end
    if FlashAlert == 2 then
        gg.toast("Flash Speed Cancelled...")
        otherG()
    end
end

function BYPASS()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("196,864;16,842,753::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
    else
        gg.searchNumber("196,864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        n = gg.getResultCount()
        jz = gg.getResults(n)
        for i = 1, n do
            gg.addListItems({[1] = {address = jz[i].address + 236, flags = 4, freeze = true, value = 0}})
            gg.addListItems({[1] = {address = jz[i].address + 232, flags = 4, freeze = true, value = 0}})
            gg.addListItems({[1] = {address = jz[i].address + 228, flags = 4, freeze = true, value = 0}})
            gg.addListItems({[1] = {address = jz[i].address + 340, flags = 4, freeze = true, value = 0}})
            gg.addListItems({[1] = {address = jz[i].address + 344, flags = 4, freeze = true, value = 0}})
        end
    end
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("133634;134914", gg.TYPE_DWORD)
    gg.refineNumber("133634", gg.TYPE_DWORD)
    gg.getResults(50500)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134914;131330", gg.TYPE_DWORD)
    gg.refineNumber("134914", gg.TYPE_DWORD)
    gg.getResults(50500)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("131586;131842", gg.TYPE_DWORD)
    gg.refineNumber("131586", gg.TYPE_DWORD)
    gg.getResults(50500)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("132098;133635", gg.TYPE_DWORD)
    gg.refineNumber("132098", gg.TYPE_DWORD)
    gg.getResults(50500)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()

    gg.toast("Bypass || Memory Freeze ✓")
end

gg.setVisible(false)

function exit()
    print("Best Regards, Adi Prasetya.\n\nEND\n")
    os.exit()
end

function LobbyAlertG()
    LAG = gg.alert("\n☣ ＬＯＢＢＹ ☣", "☣ YES ☣", "☣ NO ☣")
    if LAG == 1 then
        BYPASS()
        MAGICBULLET()
        LESSRECOIL()
        NOFOG()
        SMALLCROSSHAIR()
    end
end

function GLOBALALERT()
    GA = gg.alert("Last Update: 2 Jan 2021\n\nNo cheating is safe, anti-ban is just an illusion. Remember that!", "OKE!", "EXIT")
    if GA == 1 then
        HOMEG()
    end
    if GA == 2 then
        exit()
    end
end

-- VALUE

gg.toast("PUBG MOBILE GLOBAL!")
GLOBALALERT()
print("ㅤ\n🇲🇨zNull🇲🇨 ")
print("Target: " .. gg.getTargetPackage())
print("")
gg.clearResults()

while true do
    if gg.isVisible(true) then
        PUBGMGH = 1
        gg.setVisible(false)
    end
    if PUBGMGH == 1 then
        HOMEG()
    end
end
