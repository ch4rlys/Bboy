#include <macro.h>

private["_unit","_unitID","_members","_action","_index"];
disableSerialization;

if(EQUAL((lbCurSel 2621),-1)) exitWith {hint localize "STR_GNOTF_TransferSelect"};
_unit = call compile format["%1",CONTROL_DATA(2621)];
if(isNull _unit) exitWith {};
if(_unit == player) exitWith {hint localize "STR_GNOTF_TransferSelf"};

_action =
[
	format[localize "STR_GNOTF_TransferMSG",_unit GVAR ["realname",name _unit]],
	localize "STR_Gang_Transfer",
	localize "STR_Global_Yes",
	localize "STR_Global_No"
]
call BIS_fnc_guiMessage;

if(_action) then
{
	_unitID = getPlayerUID _unit;
	if(EQUAL(_unitID,"")) exitWith {hint "Bad UID?"};
	grpPlayer SVAR ["gang_owner",_unitID,true];
	grpPlayer selectLeader _unit;
	[[_unit,grpPlayer],"TON_fnc_clientGangLeader",_unit,false] call life_fnc_MP;
	[[3,grpPlayer],"TON_fnc_updateGang",false,false] call life_fnc_MP;
}
else
{
	hint localize "STR_GNOTF_TransferCancel";
};
[] call life_fnc_gangMenu;