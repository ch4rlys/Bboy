"BIS_fnc_MP_packet" addPublicVariableEventHandler { _this call life_fnc_MPexec };

if(!hasInterface) exitWith {};

#define CONST(var1,var2) var1 = compileFinal( if(typeName var2 == "STRING") then { var2 } else { str(var2) } )

CONST(BIS_fnc_endMission,BIS_fnc_endMission);

[] execVM "core\init.sqf";
[] execVM "core\functions\fn_fuel.sqf";
[] execVM "core\functions\fn_damageZone.sqf";
[] execVM "core\gangs\fn_gangMarkers.sqf";
[] execVM "core\functions\fn_disableAnimals.sqf";
[] execVM "core\admin\fn_activateScroll.sqf";

if( (_this select 1) ) then { [] execVM "core\jip.sqf"; };