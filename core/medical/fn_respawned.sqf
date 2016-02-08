#include <macro.h>
private["_handle"];
life_use_atm = TRUE;
life_hunger = 100;
life_thirst = 100;
life_carryWeight = 0;
CASH = 250;
life_respawned = false;
player playMove "amovpercmstpsnonwnondnon";
life_corpse setVariable["Revive",nil,TRUE];
life_corpse setVariable["name",nil,TRUE];
life_corpse setVariable["Reviving",nil,TRUE];
player setVariable["Revive",nil,TRUE];
player setVariable["name",nil,TRUE];
player setVariable["Reviving",nil,TRUE];
switch(playerSide) do
{
	case west:
	{
		_handle = [] spawn life_fnc_copLoadout;
	};
	case civilian:
	{
		_handle = [] spawn life_fnc_civLoadout;
	};
	waitUntil {scriptDone _handle};
};
if(!isNull life_corpse) then
{
	private "_containers";
	life_corpse setVariable["Revive",TRUE,TRUE];
	_containers = nearestObjects[life_corpse,["WeaponHolderSimulated"],5];
	{deleteVehicle _x;} foreach _containers;
	hideBody life_corpse;
};
life_deathCamera cameraEffect ["TERMINATE","BACK"];
camDestroy life_deathCamera;
if(life_is_arrested) exitWith
{
	hint localize "STR_Jail_Suicide";
	life_is_arrested = false;
	[player,TRUE] spawn life_fnc_jail;
	[] call SOCK_fnc_updateRequest;
};
if(!isNil "life_copRecieve") then
{
	[[getPlayerUID player,player,life_copRecieve,true],"life_fnc_wantedBounty",false,false] spawn life_fnc_MP;
	life_copRecieve = nil;
};
if(life_removeWanted) then
{
	[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
};
[] call SOCK_fnc_updateRequest;
[] call life_fnc_hudUpdate;
[] execVM "core\admin\fn_activateScroll.sqf";