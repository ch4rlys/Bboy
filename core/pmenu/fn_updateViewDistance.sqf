switch (true) do
{
	case ((vehicle player) isKindOf "Man"): {setViewDistance life_vdFoot};
	case ((vehicle player) isKindOf "LandVehicle"): {setViewDistance life_vdCar};
	case ((vehicle player) isKindOf "Air"): {setViewDistance life_vdAir};
};