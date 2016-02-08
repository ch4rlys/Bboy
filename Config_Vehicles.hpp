class CarShops
{
	//CIV
	class kart_shop
	{
		side = "civ";
		vehicles[] =
		{
			{ "C_Kart_01_Blu_F", 2000, "" },
			{ "C_Kart_01_green_F", 2000, "" },
			{ "C_Kart_01_white_F", 2000, "" },
			{ "C_Kart_01_yellow_F", 2000, "" },
			{ "C_Kart_01_orange_F", 2000, "" },
			{ "C_Kart_01_Red_F", 2000, "" },
			{ "C_Kart_01_black_F", 2000, "" },
			{ "C_Kart_01_Fuel_F", 2000, "" },
			{ "C_Kart_01_Vrana_F", 2000, "" },
			{ "C_Kart_01_Vrana_F", 2000, "" }
		};
	};
	class civ_ship
	{
		side = "civ";
		vehicles[] =
		{
			{ "C_Rubberboat", 3000, "" },
			{ "C_Boat_Civil_01_F", 40000, "boat" },
			{ "B_SDV_01_F", 900000, "boat" }
		};
	};
	class civ_car
	{
		side = "civ";
		vehicles[] =
		{
			{ "C_Quadbike_01_F", 2000, "" },
			{ "C_Hatchback_01_F", 12000, "driver" },
			{ "C_Hatchback_01_sport_F", 90000, "driver" },
			{ "C_Offroad_01_F", 30000, "driver" },
			{ "C_SUV_01_F", 32000, "driver" },
			{ "C_Van_01_transport_F", 34000, "driver" },				//Camionette
			{ "C_Van_01_box_F", 38000, "driver" },						//Fourgon caisse
			{ "B_MRAP_01_F", 50000, "driver" }							//Hunter
		};
	};
	class civ_truck
	{
		side = "civ";
		vehicles[] =
		{
			{ "I_Truck_02_transport_F", 70000, "trucking" },			//Zamak transport
			{ "I_Truck_02_covered_F", 80000, "trucking" },				//Zamak transport (couvert)
			{ "B_Truck_01_mover_F", 280000, "trucking" },				//HEMTT
			{ "B_Truck_01_transport_F", 140000, "trucking" },			//HEMTT transport
			{ "B_Truck_01_covered_F", 180000, "trucking" },				//HEMTT transport (couvert)
			{ "B_Truck_01_box_F", 500000, "trucking" }					//HEMTT cargaison
		};
	};
	class civ_air
	{
		side = "civ";
		vehicles[] =
		{
			{ "C_Heli_Light_01_civil_F", 100000, "pilot" },				//M-900
			{ "B_Heli_Light_01_F", 200000, "pilot" },					//Hummingbird
			{ "O_Heli_Light_02_unarmed_F", 260000, "pilot" },			//Orca (unarmed)
			{ "I_Heli_Transport_02_F", 540000, "pilot" }				//Mohawk
		};
	};
	class civ_airhq
	{
		side = "civ";
		vehicles[] =
		{
			{ "I_Plane_Fighter_03_CAS_F", 400000, "pilot" }				//Buzzard (AT)
		};
	};
	//REB
	class reb_car
	{
		side = "civ";
		vehicles[] =
		{
			{ "C_Quadbike_01_F", 2000, "rebel" },
			{ "C_Offroad_01_F", 30000, "rebel" },
			{ "O_G_Offroad_01_armed_F", 100000, "rebel" },
			{ "O_MRAP_02_F", 600000, "rebel" },							//Ifrit
			{ "O_MRAP_02_hmg_F", 1300000, "rebel" },					//Ifrit HMG
			{ "I_MRAP_03_F", 700000, "rebel" },							//Strider
			{ "I_MRAP_03_hmg_F", 1500000, "premV" },					//Strider HMG
			{ "O_Truck_03_transport_F", 400000, "rebel" },				//Tempest transport
			{ "O_Truck_03_covered_F", 600000, "premV" },				//Tempest transport (couvert)
			{ "O_Truck_03_device_F", 1200000, "rebel" }					//Tempest matériel
		};
	};
	class reb_tank
	{
		side = "civ";
		vehicles[] =
		{
			{ "O_MBT_02_cannon_F", 4000000, "premV" },					//Varsuk [GUERRE]
			{ "O_APC_Tracked_02_AA_F", 4000000, "premV" }				//Tigris [GUERRE]
		};
	};
	class reb_air
	{
		side = "civ";
		vehicles[] =
		{
			{ "C_Heli_Light_01_civil_F", 100000, "rebel" },				//M900
			{ "B_Heli_Light_01_F", 200000, "rebel" },					//Hummingbird
			{ "B_Heli_Light_01_armed_F", 2000000, "rebel" },			//Pawnee
			{ "O_Heli_Light_02_unarmed_F", 320000, "rebel" },			//Orca (unarmed)
			{ "O_Heli_Light_02_F", 3000000, "premV" },					//Orca
			{ "I_Heli_light_03_unarmed_F", 400000, "rebel" },			//Hellcat (unarmed)
			{ "I_Heli_light_03_F", 1200000, "premV" },					//Hellcat [GUERRE]
			{ "B_Heli_Transport_01_F", 620000, "premV" },				//Ghost Hawk
			{ "B_Heli_Attack_01_F", 4000000, "premV" },					//Blackfoot [GUERRE]
			{ "O_Heli_Attack_02_F", 4000000, "premV" }					//Kajman [GUERRE]
		};
	};
	class reb_airdlc
	{
		side = "civ";
		vehicles[] =
		{
			{ "O_Heli_Transport_04_bench_F", 400000, "rebel" },			//Taru (banc)
			{ "O_Heli_Transport_04_F", 400000, "premV" },				//Taru
			{ "B_Heli_Transport_03_unarmed_F", 1200000, "premV" }		//Human (unarmed)
		};
	};
	class reb_airhq
	{
		side = "civ";
		vehicles[] =
		{
			{ "I_Plane_Fighter_03_AA_F", 2000000, "rebel" },			//Buzzard (AA)
			{ "O_Plane_CAS_02_F", 4000000, "premV" }					//Neophron
		};
	};
	//COP
	class cop_ship
	{
		side = "cop";
		vehicles[] =
		{
			{ "O_Boat_Transport_01_F", 3000, "" },
			{ "C_Boat_Civil_01_police_F", 14000, "" },
			{ "O_Boat_Armed_01_hmg_F", 50000, "boatCop" },
			{ "O_SDV_01_F", 80000, "boatCop" }
		};
	};
	class cop_car
	{
		side = "cop";
		vehicles[] =
		{
			{ "B_UGV_01_F", 42000, "" },								//Stomper (drone)
			{ "C_Quadbike_01_black_F", 2000, "" },						//Quad
			{ "C_Hatchback_01_F", 12000, "carCop" },					//Hayon
			{ "C_Hatchback_01_sport_F", 90000, "carCop" },				//Hayon Sport
			{ "C_Offroad_01_F", 30000, "carCop" },						//Tout-terrain
			{ "O_G_Offroad_01_armed_F", 120000, "carCop" },				//Tout-terrain HMG
			{ "C_SUV_01_F", 32000, "carCop" },							//SUV
			{ "B_Truck_01_transport_F", 140000, "carCop" },				//HEMTT transport
			{ "B_Truck_01_covered_F", 180000, "carCop" },				//HEMTT transport (couvert)
			{ "B_Truck_01_box_F", 500000, "carCop" },					//HEMTT cargaison
			{ "B_MRAP_01_F", 50000, "carCop" },							//Hunter
		//	{ "B_MRAP_01_hmg_F", 128000, "" },							//Hunter HMG
			{ "I_MRAP_03_F", 700000, "carCop" },						//Strider
			{ "I_MRAP_03_hmg_F", 1500000, "carCop" },					//Strider HMG
			{ "B_APC_Wheeled_01_cannon_F", 200000, "carCop" }			//Marshall
		};
	};
	class cop_tank
	{
		side = "cop";
		vehicles[] =
		{
			{ "B_MBT_01_cannon_F", 1000000, "tankCop" },				//Slammer
			{ "B_APC_Tracked_01_AA_F", 1000000, "tankCop" }				//Cheetah
		};
	};
	class cop_air
	{
		side = "cop";
		vehicles[] =
		{
			{ "C_Heli_Light_01_civil_F", 100000, "airCop" },			//M-900
			{ "B_Heli_Light_01_F", 200000, "airCop" },					//Hummingbird
			{ "B_Heli_Light_01_armed_F", 2000000, "airCop" },			//Pawnee
			{ "O_Heli_Light_02_unarmed_F", 320000, "airCop" },			//Orca (unarmed)
			{ "O_Heli_Light_02_F", 3000000, "airCop" },					//Orca
			{ "I_Heli_light_03_unarmed_F", 400000, "airCop" },			//Hellcat (unarmed)
			{ "I_Heli_light_03_F", 1200000, "airCop" },					//Hellcat
			{ "I_Heli_Transport_02_F", 540000, "airCop" },				//Mohawk
			{ "B_Heli_Transport_01_F", 620000, "airCop" },				//Ghost Hawk
			{ "B_Heli_Attack_01_F", 4000000, "airCop" },				//Blackfoot
			{ "O_Heli_Attack_02_F", 4000000, "airCop" }					//Kajman
		};
	};
	class cop_airhq
	{
		side = "cop";
		vehicles[] =
		{
			{ "B_UAV_02_F", 190000, "airCop" },							//Greyhawk (drone)
			{ "B_Plane_CAS_01_F", 1000000, "airCop" },					//Wipeout
			{ "O_Plane_CAS_02_F", 4000000, "airCop" }					//Neophron
		};
	};
	class cop_airdlc
	{
		side = "cop";
		vehicles[] =
		{
		//	{ "O_Heli_Transport_04_bench_black_F", 400000, "airCop" },	//Taru banc(black)
		//	{ "O_Heli_Transport_04_black_F", 400000, "airCop" },		//Taru (black)
			{ "O_Heli_Transport_04_bench_F", 400000, "airCop" },		//Taru banc
			{ "O_Heli_Transport_04_F", 400000, "airCop" },				//Taru
			{ "B_Heli_Transport_03_F", 1800000, "airCop" }				//Human
		};
	};
};

