#include <macro.h>
private["_mode","_spawnPoints","_className","_basePrice","_colorIndex","_spawnPoint","_vehicle","_shopSide","_license"];
_mode = SEL(_this,0);
if((lbCurSel 2302) == -1) exitWith {hint localize "STR_Shop_Veh_DidntPick"};
_className = lbData[2302,(lbCurSel 2302)];
_vIndex = lbValue[2302,(lbCurSel 2302)];
_vehicleList = M_CONFIG(getArray,"CarShops",SEL(life_veh_shop,0),"vehicles");
_shopSide = M_CONFIG(getText,"CarShops",SEL(life_veh_shop,0),"side");
_basePrice = SEL(SEL(_vehicleList,_vIndex),1);
 if(_mode) then {_basePrice = round(_basePrice * 1.5)};
_colorIndex = lbValue[2304,(lbCurSel 2304)];
if(_basePrice < 0) exitWith {};
if(CASH < _basePrice) exitWith {hint format[localize "STR_Shop_Veh_NotEnough",[_basePrice - CASH] call life_fnc_numberText];};
_license = SEL(SEL(_vehicleList,_vIndex),2);
if(!(EQUAL(_license,"")) && {!(LICENSE_VALUE(_license,_shopSide))}) exitWith {hint localize "STR_Shop_Veh_NoLicense"};
_spawnPoints = SEL(life_veh_shop,1);
_spawnPoint = "";
if(EQUAL(typeName _spawnPoints,typeName [])) then
{
	{if(count(nearestObjects[(getMarkerPos _x),["Car","Ship","Air","Tank"],5]) == 0) exitWith {_spawnPoint = _x};} foreach _spawnPoints;
}
else
{
	if(count(nearestObjects[(getMarkerPos _spawnPoints),["Car","Ship","Air","Tank"],5]) == 0) exitWith {_spawnPoint = _spawnPoints};
};
if(EQUAL(_spawnPoint,"")) exitWith {hint localize "STR_Shop_Veh_Block";};
SUB(CASH,_basePrice);
hint format[localize "STR_Shop_Veh_Bought",getText(configFile >> "CfgVehicles" >> _className >> "displayName"),[_basePrice] call life_fnc_numberText];
_vehicle = createVehicle [_className, (getMarkerPos _spawnPoint), [], 0, "NONE"];
waitUntil {!isNil "_vehicle"};
_vehicle allowDamage false;
_vehicle lock 2;
_vehicle setVectorUp (surfaceNormal (getMarkerPos _spawnPoint));
_vehicle setDir (markerDir _spawnPoint);
_vehicle setPos (getMarkerPos _spawnPoint);
[[_vehicle,_colorIndex],"life_fnc_colorVehicle",true,false] call life_fnc_MP;
[_vehicle] call life_fnc_clearVehicleAmmo;
[[_vehicle,"trunk_in_use",false,true],"TON_fnc_setObjVar",false,false] call life_fnc_MP;
[[_vehicle,"vehicle_info_owners",[[getPlayerUID player,profileName]],true],"TON_fnc_setObjVar",false,false] call life_fnc_MP;
_vehicle disableTIEquipment true;
switch(playerSide) do
{
	case west:
	{
		[_vehicle,"cop_offroad",true] spawn life_fnc_vehicleAnimate;
	};
	case civilian:
	{
		if(EQUAL(SEL(life_veh_shop,2),"civ") && {_className == "B_Heli_Light_01_F"}) then
		{
			[_vehicle,"civ_littlebird",true] spawn life_fnc_vehicleAnimate;
		};
	};
};
_vehicle allowDamage true;
life_vehicles pushBack _vehicle;
[[getPlayerUID player,playerSide,_vehicle,1],"TON_fnc_keyManagement",false,false] call life_fnc_MP;
if(_mode) then
{
	if(!(_className in
	[
	//	"B_G_Offroad_01_armed_F",
	//	"B_MRAP_01_hmg_F"
	])) then
	{
		[[(getPlayerUID player),playerSide,_vehicle,_colorIndex],"TON_fnc_vehicleCreate",false,false] call life_fnc_MP;
	};
};
[0] call SOCK_fnc_updatePartial;
closeDialog 0;
true;