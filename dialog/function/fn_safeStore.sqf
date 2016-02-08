#include <macro.h>

private["_ctrl","_num"];
disableSerialization;
_ctrl = CONTROL_DATA(3503);
_num = ctrlText 3506;

if(!([_num] call TON_fnc_isnumber)) exitWith {hint localize "STR_MISC_WrongNumFormat";};
_num = parseNumber(_num);
if(_num < 1) exitWith {hint localize "STR_Cop_VaultUnder1";};
//if(!(EQUAL(_ctrl,"goldbar"))) exitWith {hint localize "STR_Cop_OnlyGold"};
if(_num > life_inv_dollars_100K) exitWith {hint format[localize "STR_Cop_NotEnoughGold",_num];};

if(!([false,_ctrl,_num] call life_fnc_handleInv)) exitWith {hint localize "STR_Cop_CantRemove";};
_safeInfo = life_safeObj GVAR["safe",0];
life_safeObj GVAR ["safe",_safeInfo + _num,true];

[life_safeObj] call life_fnc_safeInventory;