//CFG
class CfgVehicles
{
	class Default {
		vItemSpace = -1;
		storageFee[] = { 250, 250, 250, 250 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		insurance = 0;
		chopShop = 1200;
		textures[] = {};
	};
	class Land_Cargo10_red_F : Default
	{
		vItemSpace = 690;
	};
	class Land_CargoBox_V1_F : Default
	{
		vItemSpace = 5000;
	};
	class Box_IND_Grenades_F : Default
	{
		vItemSpace = 400;
	};
	class B_supplyCrate_F
	{
		vItemSpace = 1200;
	};
	class C_Kart_01_Blu_F
	{
		vItemSpace = 10;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		insurance = 0;
		chopShop = 1000;
		textures[] = {};
	};
	class C_Kart_01_orange_F : C_Kart_01_Blu_F {};
	class C_Kart_01_yellow_F : C_Kart_01_Blu_F {};
	class C_Kart_01_black_F : C_Kart_01_Blu_F {};
	class C_Kart_01_green_F : C_Kart_01_Blu_F {};
	class C_Kart_01_white_F : C_Kart_01_Blu_F {};
	class C_Kart_01_Vrana_F : C_Kart_01_Blu_F {};
	class C_Kart_01_Fuel_F : C_Kart_01_Blu_F {};
	class C_Kart_01_Red_F : C_Kart_01_Blu_F {};

