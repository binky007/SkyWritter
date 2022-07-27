local ChatService = game:GetService("Chat")

return {
	DarkMode = function()
		ChatService:SetBubbleChatSettings({
			BackgroundColor3 = Color3.fromHSV(0, 0, 0.192157),
			TextColor3 = Color3.fromHSV(0, 0, 1)
		})
	end,
	
	LightMode = function()
		ChatService:SetBubbleChatSettings({
			BackgroundColor3 = Color3.fromHSV(0, 0, 1),
			TextColor3 = Color3.fromHSV(0, 0, 0)
		})
	end,
	
	CanChat = function(Player)
		return ChatService:CanUserChatAsync(Player.UserId)
	end,
}
