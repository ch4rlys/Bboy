#include <macro.h>
private "_item";
disableSerialization;
if(EQUAL(lbCurSel 2005,-1)) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = CONTROL_DATA(2005);
switch (true) do
{
	case (_item in
	[
		"waterBottle",
		"cocaBottle",
		"redgull"
	]):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),1)) then {player setFatigue 0;};
			if(EQUAL(_item,"redgull") && {EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),1)}) then
			{
				[] spawn
				{
					life_redgull_effect = time;
					titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
					player enableFatigue false;
					waitUntil {!alive player OR ((time - life_redgull_effect) > (8 * 60))};
					player enableFatigue true;
				};
			};
		};
	};
	case (EQUAL(_item,"boltcutter")):
	{
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	case (EQUAL(_item,"blastingcharge")):
	{
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	case (EQUAL(_item,"blastingcharge2")):
	{
		[] spawn life_fnc_carBomb;
	};
	case (EQUAL(_item,"blastingcharge3")):
	{
		[] spawn life_fnc_speedBomb;
	};
	case (EQUAL(_item,"blastingcharge4")):
	{
		[] spawn life_fnc_sideBomb;
	};
	case (EQUAL(_item,"blastingcharge5")):
	{
		[] spawn life_fnc_tiltBomb;
	};
	case (EQUAL(_item,"defusekit")):
	{
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	case (_item in ["storagesmall","storagebig"]):
	{
		[_item] call life_fnc_storageBox;
	};
	case (EQUAL(_item,"spikeStrip")):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	case (EQUAL(_item,"barrier")):
	{
		if(!isNull life_barrier) exitWith {hint localize "STR_ISTR_BarrierDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_barrier;
		};
	};
	case (EQUAL(_item,"fuelFull")):
	{
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};
	case (EQUAL(_item,"lockpick")):
	{
		[] spawn life_fnc_lockpick;
	};
	case (_item in
	[
		"apple",
		"peach",
		"oliveU",
		"tbacon",
		"rabbit_grilled"
	]):
	{
		if(!(EQUAL(M_CONFIG(getNumber,"VirtualItems",_item,"edible"),-1))) then
		{
			if([false,_item,1] call life_fnc_handleInv) then
			{
				_val = M_CONFIG(getNumber,"VirtualItems",_item,"edible");
				_sum = life_hunger + _val;
				switch (true) do
				{
					case (_val < 0 && _sum < 1): {life_hunger = 5;};
					case (_sum > 100): {life_hunger = 100;};
					default {life_hunger = _sum;};
				};
			};
		};
	};
	case (EQUAL(_item,"pickaxe")):
	{
		[] spawn life_fnc_pickaxeUse;
	};
	case (EQUAL(_item,"axe")):
	{
		[] spawn life_fnc_axeUse;
	};
	case (EQUAL(_item,"shovel")):
	{
		[] spawn life_fnc_shovelUse;
	};
	case (EQUAL(_item,"hoe")):
	{
		[] spawn life_fnc_hoeUse;
	};
	case (EQUAL(_item,"secateurs")):
	{
		[] spawn life_fnc_secateursUse;
	};
	case (_item == "ABomb2"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_bombAtom;
		};
	};
	case (_item == "heroin_processed"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_useDrug;
		};
	};
	case (_item == "heroin_processed2"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_useDrug;
		};
	};
	case (_item == "opium"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_useDrug;
		};
	};
	case (_item == "marijuana"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_useDrug;
		};
	};
	case (_item == "hashish"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_useDrug;
		};
	};
	case (_item == "cocaine_processed"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_useDrug;
		};
	};
	case (_item == "crack"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_useDrug;
		};
	};
	case (_item == "psilocybe"):
	{
		if(!(EQUAL(M_CONFIG(getNumber,"VirtualItems",_item,"edible"),-1))) then
		{
			if([false,_item,1] call life_fnc_handleInv) then
			{
				[] spawn life_fnc_useDrug;
				_val = M_CONFIG(getNumber,"VirtualItems",_item,"edible");
				_sum = life_hunger + _val;
				switch (true) do
				{
					case (_val < 0 && _sum < 1): {life_hunger = 5;};
					case (_sum > 100): {life_hunger = 100;};
					default {life_hunger = _sum;};
				};
			};
		};
	};
	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;