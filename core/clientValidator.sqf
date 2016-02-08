#define SPY "spy_log"
#define steamid getPlayerUID player

private["_vars"];
_vars =
[
	"life_revive_fee",
	"life_gangPrice",
	"life_gangUpgradeBase",
	"life_enableFatigue",
	"life_paycheck_period",
	"life_vShop_rentalOnly",
	"sell_array",
	"buy_array",
	"life_weapon_shop_array",
	"life_garage_prices",
	"life_garage_sell",
	"life_houseLimit",
	"life_gangUpgradeMultipler",
	"life_impound_car",
	"life_impound_boat",
	"life_impound_air",
	"life_impound_tank"
];

{
	if(!isNil {(missionNamespace getVariable _x)}) exitWith
	{
		[[profileName,steamid,format["VariableSetBeforeInitialized_%1",_x]],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
		[[profileName,format["Variable set before client initialized: %1",_x]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
		[[SPY,[(format["Variable set before client initialized: %1",_x])],profileName,steamid],"TON_fnc_logIt",false,false] call life_fnc_MP;
		sleep 0.5;
		failMission "SpyGlass";
	};
}
foreach _vars;