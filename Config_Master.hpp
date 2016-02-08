#define VITEMMACRO(NAME,DISPLAYNAME,VARNAME,WEIGHT,BUYPRICE,SELLPRICE,ILLEGAL,EDIBLE,ICON) class NAME { \
		variable = VARNAME; \
		weight = WEIGHT; \
		displayName = DISPLAYNAME; \
		buyPrice = BUYPRICE; \
		sellPrice = SELLPRICE; \
		illegal = ILLEGAL; \
		edible = EDIBLE; \
		icon = ICON; \
	};
	
#define LICENSEMACRO(NAME,DISPLAYNAME,VARNAME,PRICE,ILLEGAL,SIDE) class NAME { \
		variable = VARNAME; \
		displayName = DISPLAYNAME; \
		price = PRICE; \
		illegal = ILLEGAL; \
		side = SIDE; \
	};

#define true 1
#define false 0
#include "Config_Clothing.hpp"
#include "Config_Shops.hpp"

class Life_Settings
{
	save_civ_weapons = true;
	save_virtualItems = true;
	
	revive_cops = true;
	revive_civ = true;
	
	house_limit = 8;
	
	gang_price = 40000;
	gang_upgradeBase = 150000;
	gang_upgradeMultiplier = 2;
	
	enable_fatigue = true;
	
	total_maxWeight = 32;
	total_maxWeightT = 32;
	
	paycheck_period = 8;
	
	impound_car = 500;
	impound_boat = 1000;
	impound_air = 2000;
	impound_tank = 10000;
	
	vehicleShop_rentalOnly[] = {};
	
	crimes[] =
	{ 
		{"STR_Crime_1","350","1"}, 
		{"STR_Crime_2","1500","2"}, 
		{"STR_Crime_3","2500","3"}, 
		{"STR_Crime_4","3500","4"}, 
		{"STR_Crime_5","10000","5"}, 
		{"STR_Crime_6","5000","6"}, 
		{"STR_Crime_7","10000","7"} 
	};

