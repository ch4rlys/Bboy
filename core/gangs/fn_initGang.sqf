#include <macro.h>

private["_exitLoop","_group","_wait"];
if(playerSide != civilian) exitWith {};
[player] join (createGroup civilian);
if(EQUAL(count life_gangData,0)) exitWith {};

_wait = round(random(8));
sleep _wait;

_exitLoop = false;
{
	_groupName = _x GVAR "gang_name";
	if(!isNil "_groupName") then
	{
		_groupOwner = _x GVAR ["gang_owner",""];
		_groupID = _x GVAR "gang_id";
		if(EQUAL(_groupOwner,"") OR isNil "_groupID") exitWith {};
		if(EQUAL(SEL(life_gangData,0),_groupID) && {EQUAL(SEL(life_gangData,1),_groupOwner)}) exitWith {_group = _x; _exitLoop = true;};
	};
}
foreach allGroups;

if(!isNil "_group") then
{
	[player] join _group;
	if(EQUAL(SEL(life_gangData,1),steamid)) then
	{
		_group selectLeader player;
		[[player,_group],"TON_fnc_clientGangLeader",(units _group),false] call life_fnc_MP;
	};
}
else
{
	_group = group player;
	_group SVAR ["gang_id",SEL(life_gangData,0),true];
	_group SVAR ["gang_owner",SEL(life_gangData,1),true];
	_group SVAR ["gang_name",SEL(life_gangData,2),true];
	_group SVAR ["gang_maxMembers",SEL(life_gangData,3),true];
	_group SVAR ["gang_bank",SEL(life_gangData,4),true];
	_group SVAR ["gang_members",SEL(life_gangData,5),true];
};