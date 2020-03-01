local function VehicleModel()
	
	dir = getDir(MOD_ID);
	
	VehiclesModel = {
		"CAT",
	};
	
	for i,v in pairs(VehiclesModel) do
		loadVehicleModel("Vehicles_" .. v, dir .. "/media/models/" .. "Vehicles_" .. v .. ".txt", dir .. "/media/textures/Vehicles/" .. v .. "/" .. "Vehicles_" .. v .. "_Shell.png");
	end
	
	WheelsModel = {
		"CATR",
		"CATF",
	};
	
	for i,v in pairs(WheelsModel) do
		loadStaticZomboidModel("Wheel_" .. v, dir .. "/media/models/" .. "Wheel_" .. v .. ".txt", dir .. "/media/textures/Vehicles/" .. "Wheel_" .. v .. ".png");
	end
	
end

Events.OnInitWorld.Add(VehicleModel);