#include <macro.h>

private["_unit","_unitID","_members"];
disableSerialization;

if((lbCurSel 2621) == -1) exitWith {hint localize "STR_GNOTF_SelectKick"};
_unit = call compile format["%1",CONTROL_DATA(2621)];
if(isNull _unit) exitWith {};
if(_unit == player) exitWith {hint localize "STR_GNOTF_KickSelf"};

_unitID = getPlayerUID _unit;
_members = grpPlayer GVAR "gang_members";
if(isNil "_members") exitWith {};
if(!(EQUAL(typeName _members,"ARRAY"))) exitWith {};

SUB(_members,[_unitID]);
grpPlayer SVAR ["gang_members",_members,true];

[[_unit,grpPlayer],"TON_fnc_clientGangKick",_unit,false] call life_fnc_MP;
[[4,grpPlayer],"TON_fnc_updateGang",false,false] call life_fnc_MP;
[] call life_fnc_gangMenu;