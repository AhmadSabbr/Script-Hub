local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local placeId = game.PlaceId
local url = scripts[placeId]

local scripts = {
    [75992362647444] = "", -- Tap Simulator
    [] = ""
}

if not url then return end

local source = game:HttpGet(url)
local run = loadstring(source)
if run then
    run()
end
