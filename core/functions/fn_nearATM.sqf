#include <macro.h>

private ["_objs","_return"];
_objs = nearestObjects [player, [], 3];
_return = false;
{
	if(["atm_",str(_x)] call BIS_fnc_inString) exitWith {_return = true;};
}
foreach _objs;

_return;