#include <macro.h>
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys","player"];
_ctrl = SEL(_this,0);
_code = SEL(_this,1);
_shift = SEL(_this,2);
_ctrlKey = SEL(_this,3);
_alt = SEL(_this,4);
_speed = speed cursorTarget;
_handled = false;
_interactionKey = if((EQUAL(count (actionKeys "User10"),0))) then {219} else {(actionKeys "User10") select 0};
_mapKey = SEL(actionKeys "ShowMap",0);
_interruptionKeys = [17,30,31,32];
_player = player;

if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player GVAR ["restrained",false])}) exitWith{true;};
if(life_action_inUse) exitWith
{
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};
if(!(EQUAL(count (actionKeys "User10"),0)) && {(inputAction "User10" > 0)}) exitWith
{
	if(!life_action_inUse) then
	{
		[] spawn
		{
			private "_handle";
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};
//default { hint format ["keyCode : %1",_code]; };
switch (_code) do
{
	case 1:
	{
		[] call SOCK_fnc_syncData;
		if(_ctrlKey)  then 
		{
			SOCK_fnc_updateRequest;
			diag_log format ["%1 : [Ctrl] [Echap]",_player getVariable["realname",name _player]];
			[[1,format["%1 : [Ctrl] [Echap]",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
			SOCK_fnc_updateRequest;
		};
	};	
	case 62:
	{
		if(_alt && !_shift) then 
		{
			SOCK_fnc_updateRequest;
			diag_log format ["%1 : [Alt] [F4]",_player getVariable["realname",name _player]];
			[[1,format["%1 : [Alt] [F4]",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
			SOCK_fnc_updateRequest;
		};
	};
	case 211:
	{
		if(_ctrlKey && _alt)  then
		{
			SOCK_fnc_updateRequest;
			diag_log format ["%1 : [Ctrl] [Alt] [Suppr]",_player getVariable["realname",name _player]];
			[[1,format["%1 : [Ctrl] [Alt] [Suppr]",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
			SOCK_fnc_updateRequest;
		};
	};
	//jump (space keys)
	case 57: {
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {!(EQUAL(animationState player,"AovrPercMrunSrasWrflDf"))}
		&& {isTouchingGround player}
		&& {EQUAL(stance player,"STAND")}
		&& {speed player > 0}
		&& {!life_is_arrested}
		&& {SEL((velocity player),2) < 2.5}
		&& {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time;
			[player,true] spawn life_fnc_jumpFnc;
			[[player,false],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP;
			_handled = true;
		};
	};
	//map
	case _mapKey :
	{
		switch (playerSide) do
		{
			case west: { if(!visibleMap) then { [] spawn life_fnc_copMarkers; } };
			case civilian: { if(!visibleMap) then { [] spawn life_fnc_gangMarkers; } };
		};
	};
	//frapper (shit + G)
	case 34:
	{
		if(_shift) then {_handled = true;};
		if(_shift
	//	&& playerSide == civilian
		&& !isNull cursorTarget
		&& cursorTarget isKindOf "Man"
		&& isPlayer cursorTarget
		&& alive cursorTarget
		&& cursorTarget distance player < 4
		&& speed cursorTarget < 1) then
		{
			if((animationState cursorTarget) != "Incapacitated"
			&& (currentWeapon player == RIFLE OR currentWeapon player == PISTOL)
			&& currentWeapon player != ""
			&& !life_knockout
			&& !(player GVAR["restrained",false])
			&& !(player GVAR["surrender",false])) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;
			};
			_handled = true;
		};
	};
	//holster (maj + H)
	case 35:
	{
		if(_shift && !_ctrlKey && !(EQUAL(currentWeapon player,""))) then
		{
			life_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchCamera cameraView;
		};
		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {!(EQUAL(life_curWep_h,""))}) then
		{
			if(life_curWep_h in [RIFLE,LAUNCHER,PISTOL]) then
			{
				player selectWeapon life_curWep_h;
			};
		};
	};
	//admin tools (maj + entrée)
	case 28:
	{
		if(_shift) then
		{
			sleep 0.1;
			createDialog "life_admin_menu";
		};
	};
	//interaction (windows)
	case _interactionKey:
	{
		if(player GVAR ["restrained",false]) exitWith {};
		if(!life_action_inUse) then
		{
			[] spawn 
			{
				private "_handle";
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	//earplugs (maj + M)
	case 39:
	{
		if(_shift) then { [] call life_fnc_earplugs; _handled = true; };
	};
	//handcuffs (maj + R)
	case 19:
	{
		if(_shift) then {_handled = true;};
		if(_shift && {!isNull cursorTarget}
		&& {cursorTarget isKindOf "Man"}
		&& {(isPlayer cursorTarget)}
	//	&& {alive cursorTarget}
		&& {cursorTarget distance player < 3}
		&& {!(cursorTarget GVAR "Escorting")}
		&& {!(cursorTarget GVAR "restrained")}
		&& {!(player GVAR "restrained")}
		&& {speed cursorTarget < 5})then
		{
			if(life_inv_handcuffs > 0) then
			{
				if(playerSide == civilian && !license_civ_rebel) then
				{
					hint "La licence rebelle est nécessaire pour menotter un joueur.";
				}
				else
				{
					[] call life_fnc_restrainAction;
				};
			}
			else
			{
				hint format["Cette action requiert une paire de menottes.",_inventaire];
			};
		};
	};
	//surrender (tab)
	case 15: {
		if(!_shift && !_alt && !_ctrlKey) then
		{
			if (vehicle player == player && !(player GVAR ["restrained",false]) && (animationState player) != "Incapacitated") then
			{
				if (player GVAR ["surrender", false]) then
				{
					player SVAR ["surrender", false, true]
				}
				else
				{
					[] spawn life_fnc_surrender;
				};
			};
		};
	};
	//inventory (T)
	case 20:
	{
		if(!_alt && !_ctrlKey && !life_is_processing) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				sleep 1;
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] call life_fnc_openInventory;
				};
			}
			else
			{
				private "_list";
				_list = ["landVehicle","Air","Ship","House_F"];
				if(KINDOF_ARRAY(cursorTarget,_list)
				&& {player distance cursorTarget < 8}
				&& {vehicle player == player}
				&& {alive cursorTarget})
				then
				{
					sleep 1;
					if(cursorTarget in life_vehicles OR {!(cursorTarget GVAR ["locked",true])}) then
					{
						[cursorTarget] call life_fnc_openInventory;
					};
				};
			};
		};
	};
	//light (maj + L)
	case 38:
	{
		if(_shift && playerSide == civilian) then
		{
			if(vehicle player != player
			&& (typeOf vehicle player) in
			[
				"C_Offroad_01_F",
				"B_MRAP_01_F",
				"C_SUV_01_F"
			]) then
			{
				if(!isNil {vehicle player GVAR "lights"}) then
				{
					if(playerSide == west) then
					{
						[vehicle player] call life_fnc_sirenLights;
					};
					_handled = true;
				};
			};
		};
		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
	};
	//menu (Y)
	case 21:
	{
		if(!_alt
		&& !_ctrlKey
		&& !dialog
		&& !life_is_processing
		&& !(player GVAR ["restrained",false])
		&& !(player GVAR ["surrender", false]))
		then {
			[] call life_fnc_p_openMenu;
		};
	};
	//siren (F)
	case 33:
	{
		if((playerSide == west)
		&& {vehicle player != player}
		&& {!life_siren_active}
		&& {((driver vehicle player) == player)}) then {
			[] spawn {
				life_siren_active = true;
				sleep 5.5;
				life_siren_active = false;
			};
			_veh = vehicle player;
			if(isNil {_veh GVAR "siren"}) then {_veh SVAR ["siren",false,true];};
			if((_veh GVAR "siren")) then
			{
				titleText [localize "STR_MISC_SirensOFF","PLAIN"];
				_veh SVAR ["siren",false,true];
			}
			else
			{
				titleText [localize "STR_MISC_SirensON","PLAIN"];
				_veh SVAR ["siren",true,true];
				if(playerSide == west) then
				{
					[[_veh],"life_fnc_copSiren",nil,true] call life_fnc_MP;
				};
			};
		};
	};
	//open door (U)
	case 22:
	{
		if(!_alt && !_ctrlKey && !_shift) then
		{
			if(vehicle player == player) then
			{
				_veh = cursorTarget;
			}
			else
			{
				_veh = vehicle player;
			};
			if(_veh isKindOf "House_F" && {playerSide == civilian}) then
			{
				if(_veh in life_vehicles && player distance _veh < 8) then
				{
					_door = [_veh] call life_fnc_nearestDoor;
					if(EQUAL(_door,0)) exitWith {hint localize "STR_House_Door_NotNear"};
					_locked = _veh GVAR [format["bis_disabled_Door_%1",_door],0];
					if(EQUAL(_locked,0)) then
					{
						_veh SVAR [format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat localize "STR_House_Door_Lock";
					}
					else
					{
						_veh SVAR [format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						systemChat localize "STR_House_Door_Unlock";
					};
				};
			}
			else
			{
				_locked = locked _veh;
				if(_veh in life_vehicles && player distance _veh < 8) then
				{
					if(EQUAL(_locked,2)) then
					{
						if(local _veh) then
						{
							_veh lock 0;
						}
						else
						{
							[[_veh,0],"life_fnc_lockVehicle",_veh,false] call life_fnc_MP;
						};
						systemChat localize "STR_MISC_VehUnlock";
						player say3D "car_unlock";
					}
					else
					{
						if(local _veh) then
						{
							_veh lock 2;
						}
						else
						{
							[[_veh,2],"life_fnc_lockVehicle",_veh,false] call life_fnc_MP;
						};	
						systemChat localize "STR_MISC_VehLock";
						player say3D "car_lock";
					};
				};
			};
		};
	};
};
_handled;