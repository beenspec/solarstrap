

local services = require(script:WaitForChild("modules"):WaitForChild("services"))
local CoreGui = services.CoreGui


if CoreGui:FindFirstChild("SolarStrapsLoading") then CoreGui.SolarStrapsLoading:Destroy() end
if CoreGui:FindFirstChild("SolarStrapsMain") then CoreGui.SolarStrapsMain:Destroy() end

local createLoadingScreen = require(script:WaitForChild("modules"):WaitForChild("loading"))
local spawnMainGUI = require(script:WaitForChild("modules"):WaitForChild("main_gui"))
local createFPSPingDisplay = require(script:WaitForChild("modules"):WaitForChild("fps_ping"))


createLoadingScreen(function()
    spawnMainGUI()
    createFPSPingDisplay()
end)
