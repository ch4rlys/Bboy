private["_unit","_veh","_test"];
_unit = cursorTarget;
if((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith { hint "Vous ne pouvez pas poser la bombe à cet endroit précis." };
if(player distance _unit > 10) exitWith { hint localize "STR_Process_Stay"; };
if(!([false,"blastingcharge2",1] call life_fnc_handleInv)) exitWith {};
closeDialog 0;
life_action_inUse = true;
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 1.5;
waitUntil { animationState player != "ainvpknlmstpsnonwnondnon_medic_1" };
life_action_inUse = false;
if(player distance _unit > 10) exitWith { hint localize "STR_Process_Stay"; };
titleText["La bombe Start est posée.","PLAIN"];

[_unit] spawn
{
	_veh = _this select 0;
	waitUntil { (speed _veh) > 0.6 };
	_test = "Bo_Mk82" createVehicle [0,0,9999];
	_test setPos (getPos _veh);
	_test setVelocity [100,0,0];
//	[[_veh],"life_fnc_carAlarm",true,false] call life_fnc_MP;
	systemChat "Votre bombe Start vient d'exploser.";
};