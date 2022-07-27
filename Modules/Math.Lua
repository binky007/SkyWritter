local StudToMeter = 3.57

local function GetVectorComponents(Vector:Vector3)
		return Vector.X, Vector.Y, Vector.Z
	end

return {
	GetVectorComponents = GetVectorComponents,
	
	RoundVector = function(Vector:Vector3)
		local X,Y,Z = GetVectorComponents(Vector)
		return Vector3.new(math.round(X), math.round(Y), math.round(Z))
	end,
	
	GetTotalMass = function(Parts) -- Array of Parts
		local Mass = 0
		for _,Part in ipairs(Parts) do
			Mass+= Part:GetMass()
		end
		return Mass
	end,
}
