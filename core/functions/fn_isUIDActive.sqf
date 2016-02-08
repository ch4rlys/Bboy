#include <macro.h>

private["_uid","_ret"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
if(EQUAL(_uid,"")) exitWith {false};
_ret = false;
{
	if(isPlayer _x && {EQUAL(getPlayerUID _x,_uid)}) exitWith {_ret = true;};
}
foreach playableUnits;

_ret;