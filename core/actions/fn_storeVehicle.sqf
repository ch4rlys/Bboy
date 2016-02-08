private["_nearVehicles","_vehicle"];
if(vehicle player != player) then
{
	_vehicle = vehicle player;
}
else
{
	_nearVehicles = nearestObjects[getPos (_this select 0),["Car","Air","Ship","Tank"],30];
	if(count _nearVehicles > 0) then
	{
		{
			if(!isNil "_vehicle") exitWith {};
			_vehData = _x getVariable["vehicle_info_owners",[]];
			if(count _vehData > 0) then
			{
				_vehOwner = (_vehData select 0) select 0;
				if((getPlayerUID player) == _vehOwner) exitWith
				{
					_vehicle = _x;
				};
			};
		}
		foreach _nearVehicles;
	};
};
if(isNil "_vehicle") exitWith {hint localize "STR_Garage_NoNPC"};
if(isNull _vehicle) exitWith {};
[[_vehicle,false,(_this select 1)],"TON_fnc_vehicleStore",false,false] call life_fnc_MP;
hint localize "STR_Garage_Store_Server";
life_garage_store = true;