	class B_SDV_01_F {
		vItemSpace = 160;
		storageFee[] = { 15000, 15000, 15000, 15000 };
		garageSell[] = { 450000, 450000, 450000, 450000 };
		insurance = 0;
		chopShop = 450000;
		textures[] = {};
	};
	class O_SDV_01_F {
		vItemSpace = 40;
		storageFee[] = { 1500, 1500, 1500, 1500 };
		garageSell[] = { 40000, 40000, 40000, 40000 };
		insurance = 0;
		chopShop = 40000;
		textures[] = {};
	};
	class O_Boat_Armed_01_hmg_F {
		vItemSpace = -1;
		storageFee[] = { 17000, 17000, 17000, 17000 };
		garageSell[] = { 25000, 25000, 25000, 25000 };
		insurance = 0;
		chopShop = 25000;
		textures[] = {};
	};
	class C_Boat_Civil_01_F {
		vItemSpace = 260;
		storageFee[] = { 850, 850, 850, 850 };
		garageSell[] = { 20000, 20000, 20000, 20000 };
		insurance = 0;
		chopShop = 20000;
		textures[] = {};
	};
	class O_Boat_Transport_01_F {
		vItemSpace = 20;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 1500, 1500, 1500, 1500 };
		insurance = 0;
		chopShop = 1500;
		textures[] = {};
	};
	class C_Boat_Civil_01_police_F {
		vItemSpace = 40;
		storageFee[] = { 0, 0, 0, 0 };
		garageSell[] = { 7000, 7000, 7000, 7000 };
		insurance = 0;
		chopShop = 7000;
		textures[] = {};
	};
	class C_Rubberboat {
		vItemSpace = 20;
		storageFee[] = { 100, 100, 100, 100 };
		garageSell[] = { 1500, 1500, 1500, 1500 };
		insurance = 0;
		chopShop = 1500;
		textures[] = {};
	};
	class C_Quadbike_01_F {
		vItemSpace = 50;
		storageFee[] = { 75, 75, 75, 75 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		insurance = 0;
		chopShop = 1000;
		textures[] = {
			{ "Brown", "civ", {
				"\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa"
			} },
			{ "Black", "civ", {
				"\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa"
			} },
			{ "Blue", "civ", {
				"\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa"
			} },
			{ "Red", "civ", {
			"\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa"
			} },
			{ "White", "civ", {
				"\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa"
			} },
			{ "Digi Green", "reb", {
				"\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa"
			} },
			{ "Hunter Camo", "reb", {
				"\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
			} },
			{ "OPFOR", "reb", {
				"\a3\soft_f\quadbike_01\data\quadbike_01_opfor_co.paa"
			} }
		};
	};
	class B_UGV_01_F {
		vItemSpace = 60;
		storageFee[] = { 21000, 21000, 21000, 21000 };
		garageSell[] = { 21000, 21000, 21000, 21000 };
		insurance = 0;
		chopShop = 21000;
		textures[] = {};
	};
	class C_Quadbike_01_black_F {
		vItemSpace = 50;
		storageFee[] = { 75, 75, 75, 75 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		insurance = 0;
		chopShop = 1000;
		textures[] = {};
	};
	class C_Hatchback_01_F {
		vItemSpace = 80;
		storageFee[] = { 120, 120, 120, 120 };
		garageSell[] = { 6000, 6000, 6000, 6000 };
		insurance = 0;
		chopShop = 6000;
		textures[] = {
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\hatchback_FA.jpg"
			} },
			{ "Gendarme", "cop", {
				"textures\vehicles\cop\hatchback_GD.jpg"
			} },
			{ "Beige", "civ", {
				"\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"
			} },
			{ "Green", "civ", {
				"\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"
			} },
			{ "Blue", "civ", {
				"\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"
			} },
			{ "Dark Blue", "civ", {
				"\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"
			} },
			{ "Yellow", "civ", {
				"\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"
			} },
			{ "White", "civ", {
				"\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"
			} },
			{ "Grey", "civ", {
				"\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"
			} },
			{ "Black", "civ", {
				"\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa"
			} }
		};
	};
	class C_Hatchback_01_sport_F {
		vItemSpace = 80;
		storageFee[] = { 120, 120, 120, 120 };
		garageSell[] = { 45000, 45000, 45000, 45000 };
		insurance = 0;
		chopShop = 45000;
		textures[] = {
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\hatchback_FA.jpg"
			} },
			{ "Gendarme", "cop", {
				"textures\vehicles\cop\hatchback_GD.jpg"
			} },
			{ "Red Sport", "civ", {
				"\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport01_co.paa"
			} },
			{ "Dark Blue Sport", "civ", {
				"\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport02_co.paa"
			} },
			{ "Orange Sport", "civ", {
				"\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport03_co.paa"
			} },
			{ "Black/White Sport", "civ", {
				"\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport04_co.paa"
			} },
			{ "Beige Sport", "civ", {
				"\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport05_co.paa"
			} },
			{ "Green Sport", "civ", {
				"\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport06_co.paa"
			} }
		};
	};
	class O_G_Offroad_01_armed_F {
		vItemSpace = 20;
		storageFee[] = { 750, 750, 750, 750 };
		garageSell[] = { 60000, 60000, 60000, 60000 };
		insurance = 0;
		chopShop = 60000;
		textures[] = {
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\offroad_FA.jpg"
			} },
			{ "Rebelle", "reb", {
				"textures\vehicles\reb\offroad_REB.jpg"
			} },
			{ "Gendarmerie", "cop", {
				"textures\vehicles\cop\offroad_GD.jpg"
			} }
		};
	};
	class C_Offroad_01_F {
		vItemSpace = 130;
		storageFee[] = { 500, 500, 500, 500 };
		garageSell[] = { 15000, 15000, 15000, 15000 };
		insurance = 0;
		chopShop = 15000;
		textures[] = {
			{ "Red", "civ", {
				"\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa",
				"\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"
			} },
			{ "Yellow", "civ", {
				"\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa",
				"\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa"
			} },
			{ "White", "civ", {
				"\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa",
				"\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"
			} },
			{ "Blue", "civ", {
				"\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa",
				"\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"
			} },
			{ "Dark Red", "civ", {
				"\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa",
				"\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"
			} },
			{ "Blue/White", "civ", {
				"\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa",
				"\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"
			} },
			{ "Rebelle", "reb", {
				"textures\vehicles\reb\offroad_REB.jpg"
			} },
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\offroad_FA.jpg"
			} },
			{ "Gendarmerie", "cop", {
				"textures\vehicles\cop\offroad_GD.jpg"
			} }
		};
	};
	class C_SUV_01_F {
		vItemSpace = 100;
		storageFee[] = { 450, 450, 450, 450 };
		garageSell[] = { 16000, 16000, 16000, 16000 };
		insurance = 0;
		chopShop = 16000;
		textures[] = {
			{ "Dark Red", "civ", {
				"\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"
			} },
			{ "Black", "civ", {
				"\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa"
			} },
			{ "Silver", "civ", {
				"\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"
			} },
			{ "Orange", "civ", {
				"\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa"
			} },
			{ "Gendarmerie", "cop", {
				"textures\vehicles\cop\suv_GD.jpg"
			} },
			{ "Douane", "cop", {
				"textures\vehicles\cop\suv_DO.jpg"
			} }
		};
	};
	class C_Van_01_transport_F {
		vItemSpace = 150;
		storageFee[] = { 250, 250, 250, 250 };
		garageSell[] = { 17000, 17000, 17000, 17000 };
		insurance = 0;
		chopShop = 17000;
		textures[] = {
			{ "White", "civ", {
				"\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
			} },
			{ "Red", "civ", {
				"\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
			} },
			{ "Black", "civ", {
				"\a3\soft_f_gamma\Van_01\Data\van_01_ext_black_co.paa"
			} }
		};
	};
	class C_Van_01_box_F {
		vItemSpace = 170;
		storageFee[] = { 250, 250, 250, 250 };
		garageSell[] = { 19000, 19000, 19000, 19000 };
		insurance = 0;
		chopShop = 19000;
		textures[] = {
			{ "White", "civ", {
				"\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
			} },
			{ "Red", "civ", {
				"\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
			} },
			{ "Black", "civ", {
				"\a3\soft_f_gamma\Van_01\Data\van_01_ext_black_co.paa"
			} }
		};
	};
	class C_Van_01_fuel_F {
		vItemSpace = 210;
		storageFee[] = { 250, 250, 250, 250 };
		garageSell[] = { 14000, 14000, 14000, 14000 };
		insurance = 0;
		chopShop = 1000;
		textures[] = {
			{ "White", "civ", {
				"\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
			} },
			{ "Red", "civ", {
				"\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
			} }
		};
	};
	class I_Truck_02_transport_F {
		vItemSpace = 280;
		storageFee[] = { 500, 500, 500, 500 };
		garageSell[] = { 35000, 35000, 35000, 35000 };
		insurance = 0;
		chopShop = 35000;
		textures[] = {
			{ "Orange", "civ", {
				"\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
				"\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
			} },
			{ "Black", "civ", {
				"#(argb,8,8,3)color(0.09,0.09,0.09,1)",
				"\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
			} }
		};
	};
	class I_Truck_02_covered_F {
		vItemSpace = 320;
		storageFee[] = { 500, 500, 500, 500 };
		garageSell[] = { 45000, 45000, 45000, 45000 };
		insurance = 0;
		chopShop = 45000;
		textures[] = {
			{ "Orange", "civ", {
				"\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
				"\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
			} },
			{ "Black", "civ", {
				"#(argb,8,8,3)color(0.09,0.09,0.09,1)",
				"\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
			} }
		};
	};
	class B_Truck_01_mover_F {
		vItemSpace = 300;
		storageFee[] = { 22000, 22000, 22000, 22000 };
		garageSell[] = { 120000, 120000, 120000, 120000 };
		insurance = 0;
		chopShop = 120000;
		textures[] = {
			{ "Civil (khaki)", "civ", {
				"textures\vehicles\civ\hemtt_p1_CIV.jpg",
				"textures\vehicles\civ\hemtt_p2_CIV.jpg"
			} }
		};
	};
	class B_Truck_01_transport_F {
		vItemSpace = 360;
		storageFee[] = { 14000, 14000, 14000, 14000 };
		garageSell[] = { 70000, 70000, 70000, 70000 };
		insurance = 0;
		chopShop = 70000;
		textures[] = {
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\hemtt_p1_FA.jpg",
				"textures\vehicles\cop\hemtt_p2_FA.jpg"
			} },
			{ "Civil (khaki)", "civ", {
				"textures\vehicles\civ\hemtt_p1_CIV.jpg",
				"textures\vehicles\civ\hemtt_p2_CIV.jpg"
			} }
		};
	};
	class B_Truck_01_covered_F {
		vItemSpace = 460;
		storageFee[] = { 16000, 16000, 16000, 16000 };
		garageSell[] = { 90000, 90000, 90000, 90000 };
		insurance = 0;
		chopShop = 90000;
		textures[] = {
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\hemtt_p1_FA.jpg",
				"textures\vehicles\cop\hemtt_p2_FA.jpg"
			} },
			{ "Civil (khaki)", "civ", {
				"textures\vehicles\civ\hemtt_p1_CIV.jpg",
				"textures\vehicles\civ\hemtt_p2_CIV.jpg"
			} }
		};
	};
	class B_Truck_01_box_F {
		vItemSpace = 760;
		storageFee[] = { 27000, 27000, 27000, 27000 };
		garageSell[] = { 250000, 250000, 250000, 250000 };
		insurance = 0;
		chopShop = 250000;
		textures[] = {
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\hemtt_p1_FA.jpg",
				"textures\vehicles\cop\hemtt_p2_FA.jpg"
			} },
			{ "Civil (khaki)", "civ", {
				"textures\vehicles\civ\hemtt_p1_CIV.jpg",
				"textures\vehicles\civ\hemtt_p2_CIV.jpg"
			} }
		};
	};
	class O_Truck_03_transport_F {
		vItemSpace = 380;
		storageFee[] = { 27000, 27000, 27000, 27000 };
		garageSell[] = { 200000, 200000, 200000, 200000 };
		insurance = 0;
		chopShop = 200000;
		textures[] = {};
	};
	class O_Truck_03_covered_F {
		vItemSpace = 480;
		storageFee[] = { 32000, 32000, 32000, 32000 };
		garageSell[] = { 300000, 300000, 300000, 300000 };
		insurance = 0;
		chopShop = 300000;
		textures[] = {};
	};
	class O_Truck_03_device_F {
		vItemSpace = 680;
		storageFee[] = { 90000, 90000, 90000, 90000 };
		garageSell[] = { 600000, 600000, 600000, 600000 };
		insurance = 0;
		chopShop = 600000;
		textures[] = {};
	};
	class B_MRAP_01_F {
		vItemSpace = 40;
		storageFee[] = { 900, 900, 900, 900 };
		garageSell[] = { 25000, 25000, 25000, 25000 };
		insurance = 0;
		chopShop = 25000;
		textures[] = {
			{ "Defense Civile", "civ", {
				"textures\vehicles\civ\hunter_p1_CIV.jpg",
				"textures\vehicles\civ\hunter_p2_CIV.jpg"
			} },
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\hunter_p1_FA.jpg",
				"textures\vehicles\cop\hunter_p2_FA.jpg"
			} }
		};
	};
	class B_MRAP_01_hmg_F {
		vItemSpace = -1;
		storageFee[] = { 4000, 4000, 4000, 4000 };
		garageSell[] = { 1000, 1000, 1000, 1000 };
		insurance = 0;
		chopShop = 1000;
		textures[] = {};
	};
	class O_MRAP_02_F {
		vItemSpace = 20;
		storageFee[] = { 2500, 2500, 2500, 2500 };
		garageSell[] = { 300000, 300000, 300000, 300000 };
		insurance = 0;
		chopShop = 300000;
		textures[] = {};
	};
	class O_MRAP_02_hmg_F {
		vItemSpace = -1;
		storageFee[] = { 14000, 14000, 14000, 14000 };
		garageSell[] = { 650000, 650000, 650000, 650000 };
		insurance = 0;
		chopShop = 650000;
		textures[] = {};
	};
	class I_MRAP_03_F {
		vItemSpace = 20;
		storageFee[] = { 6500, 6500, 6500, 6500 };
		garageSell[] = { 350000, 350000, 350000, 350000 };
		insurance = 0;
		chopShop = 350000;
		textures[] = {
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\strider_FA.jpg"
			} },
			{ "Rebelle", "reb", {
				"textures\vehicles\reb\strider_REB.jpg"
			} }
		};
	};
	class I_MRAP_03_hmg_F {
		vItemSpace = -1;
		storageFee[] = { 15700, 15700, 15700, 15700 };
		garageSell[] = { 750000, 750000, 750000, 750000 };
		insurance = 0;
		chopShop = 750000;
		textures[] = {
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\strider_FA.jpg",
				"textures\vehicles\cop\camo_FA.jpg"
			} },
			{ "Rebelle", "reb", {
				"textures\vehicles\reb\strider_REB.jpg",
				"#(argb,8,8,3)color(0.08,0.08,0.08,1)"
			} }
		};
	};
	class B_APC_Wheeled_01_cannon_F {
		vItemSpace = 200;
		storageFee[] = { 3500, 3500, 3500, 3500 };
		garageSell[] = { 95000, 95000, 95000, 95000 };
		insurance = 0;
		chopShop = 95000;
		textures[] = {};
	};
	class B_MBT_01_cannon_F {
		vItemSpace = -1;
		storageFee[] = { 120000, 120000, 120000,120000 };
		garageSell[] = { 500000, 500000, 500000, 500000 };
		insurance = 0;
		chopShop = 500000;
		textures[] = {};
	};
	class O_MBT_02_cannon_F {
		vItemSpace = -1;
		storageFee[] = { 120000, 120000, 120000, 120000 };
		garageSell[] = { 2000000, 2000000, 2000000, 2000000 };
		insurance = 0;
		chopShop = 2000000;
		textures[] = {};
	};
	class B_APC_Tracked_01_AA_F {
		vItemSpace = -1;
		storageFee[] = { 90000, 90000, 90000, 90000 };
		garageSell[] = { 500000, 500000, 500000, 500000 };
		insurance = 0;
		chopShop = 500000;
		textures[] = {};
	};
	class O_APC_Tracked_02_AA_F {
		vItemSpace = -1;
		storageFee[] = { 90000, 90000, 90000, 90000 };
		garageSell[] = { 2000000, 2000000, 2000000, 2000000 };
		insurance = 0;
		chopShop = 2000000;
		textures[] = {};
	};
	class B_Heli_Light_01_F {
		vItemSpace = 40;
		storageFee[] = { 3000, 3000, 3000, 3000 };
		garageSell[] = { 100000, 100000, 100000, 100000 };
		insurance = 0;
		chopShop = 100000;
		textures[] = {
			{ "Sheriff", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa"
			} },
			{ "Black", "civ", {
				"\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa"
			} },
			{ "Civ Blue", "civ", {
				"\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
			} },
			{ "Civ Red", "civ", {
				"\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
			} },
			{ "Blueline", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
			} },
			{ "Elliptical", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
			} },
			{ "Furious", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
			} },
			{ "Jeans Blue", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
			} },
			{ "Speedy Redline", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
			} },
			{ "Sunset", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
			} },
			{ "Vrana", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
			} },
			{ "Waves Blue", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"
			} },
			{ "Rebelle", "reb", {
				"textures\vehicles\reb\birdPawnee_REB.jpg"
			} },
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\birdPawnee_FA.jpg"
			} }
		};
	};
	class C_Heli_Light_01_civil_F
	{
		vItemSpace = 30;
		storageFee[] = { 3000, 3000, 3000, 3000 };
		garageSell[] = { 50000, 50000, 50000, 50000 };
		insurance = 0;
		chopShop = 50000;
		textures[] = {
			{ "Sheriff", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa"
			} },
			{ "Black", "civ", {
				"\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa"
			} },
			{ "Civ Blue", "civ", {
				"\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
			} },
			{ "Civ Red", "civ", {
				"\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
			} },
			{ "Blueline", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
			} },
			{ "Elliptical", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
			} },
			{ "Furious", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
			} },
			{ "Jeans Blue", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
			} },
			{ "Speedy Redline", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
			} },
			{ "Sunset", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
			} },
			{ "Vrana", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
			} },
			{ "Waves Blue", "civ", {
				"\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"
			} },
			{ "Rebelle", "reb", {
				"textures\vehicles\reb\birdPawnee_REB.jpg"
			} },
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\birdPawnee_FA.jpg"
			} }
		};
	};
	class O_Heli_Light_02_F {
		vItemSpace = -1;
		storageFee[] = { 23700, 23700, 23700, 23700 };
		garageSell[] = { 1500000, 1500000, 1500000, 1500000 };
		insurance = 0;
		chopShop = 1500000;
		textures[] = {
			{ "OPFOR", "reb", {
				"\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa" 
			} },
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\orca_FA.jpg" 
			} }
		};
	};
	class O_Heli_Light_02_unarmed_F {
		vItemSpace = 125;
		storageFee[] = { 6000, 6000, 6000, 6000 };
		garageSell[] = { 160000, 160000, 160000, 160000 };
		insurance = 0;
		chopShop = 160000;
		textures[] = {
			{ "Black", "civ", {
				"\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa"
			} },
			{ "White/Blue", "civ", {
				"\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa" 
			} },
			{ "OPFOR", "reb", {
				"\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa" 
			} },
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\orca_FA.jpg" 
			} }
		};
	};
	class B_Heli_Light_01_armed_F {
		vItemSpace = -1;
		storageFee[] = { 7300, 7300, 7300, 7300 };
		garageSell[] = { 1000000, 1000000, 1000000, 1000000 };
		insurance = 0;
		chopShop = 1000000;
		textures[] = {
			{ "Rebelle", "reb", {
				"textures\vehicles\reb\birdPawnee_REB.jpg"
			} },
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\birdPawnee_FA.jpg"
			} }
		};
	};
	class I_Heli_light_03_unarmed_F {
		vItemSpace = -1;
		storageFee[] = { 35000, 35000, 35000, 35000 };
		garageSell[] = { 200000, 200000, 200000, 200000 };
		insurance = 0;
		chopShop = 200000;
		textures[] = {
			{ "Rebelle", "reb", {
				"textures\vehicles\reb\hellcat_REB.jpg"
			} },
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\hellcat_FA.jpg"
			} }
		};
	};
	class I_Heli_light_03_F {
		vItemSpace = -1;
		storageFee[] = { 49000, 49000, 49000, 49000 };
		garageSell[] = { 600000, 600000, 600000, 600000 };
		insurance = 0;
		chopShop = 600000;
		textures[] = {
			{ "Rebelle", "reb", {
				"textures\vehicles\reb\hellcat_REB.jpg"
			} },
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\hellcat_FA.jpg" 
			} }
		};
	};
	class B_Heli_Transport_01_F {
		vItemSpace = 120;
		storageFee[] = { 56000, 56000, 56000, 56000 };
		garageSell[] = { 310000, 310000, 310000, 310000 };
		insurance = 0;
		chopShop = 310000;
		textures[] = {
			{ "Rebelle", "reb", {
				"textures\vehicles\reb\gHawk_p1_REB.jpg",
				"textures\vehicles\reb\gHawk_p2_REB.jpg"
			} },
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\gHawk_p1_FA.jpg",
				"textures\vehicles\cop\gHawk_p2_FA.jpg"
			} }
		};
	};
	class I_Heli_Transport_02_F {
		vItemSpace = 280;
		storageFee[] = { 51800, 51800, 51800, 51800 };
		garageSell[] = { 400000, 400000, 400000, 400000 };
		insurance = 0;
		chopShop = 400000;
		textures[] = {
			{ "Black", "civ", {
				"#(argb,8,8,3)color(0.08,0.08,0.08,1)",
				"#(argb,8,8,3)color(0.09,0.09,0.09,1)",
				"#(argb,8,8,3)color(0.08,0.08,0.08,1)"
			} },
			{ "Ion", "civ", {
				"\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_ion_co.paa",
				"\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_ion_co.paa",
				"\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_ion_co.paa"
			} },
			{ "Dahoman", "civ", {
				"\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_1_dahoman_co.paa",
				"\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_2_dahoman_co.paa",
				"\a3\air_f_beta\Heli_Transport_02\Data\Skins\heli_transport_02_3_dahoman_co.paa"
			} },
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\mohawk_p1_FA.jpg",
				"textures\vehicles\cop\mohawk_p2_FA.jpg",
				"#(argb,8,8,3)color(0.09,0.09,0.09,1)"
			} }
		};
	};
	class B_Heli_Transport_03_F {
		vItemSpace = -1;
		storageFee[] = { 136000, 136000, 136000, 136000 };
		garageSell[] = { 600000, 600000, 600000, 600000 };
		insurance = 0;
		chopShop = 600000;
		textures[] = {};
	};
	class B_Heli_Transport_03_unarmed_F {
		vItemSpace = 330;
		storageFee[] = { 136000, 136000, 136000, 136000 };
		garageSell[] = { 600000, 600000, 600000, 600000 };
		insurance = 0;
		chopShop = 600000;
		textures[] = {};
	};
	class O_Heli_Attack_02_F {
		vItemSpace = -1;
		storageFee[] = { 140000, 140000, 140000, 140000 };
		garageSell[] = { 2000000, 2000000, 2000000, 2000000 };
		insurance = 0;
		chopShop = 2000000;
		textures[] = {
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\kajman_p1_FA.jpg",
				"textures\vehicles\cop\kajman_p2_FA.jpg"
			} },
			{ "Rebelle", "reb", {
				"textures\vehicles\reb\kajman_p1_REB.jpg",
				"textures\vehicles\reb\kajman_p2_REB.jpg"
			} }
		};
	};
	class B_Heli_Attack_01_F {
		vItemSpace = -1;
		storageFee[] = { 170000, 170000, 170000, 170000 };
		garageSell[] = { 2000000, 2000000, 2000000, 2000000 };
		insurance = 0;
		chopShop = 2000000;
		textures[] = {
			{ "Rebelle", "reb", {
				"textures\vehicles\reb\bFoot_REB.jpg"
			} },
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\bFoot_FA.jpg"
			} }
		};
	};
	class O_Heli_Transport_04_bench_F {
		vItemSpace = 40;
		storageFee[] = { 27000, 27000, 27000, 27000 };
		garageSell[] = { 200000, 200000, 200000, 200000 };
		insurance = 0;
		chopShop = 200000;
		textures[] = {};
	};
	class O_Heli_Transport_04_F
	{
		vItemSpace = 40;
		storageFee[] = { 27000, 27000, 27000, 27000 };
		garageSell[] = { 200000, 200000, 200000, 200000 };
		insurance = 0;
		chopShop = 200000;
		textures[] = {};
	};
	class I_Plane_Fighter_03_AA_F
	{
		vItemSpace = -1;
		storageFee[] = { 175000, 175000, 175000, 175000 };
		garageSell[] = { 1000000, 1000000, 1000000, 1000000 };
		insurance = 0;
		chopShop = 1000000;
		textures[] = {};
	};
	class I_Plane_Fighter_03_CAS_F {
		vItemSpace = 20;
		storageFee[] = { 17500, 17500, 17500, 17500 };
		garageSell[] = { 200000, 200000, 200000, 200000 };
		insurance = 0;
		chopShop = 200000;
		textures[] = {};
	};
	class B_Plane_CAS_01_F {
		vItemSpace = -1;
		storageFee[] = { 175000, 175000, 175000, 175000 };
		garageSell[] = { 500000, 500000, 500000, 500000 };
		insurance = 0;
		chopShop = 500000;
		textures[] = {};
	};
	class B_UAV_02_F {
		vItemSpace = 30;
		storageFee[] = { 95000, 95000, 95000, 95000 };
		garageSell[] = { 95000, 95000, 95000, 95000 };
		insurance = 0;
		chopShop = 95000;
		textures[] = {};
	};
	class O_Plane_CAS_02_F {
		vItemSpace = -1;
		storageFee[] = { 300000, 300000, 300000, 300000 };
		garageSell[] = { 2000000, 2000000, 2000000, 2000000 };
		insurance = 0;
		chopShop = 2000000;
		textures[] = {
			{ "Forces A.", "cop", {
				"textures\vehicles\cop\neophron_p1_FA.jpg",
				"textures\vehicles\cop\neophron_p2_FA.jpg"
			} },
			{ "Rebelle", "reb", {
				"textures\vehicles\reb\neophron_p1_REB.jpg",
				"textures\vehicles\reb\neophron_p2_REB.jpg"
			} }	
		};
	};
};