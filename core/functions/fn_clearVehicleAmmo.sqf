#include <macro.h>

private["_vehicle","_veh"];
_vehicle = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {};
_veh = typeOf _vehicle;

if(EQUAL(_veh,"I_Plane_Fighter_03_CAS_F")) then
{
	_vehicle setVehicleAmmo 0;
};

if(EQUAL(_veh,"B_APC_Wheeled_01_cannon_F")) then
{
	_vehicle setVehicleAmmo 0;
};

if(EQUAL(_veh,"B_UAV_02_F")) then
{
	_vehicle setVehicleAmmo 0;
};

clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;