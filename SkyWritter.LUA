local HttpService = game:GetService("HttpService")
game.Players.PlayerAdded:Connect(function(Player)
	local LeaderStats = Instance.new("Folder")
	LeaderStats.Parent = Player
	LeaderStats.Name = "leaderstats"
end)
local SkyWritter = {}
SkyWritter.Version = HttpService:GetAsync("https://pastebin.com/raw/hUhNZ9Ux")
for _, Module in ipairs(script:GetChildren()) do
	SkyWritter[Module.Name] = require(Module)
end
return SkyWritter
