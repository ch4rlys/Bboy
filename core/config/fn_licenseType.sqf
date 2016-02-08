private["_type","_ret","_var","_mode"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_type == "" OR _mode == -1) exitWith {[]};
switch (_mode) do
{
	case 0:
	{
		switch (_type) do
		{
			//civ
			case "driver": {_var = "license_civ_driver"};
			case "boat": {_var = "license_civ_boat"};
			case "pilot": {_var = "license_civ_air"};
			case "gun": {_var = "license_civ_gun"};
			case "oil": {_var = "license_civ_oil"};
			case "wine": {_var = "license_civ_wine"};
			case "tabacco": {_var = "license_civ_tabacco"};
			case "wood": {_var = "license_civ_wood"};
			case "uranium": {_var = "license_civ_uranium"};
			case "uranium2": {_var = "license_civ_uranium2"};
			case "olive": {_var = "license_civ_olive"};
			case "wheat": {_var = "license_civ_wheat"};
			case "heroin": {_var = "license_civ_heroin"};
			case "heroin2": {_var = "license_civ_heroin2"};
			case "opium": {_var = "license_civ_opium"};
			case "marijuana": {_var = "license_civ_marijuana"};
			case "hashish": {_var = "license_civ_hashish"};
			case "rebel": {_var = "license_civ_rebel"};
			case "rebelT": {_var = "license_civ_rebelT"};
			case "revive": {_var = "license_civ_revive"};
			case "truck":{_var = "license_civ_truck"};
			case "diamond": {_var = "license_civ_diamond"};
			case "diamond2": {_var = "license_civ_diamond2"};
			case "salt": {_var = "license_civ_salt"};
			case "cocaine": {_var = "license_civ_coke"};
			case "crack": {_var = "license_civ_crack"};
			case "sand": {_var = "license_civ_sand"};
			case "iron": {_var = "license_civ_iron"};
			case "gold": {_var = "license_civ_gold"};
			case "copper": {_var = "license_civ_copper"};
			case "cement": {_var = "license_civ_cement"};
			case "home": {_var = "license_civ_home"};
			case "premV": {_var = "license_civ_premV"};
			case "premW": {_var = "license_civ_premW"};
			//cop
			case "carCop": {_var = "license_cop_carCop"};
			case "tankCop": {_var = "license_cop_tankCop"};
			case "airCop": {_var = "license_cop_airCop"};
			case "boatCop": {_var = "license_cop_boatCop"};
			default {_var = ""};
		};
	};
	case 1:
	{
		switch (_type) do
		{
			//civ
			case "license_civ_driver": {_var = "driver"};
			case "license_civ_boat": {_var = "boat"};
			case "license_civ_air": {_var = "pilot"};
			case "license_civ_gun": {_var = "gun"};
			case "license_civ_oil": {_var = "oil"};
			case "license_civ_wine": {_var = "wine"};
			case "license_civ_tabacco": {_var = "tabacco"};
			case "license_civ_wood": {_var = "wood"};
			case "license_civ_uranium": {_var = "uranium"};
			case "license_civ_uranium2": {_var = "uranium2"};
			case "license_civ_olive": {_var = "olive"};
			case "license_civ_wheat": {_var = "wheat"};
			case "license_civ_heroin": {_var = "heroin"};
			case "license_civ_heroin2": {_var = "heroin2"};
			case "license_civ_opium": {_var = "opium"};
			case "license_civ_marijuana": {_var = "marijuana"};
			case "license_civ_hashish": {_var = "hashish"};
			case "license_civ_rebel": {_var = "rebel"};
			case "license_civ_rebelT": {_var = "rebelT"};
			case "license_civ_revive": {_var = "revive"};
			case "license_civ_truck":{_var = "truck"};
			case "license_civ_diamond": {_var = "diamond"};
			case "license_civ_diamond2": {_var = "diamond2"};
			case "license_civ_salt": {_var = "salt"};
			case "license_civ_coke": {_var = "cocaine"};
			case "license_civ_crack": {_var = "crack"};
			case "license_civ_sand": {_var = "sand"};
			case "license_civ_iron": {_var = "iron"};
			case "license_civ_gold": {_var = "gold"};
			case "license_civ_copper": {_var = "copper"};
			case "license_civ_cement": {_var = "cement"};
			case "license_civ_home": {_var = "home"};
			//cop
			case "license_cop_carCop": {_var = "carCop"};
			case "license_cop_tankCop": {_var = "tankCop"};
			case "license_cop_airCop": {_var = "airCop"};
			case "license_cop_boatCop": {_var = "boatCop"};
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;