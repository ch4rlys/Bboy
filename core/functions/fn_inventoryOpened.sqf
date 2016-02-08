#include <macro.h>

private["_container","_unit"];
if(EQUAL(count _this,1)) exitWith {false};
_unit = SEL(_this,0);
_container = SEL(_this,1);


if((typeOf _container) in
["Box_IND_Grenades_F","B_supplyCrate_F"])
exitWith
{
	_house = nearestBuilding (getPosATL player);
	if(!(_house in life_vehicles) && {(_house GVAR ["locked",false])}) exitWith
	{
		hint localize "STR_House_ContainerDeny"; true;
	};
};

private "_list";
_list = ["LandVehicle","Ship","Air"];

if(KINDOF_ARRAY(_container,_list)) exitWith
{
	if(!(_container in life_vehicles) && {EQUAL((locked _container),2)}) exitWith
	{
		hint localize "STR_MISC_VehInventory"; true;
	};
};

/*
	//can't loot player alive
	_isPack = FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,typeOf _container,"isBackpack");
	if(EQUAL(_isPack,1)) exitWith
	{
		hint localize "STR_MISC_Backpack"; true;
	};
	//can't loot dead player
	if(_container isKindOf "Man" && !alive _container) exitWith
	{
		hint localize "STR_NOTF_NoLootingPerson"; true;
	};
*/