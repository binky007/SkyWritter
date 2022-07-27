return {
	ChangeTeam = function(Player, Team)
		Player.Team = Team
	end,
	GetPlayersInTeam = function(Team)
		local InTeam = {}
		for _, Player in ipairs(game.Players:GetPlayers()) do
			if Player.Team == Team then table.insert(InTeam, Player) end
		end
		return InTeam
	end,
	GetTeams = function()
		return game.Teams:GetChildren()
	end,
}
