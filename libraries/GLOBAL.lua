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
            bypassG()
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
            "☣ Back ☣"
        },
        nil,
        ("Thanks to @FakeCez & @NotTeam14!")
    )

    if OTHERMENUG == nil then
    else
        if OTHERMENUG[1] == true then
            lessG()
        end
        if OTHERMENUG[2] == true then
            mbG()
        end
        if OTHERMENUG[3] == true then
            aimbotG()
        end
        if OTHERMENUG[4] == true then
            aimlockG()
        end
        if OTHERMENUG[5] == true then
            smallG()
        end
        if OTHERMENUG[6] == true then
            rmgrassG()
        end
        if OTHERMENUG[7] == true then
            rmfogG()
        end
        if OTHERMENUG[8] == true then
            HOMEG()
        end
    end
end

-- VALUE

function bypassG()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("135682;144387", gg.TYPE_DWORD)
    gg.refineNumber("135682", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134658;131586", gg.TYPE_DWORD)
    gg.refineNumber("134658", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134914;262403", gg.TYPE_DWORD)
    gg.refineNumber("134914", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("133378;262403", gg.TYPE_DWORD)
    gg.refineNumber("133378", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("131330;133634", gg.TYPE_DWORD)
    gg.refineNumber("131330", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("131842;132098", gg.TYPE_DWORD)
    gg.refineNumber("131842", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("132098", gg.TYPE_DWORD)
    gg.getResults(50000)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Memory Freeze ✔")
end

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

function mbL()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("h B8 41 00 00 C8 41 00 00 F4 41", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultsCount())
    if gg.getResultsCount() == 0 then
        gg.toast("Value Magic Bullet\n[X] Not Found!")
    else
        gg.toast("Magic Bullet ✔")
        gg.editAll("h B8 41 00 00 2F 44 00 00 2F 44", gg.TYPE_BYTE)
        gg.clearResults()
    end
end

function FAKECEZ()
end
function setvalue(address, flags, value)
    FAKECEZ("Modify address value(Address, value type, value to be modified)")
    local tt = {}
    tt[1] = {}
    tt[1].address = address
    tt[1].flags = flags
    tt[1].value = value
    gg.setValues(tt)
end

function lessG()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x130CBF0
    setvalue(so + py, 16, 0)
    gg.toast("Less Recoil ✔")
end
function smallG()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x130D1A8
    setvalue(so + py, 16, 0)
    gg.toast("Small Croshair ✔")
end
function aimbotG()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0xFB4694
    setvalue(so + py, 16, 0)
    gg.toast("AimBot ✔")
end
function aimlockG()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x24A74B0
    setvalue(so + py, 16, 0)
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x24A74BC
    setvalue(so + py, 16, 0)
    gg.toast("AimLock ✔")
end
function mbG()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x3B65608
    setvalue(so + py, 16, 40)
    gg.toast("Magic Bullet ✔")
end

function rmgrassG()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x2475D58
    setvalue(so + py, 16, 0)
    gg.toast("Remove Grass ✔")
end
function rmfogG()
    so = gg.getRangesList("libUE4.so")[1].start
    py = 0x2C344C8
    setvalue(so + py, 16, 0)
    gg.toast("Remove Fog ✔")
end

function exit()
    print("ㅤ\n🇲🇨zNull🇲🇨 ")
    os.exit()
end

function LobbyAlertG()
    LAG = gg.alert("\n☣ ＬＯＢＢＹ ☣", "☣ YES ☣", "☣ NO ☣")
    if LAG == 1 then
        bypassG()
        mbG()
        lessG()
        rmfogG()
        smallG()
        aimbotG()
        aimlockG()
    end
end

-- VALUE

gg.toast("PUBG MOBILE GLOBAL!")
gg.clearResults()
LobbyAlertG()

while true do
    if gg.isVisible(true) then
        PUBGMGH = 1
        gg.setVisible(false)
    end
    if PUBGMGH == 1 then
        HOMEG()
    end
end
