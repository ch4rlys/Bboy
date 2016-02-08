private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	case "life_inv_oilu": {(localize "STR_Item_OilU")};
	case "life_inv_oilp": {(localize "STR_Item_OilP")};
	case "life_inv_tabaccou": {(localize "STR_Item_TabaccoU")};
	case "life_inv_tabaccop": {(localize "STR_Item_TabaccoP")};
	case "life_inv_oliveU": {(localize "STR_Item_OliveU")};
	case "life_inv_oliveP": {(localize "STR_Item_OliveP")};
	case "life_inv_woodU": {(localize "STR_Item_WoodU")};
	case "life_inv_woodP": {(localize "STR_Item_WoodP")};
	case "life_inv_uraniumU": {(localize "STR_Item_UraniumU")};
	case "life_inv_uraniumP": {(localize "STR_Item_UraniumP")};
	case "life_inv_uraniumP2": {(localize "STR_Item_UraniumP2")};
	case "life_inv_wheatU": {(localize "STR_Item_WheatU")};
	case "life_inv_wheatP": {(localize "STR_Item_WheatP")};
	case "life_inv_heroinu": {(localize "STR_Item_HeroinU")};
	case "life_inv_heroinp": {(localize "STR_Item_HeroinP")};
	case "life_inv_heroinp2": {(localize "STR_Item_HeroinP2")};
	case "life_inv_opium": {(localize "STR_Item_Opium")};
	case "life_inv_cannabis": {(localize "STR_Item_Cannabis")};
	case "life_inv_marijuana": {(localize "STR_Item_Marijuana")};
	case "life_inv_hashish": {(localize "STR_Item_Hashish")};
	case "life_inv_apple": {(localize "STR_Item_Apple")};
	case "life_inv_psilocybe": {(localize "STR_Item_Psilocybe")};
	case "life_inv_rabbit": {(localize "STR_Item_RabbitMeat")};
	case "life_inv_water": {(localize "STR_Item_WaterBottle")};
	case "life_inv_coca": {(localize "STR_Item_CocaBottle")};
	case "life_inv_fuelE": {(localize "STR_Item_FuelE")};
	case "life_inv_fuelF": {(localize "STR_Item_FuelF")};
	case "life_inv_pickaxe": {(localize "STR_Item_Pickaxe")};
	case "life_inv_axe": {(localize "STR_Item_Axe")};
	case "life_inv_shovel": {(localize "STR_Item_Shovel")};
	case "life_inv_hoe": {(localize "STR_Item_Hoe")};
	case "life_inv_secateurs": {(localize "STR_Item_Secateurs")};
	case "life_inv_ABomb": {(localize "STR_Item_ABomb")};
	case "life_inv_ABomb2": {(localize "STR_Item_ABomb2")};
	case "life_inv_handcuffs": {(localize "STR_Item_handcuffs")};
	case "life_inv_copperore": {(localize "STR_Item_CopperOre")};
	case "life_inv_ironore": {(localize "STR_Item_IronOre")};
	case "life_inv_ironr": {(localize "STR_Item_IronIngot")};
	case "life_inv_copperr": {(localize "STR_Item_CopperIngot")};
	case "life_inv_sand": {(localize "STR_Item_Sand")};
	case "life_inv_salt": {(localize "STR_Item_Salt")};
	case "life_inv_saltr": {(localize "STR_Item_SaltR")};
	case "life_inv_glass": {(localize "STR_Item_Glass")};
	case "life_inv_diamond": {(localize "STR_Item_DiamondU")};
	case "life_inv_diamondr": {(localize "STR_Item_DiamondC")};
	case "life_inv_diamondr2": {(localize "STR_Item_DiamondC2")};
	case "life_inv_tbacon": {(localize "STR_Item_TBacon")};
	case "life_inv_redgull": {(localize "STR_Item_RedGull")};
	case "life_inv_lockpick": {(localize "STR_Item_Lockpick")};
	case "life_inv_peach": {(localize "STR_Item_Peach")};
	case "life_inv_coke": {(localize "STR_Item_CocaineU")};
	case "life_inv_cokep": {(localize "STR_Item_CocaineP")};
	case "life_inv_crack": {(localize "STR_Item_Crack")};
	case "life_inv_antiquity": {(localize "STR_Item_Antiquity")};
	case "life_inv_antiquity2": {(localize "STR_Item_Antiquity2")};
	case "life_inv_spikeStrip": {(localize "STR_Item_SpikeStrip")};
	case "life_inv_barrier": {(localize "STR_Item_Barrier")};
	case "life_inv_rock": {(localize "STR_Item_Rock")};
	case "life_inv_cement": {(localize "STR_Item_CementBag")};
	case "life_inv_goldbarU": {(localize "STR_Item_GoldBarU")};
	case "life_inv_goldbar": {(localize "STR_Item_GoldBar")};
	case "life_inv_dollars_1K": {(localize "STR_Item_Dollars_1K")};
	case "life_inv_dollars_2K": {(localize "STR_Item_Dollars_2K")};
	case "life_inv_dollars_3K": {(localize "STR_Item_Dollars_3K")};
	case "life_inv_dollars_4K": {(localize "STR_Item_Dollars_4K")};
	case "life_inv_dollars_5K": {(localize "STR_Item_Dollars_5K")};
	case "life_inv_dollars_6K": {(localize "STR_Item_Dollars_6K")};
	case "life_inv_dollars_7K": {(localize "STR_Item_Dollars_7K")};
	case "life_inv_dollars_8K": {(localize "STR_Item_Dollars_8K")};
	case "life_inv_dollars_9K": {(localize "STR_Item_Dollars_9K")};
	case "life_inv_dollars_10K": {(localize "STR_Item_Dollars_10K")};
	case "life_inv_dollars_20K": {(localize "STR_Item_Dollars_20K")};
	case "life_inv_dollars_30K": {(localize "STR_Item_Dollars_30K")};
	case "life_inv_dollars_40K": {(localize "STR_Item_Dollars_40K")};
	case "life_inv_dollars_50K": {(localize "STR_Item_Dollars_50K")};
	case "life_inv_dollars_60K": {(localize "STR_Item_Dollars_60K")};
	case "life_inv_dollars_70K": {(localize "STR_Item_Dollars_70K")};
	case "life_inv_dollars_80K": {(localize "STR_Item_Dollars_80K")};
	case "life_inv_dollars_90K": {(localize "STR_Item_Dollars_90K")};
	case "life_inv_dollars_100K": {(localize "STR_Item_Dollars_100K")};
	case "life_inv_dollars_200K": {(localize "STR_Item_Dollars_200K")};
	case "life_inv_dollars_300K": {(localize "STR_Item_Dollars_300K")};
	case "life_inv_dollars_400K": {(localize "STR_Item_Dollars_400K")};
	case "life_inv_dollars_500K": {(localize "STR_Item_Dollars_500K")};
	case "life_inv_dollars_600K": {(localize "STR_Item_Dollars_600K")};
	case "life_inv_dollars_700K": {(localize "STR_Item_Dollars_700K")};
	case "life_inv_dollars_800K": {(localize "STR_Item_Dollars_800K")};
	case "life_inv_dollars_900K": {(localize "STR_Item_Dollars_900K")};
	case "life_inv_dollars_1M": {(localize "STR_Item_Dollars_1M")};
	case "life_inv_blastingcharge": {(localize "STR_Item_BCharge")};
	case "life_inv_blastingcharge2": {(localize "STR_Item_BCharge2")};
	case "life_inv_blastingcharge3": {(localize "STR_Item_BCharge3")};
	case "life_inv_blastingcharge4": {(localize "STR_Item_BCharge4")};
	case "life_inv_boltcutter": {(localize "STR_Item_BCutter")};
	case "life_inv_defusekit": {(localize "STR_Item_DefuseKit")};
	case "life_inv_storagesmall": {(localize "STR_Item_StorageBS")};
	case "life_inv_storagebig": {(localize "STR_Item_StorageBL")};
	//license
	case "license_civ_driver": {(localize "STR_License_Driver")};
	case "license_civ_air": {(localize "STR_License_Pilot")};
	case "license_civ_heroin": {(localize "STR_License_Heroin")};
	case "license_civ_heroin2": {(localize "STR_License_Heroin2")};
	case "license_civ_opium": {(localize "STR_License_Opium")};
	case "license_civ_oil": {(localize "STR_License_Oil")};
	case "license_civ_tabacco": {(localize "STR_License_Tabacco")};
	case "license_civ_wood": {(localize "STR_License_Wood")};
	case "license_civ_uranium": {(localize "STR_License_Uranium")};
	case "license_civ_uranium2": {(localize "STR_License_Uranium2")};
	case "license_civ_olive": {(localize "STR_License_Olive")};
	case "license_civ_wheat": {(localize "STR_License_Wheat")};
	case "license_civ_boat": {(localize "STR_License_Boat")};
	case "license_civ_gun": {(localize "STR_License_Firearm")};
	case "license_civ_rebel": {(localize "STR_License_Rebel")};
	case "license_civ_rebelT": {(localize "STR_License_RebelT")};
	case "license_civ_revive": {(localize "STR_License_Revive")};
	case "license_civ_truck": {(localize "STR_License_Truck")};
	case "license_civ_diamond": {(localize "STR_License_Diamond")};
	case "license_civ_diamond2": {(localize "STR_License_Diamond2")};
	case "license_civ_copper": {(localize "STR_License_Copper")};
	case "license_civ_iron": {(localize "STR_License_Iron")};
	case "license_civ_gold": {(localize "STR_License_Gold")};
	case "license_civ_sand": {(localize "STR_License_Sand")};
	case "license_civ_salt": {(localize "STR_License_Salt")};
	case "license_civ_coke": {(localize "STR_License_Cocaine")};
	case "license_civ_crack": {(localize "STR_License_Crack")};
	case "license_civ_marijuana": {(localize "STR_License_Marijuana")};
	case "license_civ_hashish": {(localize "STR_License_Hashish")};
	case "license_civ_cement": {(localize "STR_License_Cement")};
};