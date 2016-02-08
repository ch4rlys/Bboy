#include <macro.h>

private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {};
if(!(typeOf _vehicle in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F"])) exitWith {};

_trueorfalse = _vehicle GVAR ["lights",FALSE];

if(_trueorfalse) then
{
	_vehicle SVAR ["lights",FALSE,TRUE];
}
else
{
	_vehicle SVAR ["lights",TRUE,TRUE];
	[[_vehicle,0.22],"life_fnc_copLights",true,false] call life_fnc_MP;
};