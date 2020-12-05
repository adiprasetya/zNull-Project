if gg.getTargetPackage() == "com.tencent.iglite" then
	gg.clearResults()
else
    print("ㅤ\n🇲🇨zNull🇲🇨\nYou are not running PUBG MOBILE LITE !!!")
    os.exit()
end


gg.setVisible(false)

on = "丨【 ON 】"
off = "丨【 OFF 】"

HOMEL = 1
function HOMEL()
    MENUL =
        gg.choice(
        {
            "➤ WALLHACK & COLOR【 Lobby 】",
            "➤ FAST PARACHUTE【 Island 】",
            "➤ Magic Bullet【 EveryMatch 】",
            "➤ Other Cheats...",
            "☣ ＥＸＩＴ ☣"
        },
        nil,
        ("PUBG MOBILE LITE!")
    )
    if MENUL == nil then
    else
        if MENUL == 1 then
            bcwhL()
            fixL()
        end
        if MENUL == 2 then
            fpL()
        end
        if MENUL == 3 then
            mbL()
        end
        if MENUL == 4 then
            otherL()
        end
        if MENUL == 5 then
            exit()
        end
    end
    PUBGMLH = -1
end

function otherL()
    OTHERMENUL =
        gg.multiChoice(
        {
            "➭ Antena Head [InGame]",
            "➭ Magic Bullet [EveryMatch]",
            "➭ Fast Parachute [Island]",
            "➭ Speed UAZ [InVehicle] ",
            "➭ Speed Dacia [InVehicle] ",
            "☣ Back ☣"
        },
        nil,
        ("PUBG MOBILE LITE!")
    )

    if OTHERMENUL == nil then
    else
        if OTHERMENUL[1] == true then
            antheadL()
        end
        if OTHERMENUL[2] == true then
            mbL()
        end
        if OTHERMENUL[3] == true then
            fpL()
        end
        if OTHERMENUL[4] == true then
            uazL()
        end
        if OTHERMENUL[5] == true then
            daciaL()
        end
        if OTHERMENUL[6] == true then
            HOMEL()
        end
    end
    PUBGMLH = -1
end

function bcwhL()
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

function antheadL()
    gg.setVisible(false)
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("16000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Antena Head ✔")
end

function uazL()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("0.647058857;0.30000001192;0.94117647409::9", 16, false, 536870912, 0, -1)
    gg.searchNumber("0.647058857;0.30000001192::5", 16, false, 536870912, 0, -1)
    gg.searchNumber("0.647058857;0.30000001192::5", 16, false, 536870912, 0, -1)
    gg.searchNumber("0.647058857;0.30000001192::5", 16, false, 536870912, 0, -1)
    gg.getResults(50)
    gg.editAll("100.241295", 16)
    gg.clearResults()
    gg.toast("Speed UAZ ✔")
end

function daciaL()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1000;10;4D;4D;50;5;2;0.03::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(280)
    gg.editAll("-0.23", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Speed Dacia ✔")
end

function whfixL()
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
    elseif gg.getResultCount() == 4 then
        gg.getResults(2)
        gg.editAll("2", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("Fixed ✔")
    elseif gg.getResultCount() == 5 then
        gg.getResults(3)
        gg.editAll("2", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("Fixed ✔")
    elseif gg.getResultCount() == 6 then
        gg.getResults(4)
        gg.editAll("2", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("Fixed ✔")
    elseif gg.getResultCount() == 7 then
        gg.getResults(5)
        gg.editAll("2", gg.TYPE_FLOAT)
        gg.clearResults()
        gg.toast("Fixed ✔")
    else
        gg.toast("Nothing.")
        gg.clearResults()
    end
end

function bypassL()
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

function fpL()
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

function LobbyAlertL()
    gg.setVisible(false)
    LAL = gg.alert("\n☣ ＬＯＢＢＹ ☣", "☣ YES ☣", "☣ NO ☣")
    if LAL == 1 then
        bypassL()
        bcwhL()
        mbL()
    end
end

	gg.toast("PUBG MOBILE LITE!")
LobbyAlertL()

    while true do
        if gg.isVisible(true) then
            PUBGMLH = 1
            gg.setVisible(false)
        end
        if PUBGMLH == 1 then
            HOMEL()
        end
    end
