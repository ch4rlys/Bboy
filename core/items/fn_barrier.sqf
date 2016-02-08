closeDialog 0;
private["_position","_barrier"];
_barrier = "RoadBarrier_F" createVehicle [0,0,0];
_barrier attachTo[player,[0,2.5,0.6]];
_barrier setDir 90;
_barrier setVariable["item","barrierDeployed",true];

life_action_barrierDeploy = player addAction
[
	localize "STR_ISTR_Barrier",
	{
		if(!isNull life_barrier) then
		{
			detach life_barrier;
			life_barrier = ObjNull;
		};
		player removeAction life_action_barrierDeploy;
		life_action_barrierDeploy = nil;
	},"",999,false,false,"",'!isNull life_barrier'
];

life_barrier = _barrier;
waitUntil { isNull life_barrier };
if(!isNil "life_action_barrierDeploy") then { player removeAction life_action_barrierDeploy; };
if(isNull _barrier) exitWith { life_barrier = ObjNull; };
_barrier setPos [(getPos _barrier select 0),(getPos _barrier select 1),0];
_barrier allowDamage true;
_barrier enableSimulation true;

life_action_barrierPickup = player addAction
[
	localize "STR_ISTR_Barrier_Pack",
	life_fnc_packupBarrier,"",0,false,false,"",
	'
		_barrierP = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
		!isNil "_barrierP" && !isNil {(_barrierP getVariable "item")}
	'
];
[[_barrier],"TON_fnc_barrier",false,false] call life_fnc_MP;