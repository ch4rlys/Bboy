private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {};
if(!(_unit getVariable "Escorting")) exitWith {};
if(!(side _unit in [civilian,west])) exitWith {};
if(isNull _unit) exitWith {};
detach _unit;
_unit setVariable["Escorting",false,true];