	sellArray[] =
	{
		{ "SmokeShell", "", 0 },
		{ "HandGrenade_Stone","", "", 0 },
		{ "HandGrenade", "", 0 },
		{ "ClaymoreDirectionalMine_Remote_Mag", "", 0 },
		{ "APERSMine_Range_Mag", "", 0 },
		{ "APERSTripMine_Wire_Mag", "", 0 },
		{ "APERSBoundingMine_Range_Mag", "", 0 },
		{ "SLAMDirectionalMine_Wire_Mag", "", 0 },
		{ "ATMine_Range_Mag", "", 0 },
		{ "DemoCharge_Remote_Mag", "", 0 },
		{ "SatchelCharge_Remote_Mag", "", 0 },
		{ "hgun_ACPC2_F", "", 0 },
		{ "hgun_Pistol_heavy_01_F", "", 0 },
		{ "hgun_Pistol_heavy_02_F", "", 0 },
		{ "hgun_Rook40_F", "", 0 },
		{ "hgun_P07_F", "", 0 },
		{ "hgun_PDW2000_F", "", 0 },
		{ "SMG_01_F", "", 0 },
		{ "SMG_02_F", "", 0 },
		{ "arifle_SDAR_F", "", 0 },
		{ "arifle_TRG20_F", "", 0 },
		{ "arifle_TRG21_F", "", 0 },
		{ "arifle_TRG21_GL_F", "", 0 },
		{ "arifle_Mk20C_F", "", 0 },
		{ "arifle_Mk20_F", "", 0 },
		{ "arifle_Mk20_GL_F", "", 0 },
		{ "arifle_Katiba_C_F", "", 0 },
		{ "arifle_Katiba_F", "", 0 },
		{ "arifle_Katiba_GL_F", "", 0 },
		{ "arifle_MXC_F", "", 0 },
		{ "arifle_MXC_Black_F", "", 0 },
		{ "arifle_MX_F", "", 0 },
		{ "arifle_MX_Black_F", "", 0 },
		{ "arifle_MX_F", "", 0 },
		{ "arifle_MX_Black_F", "", 0 },
		{ "arifle_MX_GL_F", "", 0 },
		{ "arifle_MX_GL_Black_F", "", 0 },
		{ "arifle_MXM_F", "", 0 },
		{ "arifle_MXM_Black_F", "", 0 },
		{ "arifle_MX_SW_F", "", 0 },
		{ "LMG_Mk200_F", "", 0 },
		{ "LMG_Zafir_F", "", 0 },
		{ "srifle_EBR_F", "", 0 },
		{ "srifle_DMR_01_F", "", 0 },
		{ "srifle_GM6_F", "", 0 },
		{ "srifle_LRR_F", "", 0 },
		{ "launch_RPG32_F", "", 0 },
		{ "launch_Titan_F", "", 0 },
		{ "launch_Titan_short_F", "", 0 },
		{ "launch_NLAW_F", "", 0 },
		{ "optic_MRD", "", 0 },
		{ "optic_Yorris", "", 0 },
		{ "optic_ACO", "", 0 },
		{ "optic_Holosight", "", 0 },
		{ "optic_Hamr", "", 0 },
		{ "optic_Arco", "", 0 },
		{ "optic_MRCO", "", 0 },
		{ "optic_SOS", "", 0 },
		{ "optic_DMS", "", 0 },
		{ "optic_LRPS", "", 0 },
		{ "optic_NVS", "", 0 },
		{ "optic_Nightstalker", "", 0 },
		{ "optic_tws", "", 0 },
		{ "optic_tws_mg", "", 0 },
		{ "acc_pointer_IR", "", 0 },
		{ "acc_flashlight", "", 0 },
		{ "muzzle_snds_L", "", 0 },
		{ "muzzle_snds_M", "", 0 },
		{ "muzzle_snds_H", "", 0 },
		{ "muzzle_snds_H_MG", "", 0 },
		{ "muzzle_snds_B", "", 0 },
		{ "9Rnd_45ACP_Mag", "", 0 },
		{ "11Rnd_45ACP_Mag", "", 0 },
		{ "6Rnd_45ACP_Cylinder", "", 0 },
		{ "30Rnd_45ACP_Mag_SMG_01", "", 0 },
		{ "30Rnd_45ACP_Mag_SMG_01_tracer_green", "", 0 },
		{ "16Rnd_9x21_Mag", "", 0 },
		{ "30Rnd_9x21_Mag", "", 0 },
		{ "20Rnd_556x45_UW_mag", "", 0 },
		{ "30Rnd_556x45_Stanag", "", 0 },
		{ "30Rnd_556x45_Stanag_Tracer_Red", "", 0 },
		{ "30Rnd_556x45_Stanag_Tracer_Green", "", 0 },
		{ "30Rnd_556x45_Stanag_Tracer_Yellow", "", 0 },
		{ "30Rnd_65x39_caseless_green", "", 0 },
		{ "30Rnd_65x39_caseless_green_mag_Tracer", "", 0 },
		{ "30Rnd_65x39_caseless_mag", "", 0 },
		{ "30Rnd_65x39_caseless_mag_Tracer", "", 0 },
		{ "100Rnd_65x39_caseless_mag", "", 0 },
		{ "1Rnd_HE_Grenade_shell", "", 0 },
		{ "3Rnd_HE_Grenade_shell", "", 0 },
		{ "UGL_FlareWhite_F", "", 0 },
		{ "UGL_FlareGreen_F", "", 0 },
		{ "UGL_FlareRed_F", "", 0 },
		{ "UGL_FlareYellow_F", "", 0 },
		{ "UGL_FlareCIR_F", "", 0 },
		{ "3Rnd_UGL_FlareWhite_F", "", 0 },
		{ "3Rnd_UGL_FlareGreen_F", "", 0 },
		{ "3Rnd_UGL_FlareRed_F", "", 0 },
		{ "3Rnd_UGL_FlareYellow_F", "", 0 },
		{ "3Rnd_UGL_FlareCIR_F", "", 0 },
		{ "1Rnd_Smoke_Grenade_shell", "", 0 },
		{ "1Rnd_SmokeRed_Grenade_shell", "", 0 },
		{ "1Rnd_SmokeGreen_Grenade_shell", "", 0 },
		{ "1Rnd_SmokeYellow_Grenade_shell", "", 0 },
		{ "1Rnd_SmokePurple_Grenade_shell", "", 0 },
		{ "1Rnd_SmokeBlue_Grenade_shell", "", 0 },
		{ "1Rnd_SmokeOrange_Grenade_shell", "", 0 },
		{ "3Rnd_Smoke_Grenade_shell", "", 0 },
		{ "3Rnd_SmokeRed_Grenade_shell", "", 0 },
		{ "3Rnd_SmokeGreen_Grenade_shell", "", 0 },
		{ "3Rnd_SmokeYellow_Grenade_shell", "", 0 },
		{ "3Rnd_SmokePurple_Grenade_shell", "", 0 },
		{ "3Rnd_SmokeBlue_Grenade_shell", "", 0 },
		{ "3Rnd_SmokeOrange_Grenade_shell", "", 0 },
		{ "200Rnd_65x39_cased_Box", "", 0 },
		{ "200Rnd_65x39_cased_Box_Tracer", "", 0 },
		{ "150Rnd_762x51_Box", "", 0 },
		{ "150Rnd_762x51_Box_Tracer", "", 0 },
		{ "10Rnd_762x51_Mag", "", 0 },
		{ "20Rnd_762x51_Mag", "", 0 },
		{ "5Rnd_127x108_Mag", "", 0 },
		{ "5Rnd_127x108_APDS_Mag", "", 0 },
		{ "7Rnd_408_Mag", "", 0 },
		{ "RPG32_F", "", 0 },
		{ "RPG32_HE_F", "", 0 },
		{ "Titan_AP", "", 0 },
		{ "Titan_AT", "", 0 },
		{ "Titan_AA", "", 0 },
		{ "NLAW_F", "", 0 }
	};
	allowedSavedVirtualItems[] =
	{
		"waterBottle",
		"cocaBottle",
		"redgull",
		"apple",
		"peach",
		"oliveU",
		"rabbit_grilled",
		"tbacon",
		"psilocybe",
		"pickaxe",
		"axe",
		"shovel",
		"hoe",
		"secateurs",
		"handcuffs",
		"fuelFull",
		"lockpick",
	//	"boltcutter",
		"storagesmall",
		"storagebig",
		"blastingcharge",
		"blastingcharge2",
		"blastingcharge3",
		"spikeStrip",
		"barrier",
		"defusekit",
		"ABomb",
		"ABomb2",
		"dollars_1K",
		"dollars_2K",
		"dollars_3K",
		"dollars_4K",
		"dollars_5K",
		"dollars_6K",
		"dollars_7K",
		"dollars_8K",
		"dollars_9K",
		"dollars_10K",
		"dollars_20K",
		"dollars_30K",
		"dollars_40K",
		"dollars_50K",
		"dollars_60K",
		"dollars_70K",
		"dollars_80K",
		"dollars_90K",
		"dollars_100K",
		"dollars_200K",
		"dollars_300K",
		"dollars_400K",
		"dollars_500K",
		"dollars_600K",
		"dollars_700K",
		"dollars_800K",
		"dollars_900K",
		"dollars_1M"
	};
};

