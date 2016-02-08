#include <macro.h>

private["_curTarget","_isWater"];
_curTarget = cursorTarget;
if(life_action_inUse) exitWith {};
if(life_action_gathering) exitWith {};
if(life_interrupted) exitWith {life_interrupted = false;};
_isWater = surfaceIsWater (visiblePositionASL player);

if((call life_fnc_nearATM) && {!dialog}) exitWith
{
	[] call life_fnc_atmMenu;
};

if(isNull _curTarget) exitWith
{
	if(playerSide == civilian && !life_action_gathering) then
	{
		_handle = [] spawn life_fnc_gather;
		waitUntil {scriptDone _handle};
		life_action_gathering = false;
	};
};

if(_curTarget isKindOf "House_F" && {player distance _curTarget < 12}
OR ((nearestObject [[16019.5,16952.9,0],"Land_Dome_Big_F"]) == _curTarget
OR (nearestObject [[16019.5,16952.9,0],"Land_Research_house_V1_F"]) == _curTarget)) exitWith
{
	[_curTarget] call life_fnc_houseMenu;
};

if(dialog) exitWith {};
if(vehicle player != player) exitWith {};
life_action_inUse = true;

[] spawn
{
	sleep 60;
	life_action_inUse = false;
};

if(_curTarget isKindOf "Man" && {!alive _curTarget} && {playerSide in [west,civilian]}) exitWith
{
	if(((playerSide == blufor && {(EQUAL(LIFE_SETTINGS(getNumber,"revive_cops"),1))})
	|| (playerSide == civilian && license_civ_revive && {(EQUAL(LIFE_SETTINGS(getNumber,"revive_civ"),1))}))
	&& {"Medikit" in (items player)}) then
	{
		[_curTarget] call life_fnc_revivePlayer;
	};
};

if(isPlayer _curTarget && _curTarget isKindOf "Man") then
{
	if((_curTarget GVAR ["restrained",true]) && !dialog) then
	{
		if (playerSide == west) then
		{
			[_curTarget] call life_fnc_copInteractionMenu;
		}
		else
		{
			[_curTarget] call life_fnc_civInteractionMenu;
		};
	};
}
else
{
	private ["_isVehicle","_miscItems","_money","_list"];
	_list = ["landVehicle","Ship","Air"];
	_isVehicle =
	if(KINDOF_ARRAY(_curTarget,_list)) then {true} else {false};
	_miscItems = ["Land_BottlePlastic_V1_F","Land_TacticalBacon_F","Land_Can_V3_F","Land_CanisterFuel_F","Land_Suitcase_F"];
	_money = "Land_Money_F";
	if(_isVehicle) then
	{
		if(!dialog) then
		{
			if(player distance _curTarget < SEL(SEL(boundingBox _curTarget,1),0)+2) then
			{
				[_curTarget] call life_fnc_vInteractionMenu;
			};
		};
	}
	else
	{
		if((typeOf _curTarget) in _miscItems) then
		{
			[[_curTarget,player,false],"TON_fnc_pickupAction",false,false,true] call life_fnc_MP;
		}
		else
		{
			if (EQUAL((typeOf _curTarget),_money) && {!(_curTarget GVAR ["inUse",false])}) then
			{
				[[_curTarget,player,true],"TON_fnc_pickupAction",false,false,true] call life_fnc_MP;
			};
		};
	};
};