/*
	File: fn_gatherSub.sqf
*/

private["_sum","_dice"];

_dice=ceil(random 1);
_sum = ["antiquity2",_dice,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
    life_action_inUse = true;
	TitleText[format[localize "STR_GatherSub"],"PLAIN"];
//	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    titleFadeOut 8;
    sleep 8;
    if(([true,"antiquity2",_sum] call life_fnc_handleInv)) then
    {
        titleText[format[localize "STR_GatherSub2",_sum],"PLAIN"];
    };
};

life_action_inUse = false;