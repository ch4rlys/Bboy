#include <macro.h>

private["_class","_scope","_picture","_displayName","_vehicleClass","_side","_faction","_superClass","_speed","_armor","_seats","_hp","_fuel"];
_class = [_this,0,"",[""]] call BIS_fnc_param;
if(EQUAL(_class,"")) exitWith {[]};
if(!isClass (configFile >> CONFIG_VEHICLES >> _class)) exitWith {[]};

_scope = -1;
_picture = "";
_displayName = "";
_vehicleClass = "";
_side = -1;
_faction = "";
_speed = 0;
_armor = 0;
_seats = 0;
_hp = 0;
_fuel = 0;

_scope = FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,_class,"scope");
_picture = FETCH_CONFIG2(getText,CONFIG_VEHICLES,_class,"picture");
_displayName = FETCH_CONFIG2(getText,CONFIG_VEHICLES,_class,"displayName");
_vehicleClass = FETCH_CONFIG2(getText,CONFIG_VEHICLES,_class,"vehicleClass");
_side = FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,_class,"side");
_faction = FETCH_CONFIG2(getText,CONFIG_VEHICLES,_class,"faction");
_superClass = BASE_CONFIG(CONFIG_VEHICLES,_class);
_speed = FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,_class,"maxSpeed");
_armor = FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,_class,"armor");
_seats = FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,_class,"transportSoldier");
_hp = FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,_class,"enginePower");
_fuel = FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,_class,"fuelCapacity");

[_class,_scope,_picture,_displayName,_vehicleClass,_side,_faction,_superClass,_speed,_armor,_seats,_hp,_fuel];