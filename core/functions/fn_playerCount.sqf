private["_faction"];
_faction = [_this,0,civilian,[]] call BIS_fnc_param;

{side _x == _faction} count playableUnits;