#include <macro.h>
private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
if(isNull _vendor OR EQUAL(_type,"") OR (player distance _vendor > 10)) exitWith {};
_itemInfo = switch (_type) do
{
	case "olive": {["oliveU","oliveP",10000,(localize "STR_Process_Olive")];};
	case "wheat": {["wheatU","wheatP",10000,(localize "STR_Process_Wheat")];};
	case "oil": {["oil_unprocessed","oil_processed",10000,(localize "STR_Process_Oil")];};
	case "wine": {["wine_unprocessed","wine_processed",10000,(localize "STR_Process_Wine")];};
	case "tabacco": {["tabacco_unprocessed","tabacco_processed",10000,(localize "STR_Process_Tabacco")];};
	case "salt": {["salt_unrefined","salt_refined",10000,(localize "STR_Process_Salt")];};
	case "sand": {["sand","glass",10000,(localize "STR_Process_Sand")];};
	case "wood": {["woodU","woodP",10000,(localize "STR_Process_Wood")];};
	case "cement": {["rock","cement",10000,(localize "STR_Process_Cement")];};
	case "diamond": {["diamond_uncut","diamond_cut",10000,(localize "STR_Process_Diamond")];};
	case "diamond2": {["diamond_cut","diamond_cut2",10000,(localize "STR_Process_Diamond2")];};
	case "iron": {["iron_unrefined","iron_refined",10000,(localize "STR_Process_Iron")];};
	case "copper": {["copper_unrefined","copper_refined",10000,(localize "STR_Process_Copper")];};
	case "gold": {["goldbarU","goldbar",10000,(localize "STR_Process_GoldBar")];};
	case "cocaine": {["cocaine_unprocessed","cocaine_processed",10000,(localize "STR_Process_Cocaine")];};
	case "crack": {["cocaine_processed","crack",10000,(localize "STR_Process_Crack")];};
	case "heroin": {["heroin_unprocessed","heroin_processed",10000,(localize "STR_Process_Heroin")];};
	case "heroin2": {["heroin_processed","heroin_processed2",10000,(localize "STR_Process_Heroin2")];};
	case "opium": {["heroin_processed","opium",10000,(localize "STR_Process_Opium")];};
	case "marijuana": {["cannabis","marijuana",10000,(localize "STR_Process_Marijuana")];};
	case "hashish": {["marijuana","hashish",10000,(localize "STR_Process_Hashish")];};
	case "uranium": {["uraniumU","uraniumP",10000,(localize "STR_Process_Uranium")];};
	case "uranium2": {["uraniumP","uraniumP2",10000,(localize "STR_Process_Uranium2")];};
	case "abomb": {["uraniumP2","ABomb",9500000,(localize "STR_Process_ABomb")];};
	case "abomb2": {["ABomb","ABomb2",9500000,(localize "STR_Process_ABomb2")];};
	//black market
	case "goldbar_BM": {["goldbar","dollars_50K",0,(localize "STR_Process_BMarket")];};
	case "uraniumP2_BM": {["uraniumP2","dollars_40K",0,(localize "STR_Process_BMarket")];};
	case "antiquity_BM": {["antiquity","dollars_50K",0,(localize "STR_Process_BMarket")];};
	case "antiquity2_BM": {["antiquity2","dollars_90K",0,(localize "STR_Process_BMarket")];};
	case "abomb_BM": {["ABomb","dollars_1M",0,(localize "STR_Process_BMarket")];};
	default {[];};
};
if(EQUAL(count _itemInfo,0)) exitWith {};
_oldItem = SEL(_itemInfo,0);
_newItem = SEL(_itemInfo,1);
_cost = SEL(_itemInfo,2);
_upp = SEL(_itemInfo,3);
if(_vendor in [
//	marijuana_processor,
//	uranium_processor,
//	uranium2_processor,
//	coke_processor,
//	heroin_processor,
//	heroin2_processor,
//	opium_processor,
//	hashish_processor,
//	diamond2_processor
]) then
{
	_hasLicense = true;
}
else
{
	_hasLicense = LICENSE_VALUE(_type,"civ");
};
_itemName = M_CONFIG(getText,"VirtualItems",_newItem,"displayName");
_oldVal = ITEM_VALUE(_oldItem);
_cost = _cost * _oldVal;
if(EQUAL(_oldVal,0)) exitWith {};
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = GVAR_UINS "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
life_is_processing = true;

if(_hasLicense) then
{
	while{true} do
	{
		sleep 0.3;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};

	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};

	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};

	5 cutText ["","PLAIN"];

	titleText[format[localize "STR_Process_Processed",_oldVal,localize _itemName],"PLAIN"];

	life_is_processing = false;
}
else
{
	if(CASH < _cost) exitWith {hint format[localize "STR_Process_License",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};

	while{true} do
	{
		sleep 0.9;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	
	if(CASH < _cost) exitWith {hint format[localize "STR_Process_License",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};

	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};

	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};

	5 cutText ["","PLAIN"];

	titleText[format[localize "STR_Process_Processed2",_oldVal,localize _itemName,[_cost] call life_fnc_numberText],"PLAIN"];

	SUB(CASH,_cost);

	life_is_processing = false;
};