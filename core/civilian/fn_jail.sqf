#include <macro.h>

private["_bad","_unit","_time"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
hint format["%1", _unit];

if(isNull _unit) exitWith {};
if(_unit != player) exitWith {};
if(life_is_arrested) exitWith {};

_bad = [_this,1,false,[false]] call BIS_fnc_param;
_time = [_this,2,15,[0]] call BIS_fnc_param;

player SVAR ["restrained",false,true];
player SVAR ["Escorting",false,true];
player SVAR ["transporting",false,true];

titleText[localize "STR_Jail_Warn","PLAIN"];
hint localize "STR_Jail_LicenseNOTF";
player setPos (getMarkerPos "jail_marker");

if(_bad) then
{
	waitUntil {alive player};
	sleep 1;
};
if(player distance (getMarkerPos "jail_marker") > 35) then
{
	player setPos (getMarkerPos "jail_marker");
};

[1] call life_fnc_removeLicenses;

if(life_inv_antiquity2 > 0) then {[false,"antiquity2",life_inv_antiquity2] call life_fnc_handleInv;};
if(life_inv_heroinu > 0) then {[false,"heroinu",life_inv_heroinu] call life_fnc_handleInv;};
if(life_inv_heroinp > 0) then {[false,"heroinp",life_inv_heroinp] call life_fnc_handleInv;};
if(life_inv_heroinp2 > 0) then {[false,"heroinp2",life_inv_heroinp2] call life_fnc_handleInv;};
if(life_inv_opium > 0) then {[false,"opium",life_inv_opium] call life_fnc_handleInv;};
if(life_inv_coke > 0) then {[false,"cocaine",life_inv_coke] call life_fnc_handleInv;};
if(life_inv_cokep > 0) then {[false,"cocainep",life_inv_cokep] call life_fnc_handleInv;};
if(life_inv_crack > 0) then {[false,"crack",life_inv_crack] call life_fnc_handleInv;};
if(life_inv_cannabis > 0) then {[false,"cannabis",life_inv_cannabis] call life_fnc_handleInv;};
if(life_inv_marijuana > 0) then {[false,"marijuana",life_inv_marijuana] call life_fnc_handleInv;};
if(life_inv_hashish > 0) then {[false,"hashish",life_inv_hashish] call life_fnc_handleInv;};
if(life_inv_diamondr2 > 0) then {[false,"diamondc2",life_inv_diamondr2] call life_fnc_handleInv;};
if(life_inv_psilocybe > 0) then {[false,"psilocybe",life_inv_psilocybe] call life_fnc_handleInv;};
if(life_inv_uraniumU > 0) then {[false,"uraniumU",life_inv_uraniumU] call life_fnc_handleInv;};
if(life_inv_uraniumP > 0) then {[false,"uraniumP",life_inv_uraniumP] call life_fnc_handleInv;};
if(life_inv_uraniumP2 > 0) then {[false,"uraniumP2",life_inv_uraniumP2] call life_fnc_handleInv;};
if(life_inv_ABomb > 0) then {[false,"ABomb",life_inv_ABomb] call life_fnc_handleInv;};
if(life_inv_ABomb2 > 0) then {[false,"ABomb2",life_inv_ABomb2] call life_fnc_handleInv;};

life_is_arrested = true;
removeAllWeapons player;
{player removeMagazine _x} foreach (magazines player);
[[player,_bad,_time],"life_fnc_jailSys",false,false] spawn life_fnc_MP;
[5] call SOCK_fnc_updatePartial;