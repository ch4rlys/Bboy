#include <macro.h>

life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_barrier = ObjNull;
life_respawn_timer = 1;
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
life_vdFoot = viewDistance;
life_vdCar = viewDistance;
life_vdAir = viewDistance;
tawvd_addon_disable = true;
life_clothing_purchase = [-1,-1,-1,-1,-1];
life_maxWeight = LIFE_SETTINGS(getNumber,"total_maxWeight");
life_maxWeightT = LIFE_SETTINGS(getNumber,"total_maxWeightT");
life_carryWeight = 0;
life_use_atm = true;
life_is_arrested = false;
life_thirst = 100;
life_hunger = 100;
CASH = 0;
life_vehicles = [];
life_earplugs = false;
life_god = false;
life_frozen = false;
life_markers = false;

switch (playerSide) do
{
	case west:
	{
		BANK = 15000;
		life_paycheck = 3500;
	};
	case civilian:
	{
		BANK = 15000;
		life_paycheck = 1500;
	};
};
{
	SVAR_MNS [ITEM_VARNAME(configName _x),0];
}
foreach ("true" configClasses (missionConfigFile >> "VirtualItems"));
{
	_varName = getText(_x >> "variable");
	_sideFlag = getText(_x >> "side");
	SVAR_MNS [LICENSE_VARNAME(_varName,_sideFlag),false];
}
foreach ("true" configClasses (missionConfigFile >> "Licenses"));