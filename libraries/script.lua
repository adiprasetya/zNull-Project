-- Personal VIP Script by zNull for zNull...

-- search HOME() for eumm....

-- ✔

gg.setVisible(false)

-- checking gg package :v

if gg.PACKAGE == "com.dclztB" then
    gg.clearResults()
else
    print("ㅤ\n🇲🇨zNull🇲🇨\nUse zNull GameGuardian 👊😎.\nXD")
    os.exit()
end

-- check for game package :)

if gg.getTargetPackage() == "com.tencent.iglite" or gg.getTargetPackage() == "com.rhmsoft.edit.pro" then
    gg.clearResults()
else
    print("ㅤ\n🇲🇨zNull🇲🇨\nYou are not running PUBG MOBILE LITE.\nor Choose Quickedit for Testing.")
    os.exit()
end

gg.setVisible(false)
gg.toast("🇲🇨zNull🇲🇨")

-- START

HOME = 1
function HOME()
    MENU =
        gg.choice(
        {
            "➤ WALLHACK & COLOR【 Lobby 】",
            "➤ FLASH SPEED【 Game 】" .. flash,
            "➤ FAST PARACHUTE【 Island 】",
            "☣ ＥＸＩＴ ☣"
        }
    )
    if MENU == nil then
    else
        if MENU == 1 then
            bcwh()
            fix()
        end
        if MENU == 2 then
            fs()
        end
        if MENU == 3 then
            fp()
        end
        if MENU == 4 then
            exit()
        end
    end
    PUBGMLH = -1
end

on = "丨【 ON 】"
off = "丨【 OFF 】"
flash = off

-- VALUE

function bcwh()
    -- green
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineAddress("8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
        gg.toast("Wallhack and Color is Still Active.")
        gg.clearResults()
    else
        gg.getResults(gg.getResultsCount())
        gg.editAll("7", gg.TYPE_DWORD)
        gg.clearResults()
        -- black for pure it
        gg.setRanges(gg.REGION_VIDEO)
        gg.searchNumber("8203", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineAddress("8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(gg.getResultsCount())
        gg.editAll("8", gg.TYPE_DWORD)
        gg.clearResults()
        gg.toast("Green ✔")
        gg.clearResults()
        gg.setRanges(gg.REGION_VIDEO)
        gg.searchNumber("4.8146047e21;3.7615819e-37;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineAddress("0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(gg.getResultsCount())
        gg.editAll("130", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("WallHack ✔")
    end
end
-- end

function fix()
    gg.clearResults()
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber("4.8146047e21;3.7615819e-37;130", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("130", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineAddress("0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 3 then
        gg.getResults(1)
        gg.editAll("2", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("Fixed ✔")
    else
        gg.toast("Nothing.")
        gg.clearResults()
        if gg.getResultCount() == 4 then
            gg.getResults(2)
            gg.editAll("2", gg.TYPE_FLOAT)
            gg.clearResults()
            gg.toast("Fixed ✔")
        else
            gg.toast("Nothing.")
            gg.clearResults()
        end
    end
end

function bypass()
    -- bepass sniff
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber('"67109633"', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber('"67109377"', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Memory Freeze ✔")
end

function mb()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    -- gg.getResults(2)
    local zNull = gg.getResults(gg.getResultsCount())
    for i, v in ipairs(zNull) do
        if v.flags == gg.TYPE_FLOAT then
            v.value = "1000000000"
            v.freeze = true
        end
    end
    --gg.getResults(gg.getResultsCount())
    --gg.editAll("1000000000", gg.TYPE_FLOAT)
    gg.addListItems(zNull)
    gg.clearResults()
    gg.clearList()
    gg.toast("Magic Bullet ✔")
end

function less()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("-2.786982e28;-3.7444097e28;-1.1368837e-13::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("-3.7444097e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("No Recoil ✔")
end

function aim()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultsCount())
    -- gg.getResults(10)
    gg.editAll("2.5;0.0001;2.5;2.5;0.0001", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Aimbot Close Range ✔")
end

function fs()
    if flash == off then
        flash = on
    else
        flash = off
    end
    if flash == on then
        gg.clearResults()
        gg.setRanges(gg.REGION_C_DATA)
        gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99)
        gg.editAll("-1,296,744,153,870,237,696", gg.TYPE_QWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_DATA)
        gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99)
        gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
        gg.clearResults()
        gg.toast("Flash Speed【 ON 】")
    else
        gg.clearResults()
        gg.setRanges(gg.REGION_C_DATA)
        gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99)
        gg.editAll("-1,296,744,149,883,614,555", gg.TYPE_QWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_DATA)
        gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99)
        gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
        gg.clearResults()
        gg.toast("Flash Speed【 OFF 】")
    end
end

function fp()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("200;200;1;1::13", 16, false, 536870912, 0, -1)
    gg.refineNumber("1", 16, false, 536870912, 0, -1)
    gg.getResultsCount()
    gg.getResults(21)
    gg.editAll("2412", 16)
    gg.clearResults()
    gg.toast("Fast Parachute ✔")
end

function small()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber(
        "-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::",
        gg.TYPE_FLOAT,
        false,
        gg.SIGN_EQUAL,
        0,
        -1
    )
    gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll("90", gg.TYPE_FLOAT) -- lobby
    gg.clearResults()
    gg.toast("Small Crosshair ✔")
end

function as()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Anti Shake ✔")
end

function LobbyAlert()
    gg.setVisible(false)
    LA2 = gg.alert("\n☣ ＬＯＢＢＹ ☣", "☣ YES ☣", "☣ NO ☣")
    if LA2 == 1 then
        bypass()
        bcwh()
        aim()
        less()
        small()
        as()
    end
end

LobbyAlert()

function exit()
    print("ㅤ\n🇲🇨zNull🇲🇨 ")
    os.exit()
end

while true do
    if gg.isVisible(true) then
        PUBGMLH = 1
        gg.setVisible(false)
    end
    if PUBGMLH == 1 then
        HOME()
    end
end
