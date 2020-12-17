if gg.getTargetPackage() == "com.tencent.ig" then
    gg.clearResults()
else
    print("ㅤ\n🇲🇨zNull🇲🇨\nYou are not running PUBG MOBILE GLOBAL !!!")
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
            "➤ Memory Freeze【 Lobby 】",
            "➤ Other Cheats...",
            "☣ ＥＸＩＴ ☣"
        },
        nil,
        ("PUBG MOBILE GLOBAL!")
    )
    if MENUG == nil then
    else
        if MENUG == 1 then
            BYPASS()
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
            "➭ Less Recoil [Lobby]",
            "➭ Magic Bullet [Lobby]",
            "➭ Aimbot [Lobby]",
            "➭ Aimlock [Lobby] ",
            "➭ Small Crosshair [Lobby] ",
            "➭ Remove Grass [Lobby] ",
            "➭ Remove Fog [Lobby] ",
            "➭ Ipad View [Lobby] ",
            "➭ Speed Prone [Lobby] (RiskBan)",
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
            IPADVIEW()
        end
        if OTHERMENUG[9] == true then
            SPEEDPRONE()
        end
        if OTHERMENUG[10] == true then
            HOMEG()
        end
    end
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
        gg.toast("Value Magic Bullet\n[X] Not Succes, Found!")
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

function LESSRECOIL()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x130CBF0
    setvalue(so + py, 16, 0)
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x1BB7C74
    setvalue(so + py, 16, 0)
    gg.toast("Less Recoil ✓")
end
function SMALLCROSSHAIR()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x130D1A8
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
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x3B65608
    setvalue(so + py, 16, 40)
    gg.toast("Magic Bullet ✓")
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

function IPADVIEW()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x37307E0
    setvalue(so + py, 16, 320)
    gg.toast("Ipad View ✓")
end

function SPEEDPRONE()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 18153752
    setvalue(so + py, 16, -2.73959308e28)
    gg.toast("Speed Prone ✓")
end

function BYPASS()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x1D40C98
    setvalue(so + py, 16, 0.0)
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x1C57DEC
    setvalue(so + py, 16, 0.0)

    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x1DBA718
    setvalue(so + py, 16, 0.1)
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x1d40c84
    setvalue(so + py, 16, 0.7)

    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x1d1ddd4
    setvalue(so + py, 16, 0.1)
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x1c55c10
    setvalue(so + py, 16, 0.1)

    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x1dba704
    setvalue(so + py, 16, 0.3)
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x1d40d48
    setvalue(so + py, 16, 0)

    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x1d40cac
    setvalue(so + py, 16, 0.1)
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x1d1dff0
    setvalue(so + py, 16, 0.1)

    gg.toast("Memory Freeze ✓") 
end

gg.setVisible(false)

gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_BAD)

function exit()
    print("ㅤ\nEND\n")
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

-- VALUE

gg.toast("PUBG MOBILE GLOBAL!")
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
