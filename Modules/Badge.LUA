local BadgeService = game:GetService("BadgeService")

return {
	Award = function(Player, Id)
		return BadgeService:AwardBadge(Player, Id)
	end,
	OwnsBadge = function(Player:Player, Id)
		return BadgeService:UserHasBadgeAsync(Player.UserId, Id)
	end,
}
