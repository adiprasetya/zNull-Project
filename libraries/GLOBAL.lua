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

    gg.clearResults()

    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("135682;144387", gg.TYPE_DWORD)
    gg.refineNumber("135682", gg.TYPE_DWORD)
    gg.getResults(gg.getResultsCount())
    if gg.getResultsCount() == 0 then
        print("Bypass 1 Failed!")
        gg.toast("Bypass 1 Failed!")
    else
        print("Bypass 1 Succes, Found: " .. gg.getResultsCount())
        gg.toast("Bypass 1 Succes.")
        gg.editAll("0", gg.TYPE_DWORD)
    end

    gg.clearResults()

    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134658;131586", gg.TYPE_DWORD)
    gg.refineNumber("134658", gg.TYPE_DWORD)
    if gg.getResultsCount() == 0 then
        print("Bypass 2 Failed!")
        gg.toast("Bypass 2 Failed!")
    else
        print("Bypass 2 Succes, Found: " .. gg.getResultsCount())
        gg.toast("Bypass 2 Succes.")
        gg.getResults(gg.getResultsCount())
        gg.editAll("0", gg.TYPE_DWORD)
    end

    gg.clearResults()

    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134914;262403", gg.TYPE_DWORD)
    gg.refineNumber("134914", gg.TYPE_DWORD)
    if gg.getResultsCount() == 0 then
        print("Bypass 3 Failed!")
        gg.toast("Bypass 3 Failed!")
    else
        print("Bypass 3 Succes, Found: " .. gg.getResultsCount())
        gg.toast("Bypass 3 Succes.")
        gg.getResults(gg.getResultsCount())
        gg.editAll("0", gg.TYPE_DWORD)
    end

    gg.clearResults()

    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("133378;262403", gg.TYPE_DWORD)
    gg.refineNumber("133378", gg.TYPE_DWORD)
    if gg.getResultsCount() == 0 then
        print("Bypass 4 Failed!")
        gg.toast("Bypass 4 Failed!")
    else
        print("Bypass 4 Succes, Found: " .. gg.getResultsCount())
        gg.toast("Bypass 4 Succes.")
        gg.getResults(gg.getResultsCount())
        gg.editAll("0", gg.TYPE_DWORD)
    end

    gg.clearResults()

    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("131330;133634", gg.TYPE_DWORD)
    gg.refineNumber("131330", gg.TYPE_DWORD)
    if gg.getResultsCount() == 0 then
        print("Bypass 5 Failed!")
        gg.toast("Bypass 5 Failed!")
    else
        print("Bypass 5 Succes, Found: " .. gg.getResultsCount())
        gg.toast("Bypass 5 Succes.")
        gg.getResults(gg.getResultsCount())
        gg.editAll("0", gg.TYPE_DWORD)
    end

    gg.clearResults()

    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("131842;132098", gg.TYPE_DWORD)
    gg.refineNumber("131842", gg.TYPE_DWORD)
    if gg.getResultsCount() == 0 then
        print("Bypass 6 Failed!")
        gg.toast("Bypass 6 Failed!")
    else
        print("Bypass 6 Succes, Found: " .. gg.getResultsCount())
        gg.toast("Bypass 6 Succes.")
        gg.getResults(gg.getResultsCount())
        gg.editAll("0", gg.TYPE_DWORD)
    end

    gg.clearResults()

    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("132098", gg.TYPE_DWORD)
    if gg.getResultsCount() == 0 then
        print("Bypass 7 Failed!")
        gg.toast("Bypass 7 Failed!")
    else
        print("Bypass 7 Succes, Found: " .. gg.getResultsCount())
        gg.toast("Memory Freeze ✓")
        gg.getResults(gg.getResultsCount())
        gg.editAll("0", gg.TYPE_DWORD)
    end

    gg.clearResults()
    
end

gg.setVisible(false)



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
