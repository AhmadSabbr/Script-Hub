local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local placeId = game.PlaceId

local scripts = {
    [3101667897] = "https://api.luarmor.net/files/v4/loaders/8ef3f808503edde6a153f8d96b3399de.lua", -- Legends Of Speed
    [3623096087] = "https://api.luarmor.net/files/v4/loaders/0af0f34c0584457a069b941a757083a5.lua" -- Muscle Legends
}

local url = scripts[placeId]
if not url then return end

local source = game:HttpGet(url)
local func = loadstring(source)
if func then
    func()
end
