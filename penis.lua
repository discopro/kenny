local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "p00pkidd ui",
	LoadingTitle = "p00pkidd ui loading...",
	LoadingSubtitle = "by bandruf and team p00pkidd",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "Rayfield Interface Suite",
		FileName = "p00p"
	},
	KeySystem = false, -- Set this to true to use their key system
	KeySettings = {
		Title = "Sirius Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/sirius)",
		SaveKey = true,
		Key = "ABCDEF"
	}
})

Rayfield:Notify("p00pgui", "fuck em up", 4483362458) -- Notfication -- Title, Content, Image

local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Tab = Window:CreateTab(GameName, 4483362458)

local client = Window:CreateTab("Local Player", 4483362458)

local other = Window:CreateTab("Other", 4483362458)

local Section = Tab:CreateSection("FE Stuff")

local Button = Tab:CreateButton({
	Name = "FE ChatHax",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/discopro/chathaxxxxx/main/dick.lua'))()
	end,
})

local rainbow = false

if game.PlaceId == 4924922222 then
	local Button = Tab:CreateButton({
		Name = "Rainbow Body",
		Callback = function()
			rainbow = true
		end,
	})
end

if game:GetService("SoundService").RespectFilteringEnabled == false then
	local Button = Tab:CreateButton({
		Name = "FE Destroy Sounds",
		Callback = function()
			local duration = math.huge -- integer only, no decimals



			if game:GetService("SoundService").RespectFilteringEnabled then return end

			local sounds = {}

			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("Sound") and v.Parent.Name ~= "HumanoidRootPart" then
					table.insert(sounds,v)
				end
			end


			local con = workspace.DescendantAdded:Connect(function(v)
				if v:IsA("Sound") and v.Parent.Name ~= "HumanoidRootPart" then
					table.insert(sounds,v)
				end
			end)
			wait(.1)
			local start = math.floor(tick())
			repeat
				for i,v in pairs(sounds) do
					v:Play()
					v.TimePosition = math.random(0,v.TimeLength * 1000)/1000
					task.wait()
				end
			until math.floor(tick()) == start + duration
			con:Disconnect()

			for i,v in pairs(sounds) do
				v:Stop()
			end
		end,
	})
end

if game.PlaceId == 192800 then -- Work At A Pizza Place
	local Button = Tab:CreateButton({
		Name = "Destroy Kitchen",
		Callback = function()
			_G.cookroomfucker = true -- change to false and re execute if you wanna turn it off 
			local lp = game:GetService("Players").LocalPlayer
			local remote
			local ffc = game.FindFirstChild

			do
				local reg = (getreg or debug.getregistry)()
				for i=1,#reg do
					local f = reg[i]
					if type(f)=="table" and rawget(f,"FireServer") and rawget(f,"BindEvents") then
						remote = f
					end
				end
			end

			function moveThing(bmd, location)
				remote:FireServer("UpdateProperty", bmd, "CFrame", location)
				wait()
				remote:FireServer("SquishDough", bmd)
			end

			-- cook room fucker main script

			for i,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do
				v.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
			end
			wait()


			spawn(function()
				while _G.cookroomfucker and wait() do
					spawn(function()
						for i,v in pairs(workspace.AllDough:GetChildren()) do
							moveThing(v, CFrame.new(Random.new():NextNumber(22.6,51.6),Random.new():NextNumber(3.6,14.6),Random.new():NextNumber(55.5,70.5)))
						end
					end)
					spawn(function()
						for i,v in pairs(workspace.AllMountainDew:GetChildren()) do
							moveThing(v, CFrame.new(Random.new():NextNumber(22.6,51.6),Random.new():NextNumber(3.6,14.6),Random.new():NextNumber(55.5,70.5)))
						end
					end)
					spawn(function()
						for i,v in pairs(workspace.BoxingRoom:GetChildren()) do
							moveThing(v, CFrame.new(Random.new():NextNumber(22.6,51.6),Random.new():NextNumber(3.6,14.6),Random.new():NextNumber(55.5,70.5)))
						end
					end)
					spawn(function()
						for i,v in pairs(workspace.AllBox:GetChildren()) do
							moveThing(v, CFrame.new(Random.new():NextNumber(22.6,51.6),Random.new():NextNumber(3.6,14.6),Random.new():NextNumber(55.5,70.5)))
						end
					end)
					spawn(function()
						for i,v in pairs(workspace.AllSupplyBoxes:GetChildren()) do
							moveThing(v, CFrame.new(Random.new():NextNumber(22.6,51.6),Random.new():NextNumber(3.6,14.6),Random.new():NextNumber(55.5,70.5)))
						end
					end)
				end
			end)

			spawn(function()
				while _G.cookroomfucker and wait() do
					for i,v in pairs(game:GetService("Workspace").Ovens:GetChildren()) do
						v.Door.ClickDetector.Detector:FireServer()
						wait(.15)
					end
				end
			end)
		end,
	})

end


local Slider = client:CreateSlider({
	Name = "WalkSpeed",
	Range = {16, 100},
	Increment = 1,
	Suffix = "WS",
	CurrentValue = 16,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end,
})

local Slider = client:CreateSlider({
	Name = "JumpPower",
	Range = {50, 200},
	Increment = 1,
	Suffix = "Power",
	CurrentValue = 50,
	Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end,
})


local Button = other:CreateButton({
	Name = "Destroy UI",
	Callback = function()
		Rayfield:Destroy()
	end,
})

local Button = other:CreateButton({
	Name = "Remote Spy",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/bCghX33W", true))()
	end,
})

local Button = other:CreateButton({
	Name = "Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
	end,
})

local Button = other:CreateButton({
	Name = "CMD X",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
	end,
})

local Button = other:CreateButton({
	Name = "Aimbot V2",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Raw%20Main.lua"))()
	end,
})


while wait(0.9) do
	if rainbow == true then
		print("HELLO")
		local A_1 = "skintone"
		local color = BrickColor.random()
		local A_2 = color.Name
		local Event = game:GetService("ReplicatedStorage").JJ3["2NN2Updat2NN2eAvata2NN2r"]
		Event:FireServer(A_1, A_2)
		local A_3 = "PickingRPNameColor"
		local A_4 = Color3.new(math.Random(1,50),math.Random(1,50),math.Random(1,50))
		local Event2 = game:GetService("ReplicatedStorage").JJ3["2NN2RPNam2NN2eColo2NN2r"]
		Event:FireServer(A_3, A_4)
	end
end

-- Extras

-- getgenv().SecureMode = true -- Only Set To True If Games Are Detecting/Crashing The UI

-- Rayfield:Destroy() -- Destroys UI

-- Rayfield:LoadConfiguration() -- Enables Configuration Saving

-- Section:Set("Section Example") -- Use To Update Section Text

-- Button:Set("Button Example") -- Use To Update Button Text

-- Toggle:Set(false) -- Use To Update Toggle

-- Slider:Set(10) -- Use To Update Slider Value

-- Label:Set("Label Example") -- Use To Update Label Text

-- Paragraph:Set({Title = "Paragraph Example", Content = "Paragraph Example"}) -- Use To Update Paragraph Text

-- Keybind:Set("RightCtrl") -- Keybind (string) -- Use To Update Keybind

-- Dropdown:Set("Option 2") -- The new option value -- Use To Update/Set New Dropdowns
