private["_barrierP"];
_barrierP = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_barrierP") exitWith {};
if(([true,"barrier",1] call life_fnc_handleInv)) then {
	titleText[localize "STR_NOTF_Barrier","PLAIN"];
 player removeAction life_action_barrierPickup;
 life_action_barrierPickup = nil;
 deleteVehicle _barrierP;
}