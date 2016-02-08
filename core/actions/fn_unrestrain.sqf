private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit OR !(_unit getVariable["restrained",false])) exitWith {};
_unit setVariable["restrained",false,TRUE];
_unit setVariable["Escorting",false,TRUE];
_unit setVariable["transporting",false,TRUE];
life_inv_handcuffs=life_inv_handcuffs+1;
player say3D "cuff";
detach _unit;
[[0,"STR_NOTF_Unrestrain",true,[_unit getVariable ["realname",name _unit],profileName]],"life_fnc_broadcast",west,false]
call life_fnc_MP;