#include <macro.h>
private["_unit","_corpse"];
_unit = SEL(_this,0);
_corpse = SEL(_this,1);
life_corpse = _corpse;
private["_containers"];
_containers = nearestObjects[getPosATL _corpse,["WeaponHolderSimulated"],5];
{deleteVehicle _x;} foreach _containers;
_unit SVAR ["restrained",FALSE,TRUE];
_unit SVAR ["Escorting",FALSE,TRUE];
_unit SVAR ["transporting",FALSE,TRUE];
_unit SVAR ["steam64id",steamid,true];
_unit SVAR ["realname",profileName,true];
_unit addRating 1e12;
player playMoveNow "amovppnemstpsraswrfldnon";
[] call life_fnc_setupActions;
[[_unit,life_sidechat,playerSide],"TON_fnc_managesc",false,false] call life_fnc_MP;
if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),0)) then {player enableFatigue false;};