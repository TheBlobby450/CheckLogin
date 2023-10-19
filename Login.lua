_G.MyKey = _G.GG
local keys = {
    {key = "GGkey", hwid = "123456789"},
    {key = "GG", hwid = ""},
    -- เพิ่ม key และ hwid เพิ่มเติมตรงนี้
}
local CurrectHwid = gethwid()
-- ฟังก์ชันตรวจสอบ key และ hwid
function checkKeyAndHWID(key, hwid)
    for _, entry in ipairs(keys) do
        if entry.key == key then
            if entry.hwid == hwid then
                print("valid")
                return
            else
                print("invalid")
                return
            end
        end
    end
    print("invalid")
end
-- เรียกใช้ฟังก์ชัน
checkKeyAndHWID(_G.MyKey, CurrectHwid)