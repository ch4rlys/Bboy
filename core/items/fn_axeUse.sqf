#include <macro.h>

closeDialog 0;

private["_mine","_itemWeight","_diff","_itemName"];

_mine = [];

switch (true) do
{
	case (player distance (getMarkerPos "wood_1") < 50): {_mine = ["woodU",4];};
	default {["", 0]};
};

if(EQUAL(SEL(_mine, 0),"")) exitWith {hint localize "STR_ISTR_Pick_NotNear"};

if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";};

_diff = [SEL(_mine,0),SEL(_mine,1),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(EQUAL(_diff,0)) exitWith {hint localize "STR_NOTF_InvFull"};

life_action_inUse = true;

for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,SEL(_mine,0),_diff] call life_fnc_handleInv)) then
{
	_itemName = M_CONFIG(getText,"VirtualItems",SEL(_mine,0),"displayName");
	titleText[format[localize "STR_ISTR_Pick_Success",(localize _itemName),_diff],"PLAIN"];
};

life_action_inUse = false;
