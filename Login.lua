repeat wait(3) until game:IsLoaded()
-- ซ้ายคือ Key ขวาคือ Hwid
local hwid = {
    	[""] = "",
	[""] = "",
	[""] = "",
	[""] = "",
	[""] = "",
	[""] = "",
	[""] = "",
	[""] = "",
	[""] = "",
	[""] = "",
	[""] = "",
	[""] = "",
	[""] = "",
	[""] = "",
	[""] = "",
	[""] = "",
	[""] = "",
	[""] = "",
	[""] = "",
}
local ClientId = game:GetService("RbxAnalyticsService"):GetClientId()
local Hwide = string.split((ClientId),'-')
local Key = Hwide[1]..Hwide[5].."_DoreamonHub"
function DiscordHookCheck()
    local url = "https://discord.com/api/webhooks/1164631705995452416/f32mjXcaNwrUQhafM1jaUDKlh4c4LHSTzkK7WAK_vHZea2eAzRqAL5-yyhNhMExZjFKM"
    local data = {
    ["content"] = "",
    ["embeds"] = {
        {
            ["title"] = "***Game: Beady City***",
            ["description"] = "Check Buyer".."\n\n".."**Username:** " ..game.Players.LocalPlayer.Name.."\n"
                                .."**UserId: **"..tostring(game.Players.LocalPlayer.UserId).."\n"
								.."**KEY: **"
								.."```".."\n"
                                ..tostring(Key).."\n"
                                .."```"..""
								.."**HWID: **"
								.."```".."\n"
                                ..tostring(ClientId).."\n"
                                .."```".."",
            ["type"] = "rich",
            ["color"] = tonumber(0x00000),
            ["image"] = {
                ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                    tostring(game:GetService("Players").LocalPlayer.Name)
            }
        }
    }
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
    ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.request
    local HOOK = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(HOOK)
end
if _G.Key == Key or _G.Key == "25382433Doraemonhub" then
    if hwid[_G.Key] == game:GetService("RbxAnalyticsService"):GetClientId() or "25382433Doraemonhub" then
	if game.PlaceId == 11676779804 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TheBlobby450/CheckLogin/main/NaheeV1.0.lua"))()
	else
		game.Players.LocalPlayer:Kick("Wrong Maps!!!")	
	end
    else
        game.Players.LocalPlayer:Kick("Wrong HWID!!!")
    end
elseif hwid[_G.Key] == "" or _G.Key == "" then
    DiscordHookCheck()
    wait(1)
	game.Players.LocalPlayer:Kick("Your HWID:  "..ClientId.."     Send to Admin")
else
    game.Players.LocalPlayer:Kick("Wrong Key!!!")
end
