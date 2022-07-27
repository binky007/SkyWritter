return {
	SetValue = function(Colour, Value)
		local H,S,V = Colour:ToHSV()
		return Color3.fromHSV(H,S,Value or V)
	end,
	
	SetHue = function(Colour, Hue)
		local _,S,V = Colour:ToHSV()
		return Color3.fromHSV(Hue or 1,S,V)
	end,
	
	SetSaturation = function(Colour, Saturation)
		local H,_,V = Colour:ToHSV()
		return Color3.fromHSV(H, Saturation or 1, V)
	end,
	
}
