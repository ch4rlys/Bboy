#include <macro.h>
private["_target","_revivable","_targetName","_ui","_progressBar","_titleText","_cP","_title"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _target) exitWith {};

_revivable = _target GVAR ["Revive",FALSE];
if(_revivable) exitWith {};
if(_target GVAR ["Reviving",ObjNull] == player) exitWith {hint localize "STR_Medic_AlreadyReviving";};
if(player distance _target > 5) exitWith {};
_targetName = _target GVAR ["name","Unknown"];
_title = format[localize "STR_Medic_Progress",_targetName];
life_action_inUse = true;
_target SVAR ["Reviving",player,TRUE];
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = GVAR_UINS ["life_progress",displayNull];
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;
while {true} do
{
	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then
	{
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1",true],"life_fnc_animSync",true,false] call life_fnc_MP;
		player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};
	sleep 0.15;
	_cP = _cP + .01;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {};
	if(life_interrupted) exitWith {};
	if((player GVAR ["restrained",false])) exitWith {};
	if(player distance _target > 4) exitWith {_badDistance = true;};
	if(_target GVAR ["Revive",FALSE]) exitWith {};
	if(_target GVAR ["Reviving",ObjNull] != player) exitWith {};
};
5 cutText ["","PLAIN"];
player playActionNow "stop";
if(_target GVAR ["Reviving",ObjNull] != player) exitWith {hint localize "STR_Medic_AlreadyReviving"};
_target SVAR ["Reviving",NIL,TRUE];
if(!alive player) exitWith {life_action_inUse = false;};
if(_target GVAR ["Revive",FALSE]) exitWith {hint localize "STR_Medic_RevivedRespawned"};
if((player GVAR ["restrained",false])) exitWith {life_action_inUse = false;};
if(!isNil "_badDistance") exitWith {titleText[localize "STR_Medic_TooFar","PLAIN"]; life_action_inUse = false;};
if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
ADD(BANK,(LIFE_SETTINGS(getNumber,"revive_fee")));
life_action_inUse = false;
_target SVAR ["Revive",TRUE,TRUE];
[[profileName],"life_fnc_revived",_target,FALSE] call life_fnc_MP;
titleText[format[localize "STR_Medic_RevivePayReceive",_targetName,[LIFE_SETTINGS(getNumber,"revive_fee")] call life_fnc_numberText],"PLAIN"];
sleep 0.6;
player reveal _target;