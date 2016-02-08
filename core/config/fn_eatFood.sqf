private["_food","_val","_sum"];
_food = [_this,0,"",[""]] call BIS_fnc_param;
if(_food == "") exitWith {};

if([false,_food,1] call life_fnc_handleInv) then
{
	switch (_food) do
	{
		case "apple": {_val = 10};
		case "peach": {_val = 10};
		case "rabbit":{ _val = 30};
		case "tbacon": {_val = 50};
		case "psilocybe": {_val = 20};
	//	case "oliveU": {_val = 0};
	};
	_sum = life_hunger + _val;
	life_hunger = _sum;
};