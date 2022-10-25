local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/JamesKnight0001/SPTS-STATUS-SCRIPT/main/NewUI-Lib.lua')))() --https://raw.githubusercontent.com/shlexware/Orion/main/source
local Window = OrionLib:MakeWindow({Name = "SPTS - Webhook", HidePremium = false})

local Tab0 = Window:MakeTab({
	Name = "Webhook",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab1 = Window:MakeTab({
	Name = "Your-Info",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local seconds = 0
local minutes = 0
local hours = 0
local days = 0

local delay = 0
local Webhook = ""
local toggle = false
local inline = false
local hidden = false
--
local ST = game.Players.LocalPlayer.leaderstats.Status.Value
local FS = game.Players.LocalPlayer.PrivateStats.FistStrength.Value
local BT = game.Players.LocalPlayer.PrivateStats.BodyToughness.Value
local PP = game.Players.LocalPlayer.PrivateStats.PsychicPower.Value
local SP = game.Players.LocalPlayer.PrivateStats.MovementSpeed.Value
local JF = game.Players.LocalPlayer.PrivateStats.JumpForce.Value
local Username = game.Players.LocalPlayer.name


local Abr = function (n)
    local n = tostring(math.floor(n))
    return string.sub(n, 1, ((#n - 1) % 3) + 1) .. ({"", "K", "M", "B", "T", "QD", "QN", "SX", "SP", "OC", "NO", "DC", "UD", "DD", "TD", "QAD", "QID", "SXD", "SPD", "OCD", "NOD", "VG", "UVG"})[math.floor((#n - 1) / 3) + 1]
end

local HttpService = game:GetService("HttpService")
HttpService = game:GetService("HttpService")

Tab0:AddTextbox({
	Name = "Webhook_URL",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		Webhook = Value
	end	  
})

Tab0:AddSlider({
	Name = "Delay",
	Min = 1,
	Max = 60,
	Default = 4,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Webhook's Chat-bot Delay",
	Callback = function(Value)
		delay = Value
	end    
})

Tab0:AddToggle({
	Name = "Turn On/Off webhook",
	Flag = "Turn On/Off webhook",
	Default = toggle,
	Callback = function(Value)
		toggle = Value
	end    
})

Tab0:AddToggle({
	Name = "Inline - Off is recomended",
	Default = inline,
	Callback = function(Value)
		inline = Value
	end    
})

---

---
Tab0:AddParagraph("Credits: James ","Credits")
Tab1:AddParagraph("adding this soon im fucking lazy","soon")
Tab1:AddParagraph("also i dont know how to add save system i only fucking do python","")
---
while true do wait(1)
if toggle == true then seconds = seconds + 1
   
    
if seconds >= 60 then
    print(seconds)
    seconds = 0
    minutes = minutes + 1
end

if minutes >= 60 then
    print(minutes)
    minutes = 0 
    hours = hours + 1
end

if hours >= 60 then
    print(hours)
    hours = 0
    days = days + 1
end
wait(delay)

local responce = syn.request(
{
    Url = Webhook,
    Method = "POST",
    Headers = {
        ['Content-Type'] = 'application/json'
    },
    Body = HttpService:JSONEncode({
        ["username"] = "SPTS-Bot",
        ["avatarURL"] = "https://tse4.mm.bing.net/th?id=OIP.UjM7nFN3SlwPrUIP3tCJOgHaEK&pid=Api&P=0",
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "**SPTS STATS**v2",
            ["description"] = "",
            ["type"] = "rich",
            ["color"] = tonumber(0xffffff),
            ["fields"] = {
                {
                    ["name"] = "Username:",
                    ["value"] = "||"..Username.."||",
                    ["inline"] = InLinE,
                },
                {
                    ["name"] = "Status:",
                    ["value"] = ST,
                    ["inline"] = InLinE,
                },
                {
                    ["name"] = "Script-running-for:",
                    ["value"] = seconds.."s / "..minutes.."m / "..hours.."h / "..days.."d",
                    ["inline"] = InLinE,
                },
                {
                    ["name"] = "Strength:",
                    ["value"] = Abr(FS).." / "..FS,
                    ["inline"] = InLinE,
                },
                {
                    ["name"] = "BodyToughness:",
                    ["value"] = Abr(BT).." / "..BT,
                    ["inline"] = InLinE,
                },
                {
                    ["name"] = "PsychicPower:",
                    ["value"] = Abr(PP).." / "..PP,
                    ["inline"] = InLinE,
                },
                {
                    ["name"] = "SpeedForce:",
                    ["value"] = Abr(SP).." / "..SP,
                    ["inline"] = InLinE,
                },
                {
                    ["name"] = "JumpForce:",
                    ["value"] = Abr(JF).." / "..JF,
                    ["inline"] = InLinE,
                },
            },
        }}
    })
}    
)
end
end
--- James Was here :)


OrionLib:Init()