class VirtualItems
{
	//TOOLS
	VITEMMACRO(pickaxe, "STR_Item_Pickaxe", "pickaxe", 2, 80, 40, false, -1, "icons\pickaxe.paa")
	VITEMMACRO(axe, "STR_Item_Axe", "axe", 2, 80, 40, false, -1, "icons\axe.paa")
	VITEMMACRO(shovel, "STR_Item_Shovel", "shovel", 2, 80, 40, false, -1, "icons\shovel.paa")
	VITEMMACRO(hoe, "STR_Item_Hoe", "hoe", 2, 80, 40, false, -1, "icons\hoe.paa")
	VITEMMACRO(secateurs, "STR_Item_Secateurs", "secateurs", 2, 80, 40, false, -1, "icons\secateurs.paa")
	//HANDCUFFS
	VITEMMACRO(handcuffs, "STR_Item_Handcuffs", "handcuffs", 1, 100, 50, false, -1, "icons\handcuffs.paa")
	//LOCKPICK
	VITEMMACRO(lockpick, "STR_Item_Lockpick", "lockpick", 1, 200, 100, false, -1, "icons\lockpick.paa")
	//FUEL
	VITEMMACRO(fuelEmpty, "STR_Item_FuelE", "fuelEmpty", 2, -1, 10, false, -1, "icons\fuelempty.paa")
	VITEMMACRO(fuelFull, "STR_Item_FuelF", "fuelFull", 5, 30, 15, false, -1, "icons\fuel.paa")
	//SPIKE STRIP
	VITEMMACRO(spikeStrip, "STR_Item_SpikeStrip", "spikeStrip", 14, 1000, 500, false, -1, "")
	//BARRIER
	VITEMMACRO(barrier, "STR_Item_Barrier", "barrier", 22, 500, 250, false, -1, "icons\barrier.paa")
	//BLASTING CHARGE	
	VITEMMACRO(blastingcharge, "STR_Item_BCharge", "blastingCharge", 10, 32000, 28000, true, -1, "icons\blastingCharge.paa")
	VITEMMACRO(blastingcharge2, "STR_Item_BCharge2", "blastingCharge2", 12, 100000, 50000, true, -1, "icons\blastingCharge.paa")
	VITEMMACRO(blastingcharge3, "STR_Item_BCharge3", "blastingCharge3", 14, 150000, 75000, true, -1, "icons\blastingCharge.paa")
	VITEMMACRO(blastingcharge4, "STR_Item_BCharge4", "blastingCharge4", 16, 200000, 100000, true, -1, "icons\blastingCharge.paa")
	VITEMMACRO(blastingcharge5, "STR_Item_BCharge5", "blastingCharge5", 18, 300000, 150000, true, -1, "icons\blastingCharge.paa")
	//BOLTCUTTER
	VITEMMACRO(boltcutter, "STR_Item_BCutter", "boltCutter", 5, 7500, 5000, true, -1, "icons\boltcutters.paa")
	//DEFUSE KIT
	VITEMMACRO(defusekit, "STR_Item_DefuseKit", "defuseKit", 2, 500, 250, false, -1, "icons\defuseKit.paa")
	//STORAGE HOUSE
	VITEMMACRO(storagesmall, "STR_Item_StorageBS", "storageSmall", 5, 29000, 14500, false, -1, "icons\storageSmall.paa")
	VITEMMACRO(storagebig, "STR_Item_StorageBL", "storageBig", 10, 84000, 42000, false, -1, "icons\storageBig.paa")
	//OIL
	VITEMMACRO(oil_unprocessed, "STR_Item_OilU", "oilUnprocessed", 3, 650, 500, false, -1, "icons\oil.paa")
	VITEMMACRO(oil_processed, "STR_Item_OilP", "oilProcessed", 2, 1250, 1000, false, -1, "icons\oil.paa")
	//WINE
	VITEMMACRO(wine_unprocessed, "STR_Item_WineU", "wineUnprocessed", 2, 1100, 550, false, -1, "icons\wineU.paa")
	VITEMMACRO(wine_processed, "STR_Item_WineP", "wineProcessed", 2, 2200, 1100, false, -1, "icons\wineP.paa")
	//TABACCO
	VITEMMACRO(tabacco_unprocessed, "STR_Item_TabaccoU", "tabaccoUnprocessed", 4, 2250, 1250, false, -1, "icons\coke.paa")
	VITEMMACRO(tabacco_processed, "STR_Item_TabaccoP", "tabaccoProcessed", 2, 5000, 2500, false, -1, "icons\tabaccoP.paa")
	//WOOD
	VITEMMACRO(woodU, "STR_Item_WoodU", "woodU", 6, 1700, 850, false, -1, "icons\woodU.paa")
	VITEMMACRO(woodP, "STR_Item_WoodP", "woodP", 3, 3400, 1700, false, -1, "icons\woodP.paa")
	//OLIVE
	VITEMMACRO(oliveU, "STR_Item_OliveU", "oliveU", 2, 650, 325, false, 75, "icons\oliveU.paa")
	VITEMMACRO(oliveP, "STR_Item_OliveP", "oliveP", 1, 1300, 650, false, -1, "icons\oliveP.paa")
	//WHEAT
	VITEMMACRO(wheatU, "STR_Item_WheatU", "wheatU", 3, 825, 412, false, -1, "icons\wheat.paa")
	VITEMMACRO(wheatP, "STR_Item_WheatP", "wheatP", 1, 1650, 825, false, -1, "icons\salt.paa")
	//COPPER
	VITEMMACRO(copper_unrefined, "STR_Item_CopperOre", "copperUnrefined", 4, 1800, 900, false, -1, "icons\copperU.paa")
	VITEMMACRO(copper_refined, "STR_Item_CopperIngot", "copperRefined", 3, 2600, 1800, false, -1, "icons\copperP.paa")
	//IRON
	VITEMMACRO(iron_unrefined, "STR_Item_IronOre", "ironUnrefined", 3, 1100, 550, false, -1, "icons\ironU.paa")
	VITEMMACRO(iron_refined, "STR_Item_IronIngot", "ironRefined", 2, 2200, 1100, false, -1, "icons\ironP.paa")
	//GOLD
	VITEMMACRO(goldbarU, "STR_Item_GoldBarU", "goldBarU", 18, 18000, 9000, false, -1, "icons\goldbarU.paa")
	VITEMMACRO(goldbar, "STR_Item_GoldBar", "goldBar", 14, 36000, 18000, false, -1, "icons\goldbar.paa")
	//DOLLARS
	VITEMMACRO(dollars_1K, "STR_Item_Dollars_1K", "dollars_1K", 1, 800, 800, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_2K, "STR_Item_Dollars_2K", "dollars_2K", 1, 1600, 1600, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_3K, "STR_Item_Dollars_3K", "dollars_3K", 1, 2400, 2400, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_4K, "STR_Item_Dollars_4K", "dollars_4K", 1, 3200, 3200, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_5K, "STR_Item_Dollars_5K", "dollars_5K", 1, 4000, 4000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_6K, "STR_Item_Dollars_6K", "dollars_6K", 1, 4800, 4800, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_7K, "STR_Item_Dollars_7K", "dollars_7K", 1, 5600, 5600, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_8K, "STR_Item_Dollars_8K", "dollars_8K", 1, 6400, 6400, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_9K, "STR_Item_Dollars_9K", "dollars_9K", 1, 6800, 6800, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_10K, "STR_Item_Dollars_10K", "dollars_10K", 3, 8000, 8000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_20K, "STR_Item_Dollars_20K", "dollars_20K", 3, 16000, 16000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_30K, "STR_Item_Dollars_30K", "dollars_30K", 3, 24000, 24000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_40K, "STR_Item_Dollars_40K", "dollars_40K", 3, 32000, 32000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_50K, "STR_Item_Dollars_50K", "dollars_50K", 3, 40000, 40000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_60K, "STR_Item_Dollars_60K", "dollars_60K", 3, 48000, 48000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_70K, "STR_Item_Dollars_70K", "dollars_70K", 3, 56000, 56000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_80K, "STR_Item_Dollars_80K", "dollars_80K", 3, 64000, 64000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_90K, "STR_Item_Dollars_90K", "dollars_90K", 3, 68000, 68000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_100K, "STR_Item_Dollars_100K", "dollars_100K", 6, 80000, 80000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_200K, "STR_Item_Dollars_200K", "dollars_200K", 6, 160000, 160000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_300K, "STR_Item_Dollars_300K", "dollars_300K", 6, 240000, 240000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_400K, "STR_Item_Dollars_400K", "dollars_400K", 6, 320000, 320000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_500K, "STR_Item_Dollars_500K", "dollars_500K", 6, 400000, 400000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_600K, "STR_Item_Dollars_600K", "dollars_600K", 6, 480000, 480000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_700K, "STR_Item_Dollars_700K", "dollars_700K", 6, 560000, 560000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_800K, "STR_Item_Dollars_800K", "dollars_800K", 6, 640000, 640000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_900K, "STR_Item_Dollars_900K", "dollars_900K", 6, 680000, 680000, false, -1, "icons\money.paa")
	VITEMMACRO(dollars_1M, "STR_Item_Dollars_1M", "dollars_1M", 10, 800000, 800000, false, -1, "icons\money.paa")
	//URANIUM
	VITEMMACRO(uraniumU, "STR_Item_UraniumU", "uraniumU", 10, 5500, 2750, false, -1, "icons\uraniumU.paa")
	VITEMMACRO(uraniumP, "STR_Item_UraniumP", "uraniumP", 8, 11000, 5500, false, -1, "icons\uraniumP.paa")
	VITEMMACRO(uraniumP2, "STR_Item_UraniumP2", "uraniumP2", 8, 44000, 22000, false, -1, "icons\uraniumP.paa")
	//A-BOMB
	VITEMMACRO(ABomb, "STR_Item_ABomb", "ABomb", 32, -1, -1, false, -1, "icons\aBomb.paa")
	VITEMMACRO(ABomb2, "STR_Item_ABomb2", "ABomb2", 12, -1, -1, false, -1, "icons\nuclearSuitcase.paa")
	//SALT
	VITEMMACRO(salt_unrefined, "STR_Item_Salt", "saltUnrefined", 2, 700, 375, false, -1, "icons\salt.paa")
	VITEMMACRO(salt_refined, "STR_Item_SaltR", "saltRefined", 1, 1500, 750, false, -1, "icons\salt.paa")
	//SAND
	VITEMMACRO(sand, "STR_Item_Sand", "sand", 3, 1400, 700, false, -1, "icons\sand.paa")
	VITEMMACRO(glass, "STR_Item_Glass", "glass", 1, 2800, 1400, false, -1, "icons\glass.paa")
	//DIAMOND
	VITEMMACRO(diamond_uncut, "STR_Item_DiamondU", "diamondUncut", 16, 12500, 6250, false, -1, "icons\diamondU.paa")
	VITEMMACRO(diamond_cut, "STR_Item_DiamondC", "diamondCut", 12, 18750, 9375, false, -1, "icons\diamondC.paa")
	VITEMMACRO(diamond_cut2, "STR_Item_DiamondC2", "diamondCut2", 8, 25000, 12500, false, -1, "icons\diamondC2.paa")
	//ROCK
	VITEMMACRO(rock, "STR_Item_Rock", "rock", 4, 1300, 650, false, -1, "icons\diamondU.paa")
	VITEMMACRO(cement, "STR_Item_CementBag", "cement", 3, 2600, 1300, false, -1, "icons\cement.paa")
	//HEROIN
	VITEMMACRO(heroin_unprocessed, "STR_Item_HeroinU", "heroinUnprocessed", 4, 1200, 1000, true, -1, "icons\poppy.paa")
	VITEMMACRO(heroin_processed, "STR_Item_HeroinP", "heroinProcessed", 3, 3000, 2500, true, -1, "icons\morphine_b.paa")
	VITEMMACRO(heroin_processed2, "STR_Item_HeroinP2", "heroinProcessed2", 2, 4000, 3500, true, -1, "icons\heroin.paa")
	VITEMMACRO(opium, "STR_Item_Opium", "opium", 1, 3500, 3000, true, -1, "icons\opium.paa")
	//CANNABIS
	VITEMMACRO(cannabis, "STR_Item_Cannabis", "cannabis", 3, 3000, 1500, true, -1, "icons\cannabis.paa")
	VITEMMACRO(marijuana, "STR_Item_Marijuana", "marijuana", 2, 4500, 2250, true, -1, "icons\marijuana.paa")
	VITEMMACRO(hashish, "STR_Item_Hashish", "hashish", 2, 6000, 3000, true, -1, "icons\hashish.paa")
	//COCAINE
	VITEMMACRO(cocaine_unprocessed, "STR_Item_CocaineU", "cocaineUnprocessed", 4, 3000, 1500, true, -1, "icons\coke.paa")
	VITEMMACRO(cocaine_processed, "STR_Item_CocaineP", "cocaineProcessed", 2, 7350, 3675, true, -1, "icons\cocaine.paa")
	VITEMMACRO(crack, "STR_Item_Crack", "crack", 2, 10000, 5000, true, -1, "icons\crack.paa")
	//ANTIQUITY
	VITEMMACRO(antiquity, "STR_Item_Antiquity", "antiquity", 12, 30000, 15000, true, -1, "icons\antiquity.paa")
	//ANTIQUITY ILLEGAL
	VITEMMACRO(antiquity2, "STR_Item_Antiquity2", "antiquity2", 31, 100000, 50000, true, -1, "icons\antiquity2.paa")
	//DRINK
	VITEMMACRO(redgull, "STR_Item_RedGull", "redgull", 1, 10, 5, false, 100, "icons\redgull.paa")
	VITEMMACRO(waterBottle, "STR_Item_WaterBottle", "waterBottle", 2, 5, 2, false, 50, "icons\waterBottle.paa")
	VITEMMACRO(cocaBottle, "STR_Item_CocaBottle", "cocaBottle", 1, 10, 5, false, 50, "icons\cocaBottle.paa")
	//APPLE
	VITEMMACRO(apple, "STR_Item_Apple", "apple", 1, 80, 40, false, 10, "icons\apple.paa")
	//PEACH
	VITEMMACRO(peach, "STR_Item_Peach", "peach", 1, 70, 35, false, 10, "icons\peach.paa")
	//PSILOCYBE
	VITEMMACRO(psilocybe, "STR_Item_Psilocybe", "psilocybe", 2, 750, 375, false, 20, "icons\psilocybe.paa")
	//RABBIT
	VITEMMACRO(rabbit_grilled, "STR_Item_RabbitGrilled", "rabbitGrilled", 1, 40, 20, false, 25, "icons\cookedMeat.paa")
	//TBACON
	VITEMMACRO(tbacon, "STR_Item_TBacon", "tbacon", 1, 100, 50, false, 50, "icons\tbacon.paa")
};
class Licenses
{
	//VEHICLE
	LICENSEMACRO(driver,"STR_License_Driver","driver",2500,false,"civ")
	LICENSEMACRO(trucking,"STR_License_Truck","trucking",45000,false,"civ")
	LICENSEMACRO(boat,"STR_License_Boat","boat",5000,false,"civ")
	LICENSEMACRO(pilot,"STR_License_Pilot","pilot",75000,false,"civ")
	//LEGAL
	LICENSEMACRO(revive,"STR_License_Revive","revive",375000,false,"civ")
	LICENSEMACRO(oil,"STR_License_Oil","oil",21500,false,"civ")
	LICENSEMACRO(wine,"STR_License_Wine","wine",32500,false,"civ")
	LICENSEMACRO(tabacco,"STR_License_Tabacco","tabacco",68500,false,"civ")
	LICENSEMACRO(wood,"STR_License_Wood","wood",29000,false,"civ")
	LICENSEMACRO(olive,"STR_License_Olive","olive",14500,false,"civ")
	LICENSEMACRO(wheat,"STR_License_Wheat","wheat",19000,false,"civ")
	LICENSEMACRO(salt,"STR_License_Salt","salt",16500,false,"civ")
	LICENSEMACRO(sand,"STR_License_Sand","sand",22500,false,"civ")
	LICENSEMACRO(iron,"STR_License_Iron","iron",14500,false,"civ")
	LICENSEMACRO(gold,"STR_License_Gold","gold",115000,false,"civ")
	LICENSEMACRO(copper,"STR_License_Copper","copper",17000,false,"civ")
	LICENSEMACRO(cement,"STR_License_Cement","cement",13500,false,"civ")
	LICENSEMACRO(diamond,"STR_License_Diamond","diamond",48000,false,"civ")
	//LEGAL TO ILLEGAL
	LICENSEMACRO(diamond2,"STR_License_Diamond2","diamond2",82500,false,"civ")
	//ILLEGAL
	LICENSEMACRO(uranium,"STR_License_Uranium","uranium",250000,false,"civ")
	LICENSEMACRO(uranium2,"STR_License_Uranium2","uranium2",425000,false,"civ")
	LICENSEMACRO(marijuana,"STR_License_Marijuana","marijuana",40000,true,"civ")
	LICENSEMACRO(hashish,"STR_License_Hashish","hashish",47500,true,"civ")
	LICENSEMACRO(heroin,"STR_License_Heroin","heroin",42500,true,"civ")
	LICENSEMACRO(heroin2,"STR_License_Heroin2","heroin2",39500,true,"civ")
	LICENSEMACRO(opium,"STR_License_Opium","opium",37500,true,"civ")
	LICENSEMACRO(cocaine,"STR_License_Cocaine","cocaine",74000,false,"civ")
	LICENSEMACRO(crack,"STR_License_Crack","crack",57500,false,"civ")
	LICENSEMACRO(gun,"STR_License_Firearm","gun",47500,false,"civ")
	LICENSEMACRO(rebel,"STR_License_Rebel","rebel",4000000,true,"civ")
	LICENSEMACRO(rebelT,"STR_License_RebelT","rebelT",225000,true,"civ")
	//COP
	LICENSEMACRO(carCop,"STR_License_CarCop","carCop",5000,false,"cop")
	LICENSEMACRO(tankCop,"STR_License_TankCop","tankCop",250000,false,"cop")
	LICENSEMACRO(boatCop,"STR_License_BoatCop","boatCop",25000,false,"cop")
	LICENSEMACRO(airCop,"STR_License_AirCop","airCop",75000,false,"cop")
	//PREMIUM
	LICENSEMACRO(home,"STR_License_Home","home",-1,false,"civ")
	LICENSEMACRO(premV,"STR_License_premV","premV",-1,false,"civ")
	LICENSEMACRO(premW,"STR_License_premW","premW",-1,false,"civ")
};
class VirtualShops
{
	class market
	{
		name = "STR_Shops_Market";
		items[] =
		{
			"waterBottle",
			"cocaBottle",
			"redgull",
			"apple",
			"peach",
			"oliveU",
			"oliveP",
			"rabbit_grilled",
			"tbacon",
			"pickaxe",
			"axe",
			"shovel",
			"hoe",
			"secateurs",
			"handcuffs",
			"lockpick",
			"fuelFull",
			"storagesmall",
			"storagebig"
		};
	};
	class rebel
	{
		name = "STR_Shops_Rebel";
		items[] =
		{
			"waterBottle",
			"cocaBottle",
			"redgull",
			"apple",
			"peach",
			"oliveU",
			"oliveP",
			"psilocybe",
			"rabbit_grilled",
			"tbacon",
			"handcuffs",
			"pickaxe",
			"axe",
			"shovel",
			"hoe",
			"secateurs",
			"lockpick",
			"fuelFull",
			"barrier",
		//	"boltcutter",
			"blastingcharge",
			"blastingcharge2",
			"blastingcharge3",
			"blastingcharge4",
			"blastingcharge5",
			"storagesmall",
			"storagebig"
		};
	};
	class cop
	{
		name = "STR_Shops_Cop";
		items[] =
		{
			"waterBottle",
			"cocaBottle",
			"redgull",
			"apple",
			"peach",
			"rabbit_grilled",
			"tbacon",
			"handcuffs",
			"lockpick",
			"fuelFull",
			"spikeStrip",
			"barrier",
			"defusekit",
			"blastingcharge2",
			"blastingcharge3",
			"blastingcharge4",
			"blastingcharge5"
		};
	};
	class jail_market
	{
		name = "STR_Shops_Jail";
		items[] = {
			
			"waterBottle",
			"oliveU",
			"tbacon"
		
		};
	};
	class farmer
	{
		name = "STR_Shops_Farmer";
		items[] = {
			
			"wheatU",
			"wheatP",
			"hoe",
			"fuelFull"
		
		};
	};
	class oil
	{
		name = "STR_Shops_Oil";
		items[] = {
			
			"oil_unprocessed",
			"oil_processed",
			"pickaxe",
			"fuelFull"
		
		};
	};
	class wine
	{
		name = "STR_Shops_Wine";
		items[] = {
			
			"wine_unprocessed",
			"wine_processed",
			"secateurs",
			"fuelFull"
		
		};
	};
	class tabacco
	{
		name = "STR_Shops_Tabacco";
		items[] = {
			
			"tabacco_unprocessed",
			"tabacco_processed",
			"fuelFull"
		
		};
	};
	class wood
	{
		name = "STR_Shops_Wood";
		items[] = {
			
			"woodU",
			"woodP",
			"axe",
			"fuelFull"
		
		};
	};
	class nuclear
	{
		name = "STR_Shops_Nuclear";
		items[] = {

			"uraniumU",
			"uraniumP",
			"uraniumP2",
			"pickaxe",
			"fuelFull"
		
		};
	};
	class metals 
	{
		name = "STR_Shops_Minerals";
		items[] =
		{
			"iron_unrefined",
			"iron_refined",
			"copper_unrefined",
			"copper_refined",
			"goldbarU",
			"goldbar",
			"pickaxe",
			"fuelFull"
		};
	};
	class salt
	{
		name = "STR_Shops_Salt";
		items[] =
		{
			"salt_unrefined",
			"salt_refined",
			"shovel",
			"fuelFull"
		};
	};
	class cement
	{
		name = "STR_Shops_Cement";
		items[] =
		{
			"rock",
			"cement",
			"pickaxe",
			"fuelFull"
		};
	};
	class glass
	{
		name = "STR_Shops_Glass";
		items[] =
		{
			"sand",
			"glass",
			"shovel",
			"fuelFull"
		};
	};
	class diamond
	{
		name = "STR_Shops_Diamond";
		items[] =
		{
			"diamond_uncut",
			"diamond_cut",
			"diamond_cut2",
			"pickaxe",
			"fuelFull"
		};
	};
	class laundress
	{
		name = "STR_Shops_Laundress";
		items[] =
		{
			"dollars_1K",
			"dollars_2K",
			"dollars_3K",
			"dollars_4K",
			"dollars_5K",
			"dollars_6K",
			"dollars_7K",
			"dollars_8K",
			"dollars_9K",
			"dollars_10K",
			"dollars_20K",
			"dollars_30K",
			"dollars_40K",
			"dollars_50K",
			"dollars_60K",
			"dollars_70K",
			"dollars_80K",
			"dollars_90K",
			"dollars_100K",
			"dollars_200K",
			"dollars_300K",
			"dollars_400K",
			"dollars_500K",
			"dollars_600K",
			"dollars_700K",
			"dollars_800K",
			"dollars_900K",
			"dollars_1M"
		};
	};
	class drugdealer
	{
		name = "STR_Shops_DrugDealer";
		items[] =
		{
			"cocaine_unprocessed",
			"cocaine_processed",
			"crack",
			"heroin_unprocessed",
			"heroin_processed",
			"heroin_processed2",
			"opium",
			"psilocybe",
			"cannabis",
			"marijuana",
			"hashish"
		};
	};
	class antiquity
	{
		name = "STR_Shops_Antiquity";
		items[] =
		{
			"antiquity",
			"antiquity2",
			"fuelFull"
		};
	};
};
#include "Config_Vehicles.hpp"
#include "Config_Houses.hpp"