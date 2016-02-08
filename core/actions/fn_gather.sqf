#include <macro.h>

if(isNil "life_action_gathering") then {life_action_gathering = false;};
private["_gather","_itemWeight","_diff","_itemName","_resourceZones","_zone"];
_resourceZones =
[
	"apple_1","apple_2","apple_3","apple_4",
	"peaches_1","peaches_2","peaches_3","peaches_4",
	"heroin_1",
	"cocaine_1",
	"weed_1",
	"psilocybe_1",
	"psilocybe_2",
	"olive_1",
	"tabacco_1","tabacco_2","tabacco_3",
	"archeo_1","archeo_2","archeo_3"
];
_zone = "";

if(life_action_gathering) exitWith {};
life_action_gathering = true;
{
	if(player distance (getMarkerPos _x) < 50) exitWith {_zone = _x;};
}
foreach _resourceZones;

if(EQUAL(_zone,"")) exitWith {life_action_gathering = false;};

switch(true) do
{
	case (_zone in ["apple_1","apple_2","apple_3","apple_4"]): {_gather = ["apple",4];};
	case (_zone in ["peaches_1","peaches_2","peaches_3","peaches_4"]): {_gather = ["peach",3];};
	case (_zone in ["heroin_1"]): {_gather = ["heroin_unprocessed",2];};
	case (_zone in ["cocaine_1"]): {_gather = ["cocaine_unprocessed",3];};
	case (_zone in ["weed_1"]): {_gather = ["cannabis",4];};
	case (_zone in ["psilocybe_1","psilocybe_2"]): {_gather = ["psilocybe",3];};
	case (_zone in ["tabacco_1","tabacco_2","tabacco_3"]): {_gather = ["tabacco_unprocessed",8];};
	case (_zone in ["olive_1"]): {_gather = ["oliveU",4];};
	case (_zone in ["archeo_1","archeo_2","archeo_3"]): {_gather = ["antiquity",1];};
	default {""};
};
if(vehicle player != player) exitWith {};
_diff = [SEL(_gather,0),SEL(_gather,1),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(EQUAL(_diff,0)) exitWith {hint localize "STR_NOTF_InvFull";};
life_action_gathering = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};
if(([true,SEL(_gather,0),_diff] call life_fnc_handleInv)) then
{
	_itemName = M_CONFIG(getText,"VirtualItems",SEL(_gather,0),"displayName");
	titleText[format[localize "STR_NOTF_Gather_Success",(localize _itemName),_diff],"PLAIN"];
};
life_action_gathering = false;