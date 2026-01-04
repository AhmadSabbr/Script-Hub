local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local placeId = game.PlaceId

local scripts = {
    [75992362647444] = "https://raw.githubusercontent.com/AhmadSabbr/Games/refs/heads/main/TapSimulator.lua"
}

local url = scripts[placeId]
if not url then return end

local source = game:HttpGet(url)
local func = loadstring(source)
if func then
    func()
end
