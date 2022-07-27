return {
	ChangeSpeed = function(Character, Speed)
		local Humanoid = Character:FindFirstChildOfClass("Humanoid")
		Humanoid.Walkspeed = Speed
	end,
	
	ChangeJumpHeight = function(Character, Power)
		local Humanoid = Character:FindFirstChildOfClass("Humanoid")
		Humanoid.JumpPower = Power
	end,
	
	Kill = function(Character)
		local Humanoid = Character:FindFirstChildOfClass("Humanoid")
		Humanoid.Health = 0
	end,
	
	ChangeHealth = function(Character,Amount) -- can be negative to heal
		local Humanoid = Character:FindFirstChildOfClass("Humanoid")
		Humanoid:TakeDamage(Amount)
	end,
	
	Teleport = function(Character, Position)
		Character:SetPrimaryPartCFrame(CFrame.new(Position))
	end,
}
