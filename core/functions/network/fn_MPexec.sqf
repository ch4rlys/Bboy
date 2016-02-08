private ["_validFunctions","_params","_functionName","_target","_isPersistent","_isCall","_varName","_varValue","_function","_callerName","_callerUID","_exitScope"];
_exitScope = false;
_varName = _this select 0;
_varValue = _this select 1;

_mode = 		[_varValue,0,[0]] call bis_fnc_param;
_params = 		[_varValue,1,[]] call bis_fnc_param;
_functionName =	[_varValue,2,"",[""]] call bis_fnc_param;
_target =		[_varValue,3,true,[ObjNull,true,0,[],sideUnknown,GrpNull,""]] call bis_fnc_param;
_isPersistent =	[_varValue,4,false,[false]] call bis_fnc_param;
_isCall =		[_varValue,5,false,[false]] call bis_fnc_param;
_callerName =	[_varValue,6,"",[""]] call bis_fnc_param;
_callerUID = 	[_varValue,7,"",[""]] call bis_fnc_param;

if(!(["life_fnc_",_functionName] call BIS_fnc_inString) && {!(["SPY_fnc_",_functionName] call BIS_fnc_inString)} && {!(["DB_fnc_",_functionName] call BIS_fnc_inString)} && {!(["TON_fnc_",_functionName] call BIS_fnc_inString)} &&
{!(toLower(_functionName) in ["bis_fnc_execvm","bis_fnc_effectkilledairdestruction","bis_fnc_effectkilledairdestructionstage2","life_fnc_stripDownPlayer"])} && {!(["SOCK_fnc_",_functionName] call BIS_fnc_inString)}) exitWith {false};
if(toLower(_functionName) in ["db_fnc_asynccall","db_fnc_mresstring","db_fnc_mresarray","db_fnc_mrestoarray"]) exitWith {false};

if(_functionName == "bis_fnc_execvm") then
{
	_param2 = _params select 1;
	if(isNil "_param2") exitWith {_exitScope = true;};
//	if(_param2 != "initPlayerServer.sqf") exitWith {_exitScope = true;};
};

if(_callerName == "" OR _callerUID == "") exitWith {};

if(_callerUID != "__SERVER__" && _callerName != "__SERVER__" && toLower(_functionName) in ["spy_fnc_cookiejar","spy_fnc_notifyadmins","ton_fnc_logit"]) then {
	if(toLower(_functionName) == "spy_fnc_cookiejar") exitWith
	{
		private["_reportUID"];
		_reportUID = _params select 1;
		if(_reportUID != _callerUID) exitWith
		{
			if(isServer && _mode == 0) then
			{
				[_callerName,_callerUID,"false_reports_to_spyglass"] call SPY_fnc_cookieJar;
				[[_callerName,"False reporting to SpyGlass (cheater)"],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
				[["spy_log",["False reporting to SpyGlass (cheater)"],_callerName,_callerUID],"TON_fnc_logIt",false,false] call life_fnc_MP;
			};
			_exitScope = true;
		};
	};
	if(toLower(_functionName) == "ton_fnc_logit") exitWith
	{
		private["_reportUID"];
		_reportUID = _params select 3;
		if(_reportUID != _callerUID) exitWith
		{
			if(isServer && _mode == 0) then
			{
				[_callerName,_callerUID,"false_reports_to_spyglass"] call SPY_fnc_cookieJar;
				[[_callerName,"False reporting to SpyGlass (cheater)"],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
				[["spy_log",["False reporting to SpyGlass (cheater)"],_callerName,_callerUID],"TON_fnc_logIt",false,false] call life_fnc_MP;
			};
			_exitScope = true;
		};
	};
	private["_reportName"];
	_reportName = _params select 0;
	if(_callerName != _reportName) exitWith
	{
		if(isServer && _mode == 0) then
		{
			[_callerName,_callerUID,"false_reports_to_spyglass"] call SPY_fnc_cookieJar;
			[[_callerName,"False reporting to SpyGlass (cheater)"],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
			[["spy_log",["False reporting to SpyGlass (cheater)"],_callerName,_callerUID],"TON_fnc_logIt",false,false] call life_fnc_MP;
		};
		_exitScope = true;
	};
};
	
if(toLower(_functionName) == "bis_fnc_endmission") exitWith {false};

if(_exitScope) exitWith {false};
if (ismultiplayer && _mode == 0) then
{
	if (isserver) then
	{
		if (typename _target == typename []) then
		{
			{
				[_varName,[_mode,_params,_functionName,_x,_isPersistent,_isCall,_callerName,_callerUID]] call life_fnc_MPexec;
			}
			foreach _target;
		}
		else
		{
			private ["_ownerID","_serverID"];
			_serverID = owner (missionnamespace getvariable ["bis_functions_mainscope",objnull]);
			switch (typename _target) do
			{
				case (typename objnull):
				{
					_ownerID = owner _target;
				};
				case (typename true):
				{
					_ownerID = [_serverID,-1] select _target;
				};
				case (typename 0):
				{
					_ownerID = _target;
				};
				case (typename grpnull);
				case (typename sideUnknown):
				{
					_ownerID = -1;
				};
				case (typeName ""):
				{
					_ownerID = -1;
				};
			};
			life_fnc_MP_packet = [1,_params,_functionName,_target,_isPersistent,_isCall,"__SERVER__","__SERVER__"];
			if (_ownerID < 0) then
			{
				publicvariable "life_fnc_MP_packet";
			}
			else
			{
				if (_ownerID != _serverID) then
				{
					_ownerID publicvariableclient "life_fnc_MP_packet";
				};
			};
			if (_ownerID < 0 || _ownerID == _serverID) then
			{
				["life_fnc_MP_packet",life_fnc_MP_packet] call life_fnc_MPexec;
			};
			if (_isPersistent) then
			{
				if (typename _target != typename 0) then
				{
					private ["_logic","_queue"];
					_logic = missionnamespace getvariable ["bis_functions_mainscope",objnull];
					_queue = _logic getvariable ["BIS_fnc_MP_queue",[]];
					_queue set [count _queue,+life_fnc_MP_packet];
					_logic setvariable ["BIS_fnc_MP_queue",_queue,true];
				}
				else
				{
					["Persistent execution is not allowed when target is %1. Use %2 or %3 instead.",typename 0,typename objnull,typename false] call bis_fnc_error;
				};
			};
		};
	};
}
else
{
	private ["_canExecute"];
	_canExecute = switch (typename _target) do
	{
		case (typename grpnull): {player in units _target};
		case (typename sideUnknown): {playerside == _target;};
		case (typeName ""): {if(!isNull player) then {getPlayerUID player == _target;} else {false}};
		default {true};
	};
	if (_canExecute) then
	{
		_function = missionnamespace getvariable _functionName;
		if (!isnil "_function") then
		{
			if (_isCall) then
			{
				_params call _function;
			}
			else
			{
				_params spawn _function;
			};
			true
		}
		else
		{
			["Function '%1' does not exist",_functionName] call bis_fnc_error;
			false
		};
	};
};