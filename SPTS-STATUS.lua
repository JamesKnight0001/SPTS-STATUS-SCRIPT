local Rayfield = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Rayfield/main/source')))()

-- Updater
loadstring(game:HttpGet(('https://raw.githubusercontent.com/JamesKnight0001/SPTS-STATUS-SCRIPT/main/UI_LOOK.lua')))
-- remove Updater if u want

local Window = Rayfield:CreateWindow({
Name = "SPTS Webhook",
LoadingTitle = "Loading",
LoadingSubtitle = "by Sirius",
KeySystem = false,
KeySettings = {
	Title = "SPTS-Webhook",
	Subtitle = "Key System",
	Note = "Join the discord (discord.gg/sirius)",
	Key = "ABCDEF"
}
})

local Tab0 = Window:CreateTab("Webhook")

local Tab1 = Window:CreateTab("Your-Info")

local Tab2 = Window:CreateTab("Hentai 18+")

local test = Tab2:CreateLabel("I will add this after they add image support(i hope) sussy bakas")

local images = {} --updater goes here(NOT DONE DONT PUT YET)

local seconds = 0
local minutes = 0
local hours = 0
local days = 0

local delay = 0
local Webhook = "" -- Put ur webhook here if u want to keep em safe
local toggle = false -- on/off(to keep em safe)
local inline = false
--
local Abr = function (n)
    local n = tostring(math.floor(n))
    return string.sub(n, 1, ((#n - 1) % 3) + 1) .. ({"", "K", "M", "B", "T", "QD", "QN", "SX", "SP", "OC", "NO", "DC", "UD", "DD", "TD", "QAD", "QID", "SXD", "SPD", "OCD", "NOD", "VG", "UVG"})[math.floor((#n - 1) / 3) + 1]
end

local ST = game.Players.LocalPlayer.leaderstats.Status.Value
local FS = game.Players.LocalPlayer.PrivateStats.FistStrength.Value
local BT = game.Players.LocalPlayer.PrivateStats.BodyToughness.Value
local PP = game.Players.LocalPlayer.PrivateStats.PsychicPower.Value
local SP = game.Players.LocalPlayer.PrivateStats.MovementSpeed.Value
local JF = game.Players.LocalPlayer.PrivateStats.JumpForce.Value
local Username = game.Players.LocalPlayer.name

local one = Tab1:CreateLabel("Username > "..Username)
local two = Tab1:CreateLabel("Status > "..ST)
local three = Tab1:CreateLabel("Script-running-for > "..seconds.."s / "..minutes.."m / "..hours.."h / "..days.."d")
local four = Tab1:CreateLabel("Strength > "..Abr(FS).." / "..FS)
local five = Tab1:CreateLabel("BodyToughness > "..Abr(BT).." / "..BT)
local six = Tab1:CreateLabel("PsychicPower > "..Abr(PP).." / "..PP)
local seven = Tab1:CreateLabel("SpeedForce > "..Abr(SP).." / "..SP)
local eight = Tab1:CreateLabel("JumpForce > "..Abr(JF).." / "..JF)

local HttpService = game:GetService("HttpService")
HttpService = game:GetService("HttpService")

local Input = Tab0:CreateInput({
	Name = "Webhook_URL",
	PlaceholderText = "Put Webhook",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
	    Webhook = Text
	end,
})

local CWH_URL = Tab0:CreateLabel("Current Webhook_URL > "..Webhook)

local Slider = Tab0:CreateSlider({
	Name = "Webhook's Delay",
	Range = {1, 120},
	Increment = 1,
	Suffix = "Delay",
	CurrentValue = 4,
	Callback = function(Value)
	    delay = Value
    end,
})

local Toggle = Tab0:CreateToggle({
	Name = "ON/OFF",
	CurrentValue = toggle,
	Callback = function(Value)
	    toggle = Value
    end,
})

local Toggle = Tab0:CreateToggle({
	Name = "Inline - Off is recomended",
	CurrentValue = inline,
	Callback = function(Value)
        inline = Value
    end,
})


while true do wait(1) seconds = seconds + 1
CWH_URL:Set("Current Webhook_URL > "..Webhook)
one:Set("Username > "..Username)
two:Set("Status > "..ST)
three:Set("Script-running-for > "..seconds.."s / "..minutes.."m / "..hours.."h / "..days.."d")
four:Set("Strength > "..Abr(FS).." / "..FS)
five:Set("BodyToughness > "..Abr(BT).." / "..BT)
six:Set("PsychicPower > "..Abr(PP).." / "..PP)
seven:Set("SpeedForce > "..Abr(SP).." / "..SP)
eight:Set("JumpForce > "..Abr(JF).." / "..JF)

if toggle == true then
    
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
            ["title"] = "**SPTS STATS**v2.01",
            ["description"] = "",
            ["type"] = "rich",
            ["color"] = tonumber(0xffffff),
            ["fields"] = {
                {
                    ["name"] = "Username:",
                    ["value"] = "||"..Username.."||",
                    ["inline"] = inline,
                },
                {
                    ["name"] = "Status:",
                    ["value"] = ST,
                    ["inline"] = inline,
                },
                {
                    ["name"] = "Script-running-for:",
                    ["value"] = seconds.."s / "..minutes.."m / "..hours.."h / "..days.."d",
                    ["inline"] = inline,
                },
                {
                    ["name"] = "Strength:",
                    ["value"] = Abr(FS).." / "..FS,
                    ["inline"] = inline,
                },
                {
                    ["name"] = "BodyToughness:",
                    ["value"] = Abr(BT).." / "..BT,
                    ["inline"] = inline,
                },
                {
                    ["name"] = "PsychicPower:",
                    ["value"] = Abr(PP).." / "..PP,
                    ["inline"] = inline,
                },
                {
                    ["name"] = "SpeedForce:",
                    ["value"] = Abr(SP).." / "..SP,
                    ["inline"] = inline,
                },
                {
                    ["name"] = "JumpForce:",
                    ["value"] = Abr(JF).." / "..JF,
                    ["inline"] = inline,
                },
            },
        }}
    })
}    
)
end
end
--- James Was here :)

