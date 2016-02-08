private["_unit","_veh","_test"];
_unit = cursorTarget;
if((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith { hint "Vous ne pouvez pas poser la bombe à cet endroit précis." };
if(player distance _unit > 10) exitWith { hint localize "STR_Process_Stay"; };
if(!([false,"blastingcharge4",1] call life_fnc_handleInv)) exitWith {};
closeDialog 0;
life_action_inUse = true;
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 1.5;
waitUntil { animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
life_action_inUse = false;
if(player distance _unit > 10) exitWith { hint localize "STR_Process_Stay"; };
titleText["La bombe Side-Pass est posée. Elle s'activera dans 10 secondes, éloignez-vous à plus de 8 mètres !","PLAIN"];
sleep 9;
[_unit] spawn
{
	_veh = _this select 0;
	systemChat "La bombe Side-Pass est maintenant activée.";
	scopeName "main";
	while{true} do
	{
		sleep 1;
		{
			if(_x distance _veh < 8) then
			{
				_test = "Bo_Mk82" createVehicle [0,0,9999];
				_test setPos (getPos _veh);
				_test setVelocity [100,0,0];
			//	[[_veh],"life_fnc_carAlarm",true,false] call life_fnc_MP;
				systemChat "Votre bombe Side-Pass vient d'exploser.";
				breakOut "main";
			};
		} foreach playableUnits;
	};
};