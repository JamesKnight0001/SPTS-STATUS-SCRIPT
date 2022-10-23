local Abr = function (n)
    local n = tostring(math.floor(n))
    return string.sub(n, 1, ((#n - 1) % 3) + 1) .. ({"", "K", "M", "B", "T", "QD", "QN", "SX", "SP", "OC", "NO", "DC", "UD", "DD", "TD", "QAD", "QID", "SXD", "SPD", "OCD", "NOD", "VG", "UVG"})[math.floor((#n - 1) / 3) + 1]
end


local HttpService = game:GetService("HttpService")
HttpService = game:GetService("HttpService")

--Webhook_URL = ""
-- Settings --

local InLinE = false

--- counter ---
local seconds = 1
local minutes = 0
local hours = 0
local days = 0
---- start ----

while true do seconds = seconds + 1

local ST = game.Players.LocalPlayer.leaderstats.Status.Value
local FS = game.Players.LocalPlayer.PrivateStats.FistStrength.Value
local BT = game.Players.LocalPlayer.PrivateStats.BodyToughness.Value
local PP = game.Players.LocalPlayer.PrivateStats.PsychicPower.Value
local SP = game.Players.LocalPlayer.PrivateStats.MovementSpeed.Value
local JF = game.Players.LocalPlayer.PrivateStats.JumpForce.Value
local Username = game.Players.LocalPlayer.name
 
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

wait(1)

local responce = syn.request(
{
    Url = Webhook_URL,
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
                    ["value"] = Username,
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
                    ["value"] = Abr(FS),
                    ["inline"] = InLinE,
                },
                {
                    ["name"] = "BodyToughness:",
                    ["value"] = Abr(BT),
                    ["inline"] = InLinE,
                },
                {
                    ["name"] = "PsychicPower:",
                    ["value"] = Abr(PP),
                    ["inline"] = InLinE,
                },
                {
                    ["name"] = "SpeedForce:",
                    ["value"] = Abr(SP),
                    ["inline"] = InLinE,
                },
                {
                    ["name"] = "JumpForce:",
                    ["value"] = Abr(JF),
                    ["inline"] = InLinE,
                },
            },
        }}
    })
}    
)
end
-- Thanks to Straz#3703 for helping me
--- James Was here :)