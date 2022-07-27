local Datatypes = {
	["number"] = "NumberValue",
	["string"] = "StringValue",
	["boolean"] = "BoolValue",
}
local Stats = {}

return {
	NewLeaderStat = function(Player,Name,Value)
		local DataValue = Instance.new(Datatypes[type(Value)])
		DataValue.Name = Name
		if Value then
			DataValue.Value = Value
		end
		DataValue.Parent = Player.leaderstats
	end,
	
	ChangeLeaderStat = function(Player, Name, Value)
		Player.leaderstats[Name].Value = Value
	end,
	
	ChangeStat = function(Player,Name, Value) -- Use this to add a stat
		Stats[Player][Name] = Value
	end,
	
	GetStat = function(Player,Name)
		return Stats[Player][Name]
	end,
	
	PurgeStats = function(Player)
		Stats[Player] = nil
	end,
}
