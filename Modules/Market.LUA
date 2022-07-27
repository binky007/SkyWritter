local MarketplaceService=  game:GetService("MarketplaceService")


return {
	PromptPass = function(Player, Id)
		MarketplaceService:PromptProductPurchase(Player,Id)
		MarketplaceService.PromptGamePassPurchaseFinished:Connect(function(Player, newId, Success)
			return Id == newId and Success
		end)
	end,
	
	PromptPremium = function(Player)
		MarketplaceService:PromptProductPurchase(Player)
	end,
	
	OwnsPass = function(Player,Id)
		return pcall(function()
			return MarketplaceService:UserOwnsGamePassAsync(Player.UserId, Id)
		end)
	end,
}
