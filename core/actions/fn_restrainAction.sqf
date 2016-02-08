private["_unit"];

_unit = cursorTarget;

if(isNull _unit) exitWith {};
if((player distance _unit > 3)) exitWith {};
if((_unit getVariable "restrained")) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};

player say3D "cuff";
life_inv_handcuffs=life_inv_handcuffs-1;

_unit setVariable["restrained",true,true];

[[player], "life_fnc_restrain", _unit, false] call life_fnc_MP;
[[0,"STR_NOTF_Restrained",true,[_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",west,false] call life_fnc_MP;