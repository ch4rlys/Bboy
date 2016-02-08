#include <macro.h>

private["_fnc_food","_fnc_water","_foodTime","_waterTime","_bp","_walkDis","_lastPos","_curPos"];

_fnc_food =
{
	if(life_hunger < 2) then
	{
		player setDamage 1;
		hint localize "STR_NOTF_EatMSG_Death";
	}
	else
	{
		SUB(life_hunger,10);
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then
		{
			player setDamage 1;
			hint localize "STR_NOTF_EatMSG_Death";
		};
		switch(life_hunger) do
		{
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10:
			{
				hint localize "STR_NOTF_EatMSG_3";
				if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),1)) then
				{
					player setFatigue 1;
				};
			};
		};
	};
};
_fnc_water =
{
	if(life_thirst < 2) then
	{
		player setDamage 1;
		hint localize "STR_NOTF_DrinkMSG_Death";
	}
	else
	{
		SUB(life_thirst,10);
		[] call life_fnc_hudUpdate;
		if(life_thirst < 2) then
		{
			player setDamage 1;
			hint localize "STR_NOTF_DrinkMSG_Death";
		};
		
		switch(life_thirst) do
		{
			case 30:
			{
				hint localize "STR_NOTF_DrinkMSG_1";
			};
			case 20:
			{
				hint localize "STR_NOTF_DrinkMSG_2";
				if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),1)) then
				{
					player setFatigue 1;
				};
			};
			case 10:
			{
				hint localize "STR_NOTF_DrinkMSG_3";
				if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),1)) then
				{
					player setFatigue 1;
				};
			};
		};
	};
};

_foodTime = time;
_waterTime = time;
_walkDis = 0;
_bp = "";
_lastPos = visiblePosition player;
_lastPos = (SEL(_lastPos,0)) + (SEL(_lastPos,1));
_lastState = vehicle player;

while {true} do
{
	if((time - _waterTime) > 600) then
	{
		[] call _fnc_water;
		_waterTime = time;
	};
	
	if((time - _foodTime) > 700) then
	{
		[] call _fnc_food;
		_foodTime = time;
	};
	
	if(EQUAL(backpack player,"")) then
	{
		life_maxWeight = life_maxWeightT;
		_bp = backpack player;
	}
	else
	{
		if(!(EQUAL(backpack player,"")) && {!(EQUAL(backpack player,_bp))}) then
		{
			_bp = backpack player;
			life_maxWeight = life_maxWeightT + (round(FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,_bp,"maximumload") / 4));
		};
	};
	
	if(vehicle player != _lastState OR {!alive player}) then
	{
		[] call life_fnc_updateViewDistance;
		_lastState = vehicle player;
	};
	
	if(life_carryWeight > life_maxWeight && {!isForcedWalk player}) then
	{
		player forceWalk true;
		if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),1)) then {player setFatigue 1;};
		hint localize "STR_NOTF_MaxWeight";
	}
	else
	{
		if(isForcedWalk player) then
		{
			player forceWalk false;
		};
	};
	
	if(!alive player) then
	{
		_walkDis = 0;
	}
	else
	{
		_curPos = visiblePosition player;
		_curPos = (SEL(_curPos,0)) + (SEL(_curPos,1));
		if(!(EQUAL(_curPos,_lastPos)) && {(vehicle player == player)}) then
		{
			ADD(_walkDis,1);
			if(EQUAL(_walkDis,650)) then
			{
				_walkDis = 0;
				SUB(life_thirst,5);
				SUB(life_hunger,5);
				[] call life_fnc_hudUpdate;
			};
		};
		_lastPos = visiblePosition player;
		_lastPos = (SEL(_lastPos,0)) + (SEL(_lastPos,1));
	};
	uiSleep 1;
};