local CurrectHwid = gethwid()
--รับHWID ปัจจุบัน
local keys = {
    {key = "25382433Doraemonhub", hwid = CurrectHwid}
    {key = "", hwid = ""},
    {key = "", hwid = ""},
    -- เพิ่ม key และ hwid เพิ่มเติมตรงนี้
}
-- ฟังก์ชันตรวจสอบ key และ hwid
function checkKeyAndHWID(key, hwid)
    for _, entry in ipairs(keys) do
        if entry.key == key then
            if entry.hwid == hwid then
                wait(2)
                loadstring(game:HttpGet("https://raw.githubusercontent.com/TheBlobby450/CheckLogin/main/NaheeV1.0.lua"))()
                return
            else
                game.PLayers.LocalPlayer:kick("Contect Admin")
                return
            end
        end
    end
    game.PLayers.LocalPlayer:kick("เช็ค Key ดีๆ หรือ ไปซื้อ Key ก่อนบักหำน้อย!!!")
end
-- เรียกใช้ฟังก์ชัน
checkKeyAndHWID(_G.MyKey, CurrectHwid)
