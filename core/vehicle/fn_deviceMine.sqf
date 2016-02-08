private["_vehicle","_resourceZones","_zone","_weight","_item","_vInv","_itemIndex"];

_vehicle = [_this,0,ObjNull,[ObjNull]]
call BIS_fnc_param;

if(isNull _vehicle) exitWith {};

if(!isNil{_vehicle getVariable "mining"}) exitWith
{
	hint localize "STR_NOTF_DeviceIsMining";
};
closeDialog 0;

life_action_inUse = true;

_weight = [_vehicle]
call life_fnc_vehicleWeight;

if((_weight select 1)>=( _weight select 0)) exitWith
{
	hint localize "STR_NOTF_DeviceFull";
	life_action_inUse = false;
};
_resourceZones =
[
	"lead_1",
	"iron_1",
	"salt_1",
	"sand_1",
	"diamond_1",
	"oil_1",
	"wine_1",
	"rock_1",
	"gold_1",
	"wood_1",
	"wheat_1"
];
_zone = "";

{
	if(player distance(getMarkerPos _x )<150) exitWith {_zone = _x;};
}
foreach _resourceZones;

if(_zone == "") exitWith {hint localize "STR_NOTF_notNearResource"; life_action_inUse = false;};

_item = switch(true) do
{
	case ( _zone in ["wood_1"]):{"woodU"};
	case ( _zone in ["wheat_1"]):{"wheatU"};
	case ( _zone in ["lead_1"]):{"copper_unrefined"};
	case ( _zone in ["iron_1"]):{"iron_unrefined"};
	case ( _zone in ["salt_1"]):{"salt_unrefined"};
	case ( _zone in ["sand_1"]):{"sand"};
	case ( _zone in ["diamond_1"]):{"diamond_uncut"};
	case ( _zone in ["oil_1"]):{"oil_unprocessed"};
	case ( _zone in ["wine_1","wine_2"]):{"wine_unprocessed"};
	case ( _zone in ["rock_1"]):{"rock"};
	case ( _zone in ["gold_1"]):{"goldbarU"};
	default {""};
};

if(_item == "") exitWith
{
	hint "Bad Resource ?";
	life_action_inUse = false;
};

_vehicle setVariable["mining",true,true];
[_vehicle,"life_fnc_soundDevice",true,false]
call life_fnc_MP;
life_action_inUse = false;

while{true} do
{
	if(!alive _vehicle OR isNull _vehicle) exitWith {};
	if(isEngineOn _vehicle) exitWith {titleText [ 	localize "STR_NOTF_MiningStopped", 	"PLAIN"];};
	titleText [localize "STR_NOTF_DeviceMining", "PLAIN"];
	_time = time + 20;
	waitUntil
	{
		if(isEngineOn _vehicle) exitWith {titleText[localize "STR_NOTF_MiningStopped","PLAIN"];true};
		if(round(_time - time)<1) exitWith {true};
		sleep 0.2;
		false
	};
	if(isEngineOn _vehicle) exitWith {titleText[localize "STR_NOTF_MiningStopped", 	"PLAIN"];};
	_vInv = _vehicle getVariable ["Trunk",[[],0]];
	_items = _vInv select 0;
	_space = _vInv select 1;
	_itemIndex = [_item, _items]
	call TON_fnc_index;
	_weight = [_vehicle]
	call life_fnc_vehicleWeight;
	_sum = [ _item, 18, _weight select 1, _weight select 0]
	call life_fnc_calWeightDiff; 
	if(_sum < 1) exitWith {titleText[localize"STR_NOTF_DeviceFull","PLAIN"];};
	_itemWeight = ([_item ] call life_fnc_itemWeight)* _sum;
	if(_itemIndex == -1) then {_items pushBack[_item,_sum];}
	else {_val = _items select _itemIndex select 1; _items set [_itemIndex,[_item,_val + _sum]];};
	if( fuel _vehicle == 0) exitWith {titleText[localize "STR_NOTF_OutOfFuel","PLAIN"];};
	if(local _vehicle) then {_vehicle setFuel(fuel _vehicle) -0.045;}
	else {[[_vehicle,(fuel _vehicle)-0.04],"life_fnc_setFuel",_vehicle,false] call life_fnc_MP;};
	if(fuel _vehicle == 0) exitWith {titleText[localize "STR_NOTF_OutOfFuel","PLAIN"];};
	titleText [format[localize "STR_NOTF_DeviceMined",_sum],"PLAIN"];
	_vehicle setVariable ["Trunk",[_items,_space + _itemWeight],true];
	_weight = [_vehicle]
	call life_fnc_vehicleWeight;
	_sum = [_item,15,_weight select 1,_weight select 0]
	call life_fnc_calWeightDiff;
	if(_sum < 1) exitWith {titleText[localize "STR_NOTF_DeviceFull","PLAIN"];};
	sleep 2;
};
_vehicle setVariable ["mining",nil,true];