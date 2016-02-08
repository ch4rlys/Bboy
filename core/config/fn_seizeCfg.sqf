#include <macro.h>
/*
	File: fn_seizeCfg.sqf
	
	0 = All
	1 = Weapons
	2 = Uniform
	3 = Backpack
	4 = Vest
	5 = Items
	
	To do:
	Adding list 0,2,3,4&5
*/
private["_mode"];
_mode = [_this,0,objNull,[""]] call BIS_fnc_param;

switch(_mode) do
{
	case 1: 
	{
		[
			"SmokeShell",
			"HandGrenade_Stone",
			"MiniGrenade",
			"HandGrenade",			
			"ClaymoreDirectionalMine_Remote_Mag",
			"APERSTripMine_Wire_Mag",
			"APERSMine_Range_Mag",
			"APERSBoundingMine_Range_Mag",
			"SLAMDirectionalMine_Wire_Mag",
			"ATMine_Range_Mag",
			"DemoCharge_Remote_Mag",
			"SatchelCharge_Remote_Mag",
			"hgun_PDW2000_F",
			"SMG_01_F",
			"arifle_TRG20_F",
			"arifle_TRG21_F",
			"arifle_TRG21_GL_F",
			"arifle_Mk20C_F",
			"arifle_Mk20_F",
			"arifle_Mk20_GL_F",
			"arifle_Katiba_C_F",
			"arifle_Katiba_F",
			"arifle_Katiba_GL_F",
			"arifle_MXC_F",
			"arifle_MXC_Black_F",
			"arifle_MX_F",
			"arifle_MX_Black_F",
			"arifle_MX_GL_F",
			"arifle_MX_GL_Black_F",
			"arifle_MXM_F",
			"arifle_MXM_Black_F",
			"arifle_MX_SW_F",
			"arifle_MX_SW_Black_F",
			"LMG_Mk200_F",
			"LMG_Zafir_F",
			"srifle_EBR_F",
			"srifle_DMR_01_F",
			"srifle_GM6_F",
			"srifle_GM6_camo_F",
			"srifle_LRR_F",
			"srifle_LRR_camo_F",
			"optic_MRD",
			"optic_Yorris",
			"optic_Holosight",
			"optic_Arco",
			"optic_Hamr",
			"optic_MRCO",
			"optic_SOS",
			"optic_DMS",
			"optic_LRPS",
			"optic_NVS",
			"optic_AMS",
			"optic_AMS_khk",
			"optic_AMS_snd",
			"optic_KHS_blk",
			"optic_KHS_hex",
			"optic_KHS_old",
			"optic_KHS_tan",
			"bipod_01_F_snd",
			"bipod_01_F_blk",
			"bipod_01_F_mtp",
			"bipod_02_F_blk",
			"bipod_02_F_tan",
			"bipod_02_F_hex",
			"bipod_03_F_blk",
			"bipod_03_F_oli",
			"muzzle_snds_L",
			"muzzle_snds_M",
			"muzzle_snds_H",
			"muzzle_snds_H_MG",
			"muzzle_snds_B",
			"acc_flashlight",
			"acc_pointer_IR",
			"30Rnd_45ACP_Mag_SMG_01",
			"30Rnd_45ACP_Mag_SMG_01_tracer_green",
			"30Rnd_556x45_Stanag_Tracer_Red",
			"30Rnd_556x45_Stanag_Tracer_Green",
			"30Rnd_556x45_Stanag_Tracer_Yellow",
			"30Rnd_65x39_caseless_green",
			"30Rnd_65x39_caseless_green_mag_Tracer",
			"30Rnd_65x39_caseless_mag",
			"100Rnd_65x39_caseless_mag",
			"1Rnd_HE_Grenade_shell",
			"3Rnd_HE_Grenade_shell",
			"UGL_FlareWhite_F",
			"3Rnd_UGL_FlareWhite_F",
			"1Rnd_Smoke_Grenade_shell",
			"3Rnd_Smoke_Grenade_shell",
			"200Rnd_65x39_cased_Box",
			"200Rnd_65x39_cased_Box_Tracer",
			"150Rnd_762x54_Box",
			"150Rnd_762x54_Box_Tracer",
			"10Rnd_762x54_Mag",
			"20Rnd_762x51_Mag",
			"5Rnd_127x108_Mag",
			"5Rnd_127x108_APDS_Mag",
			"7Rnd_408_Mag",
			"srifle_DMR_02_F",
			"srifle_DMR_02_camo_F",
			"srifle_DMR_02_sniper_F",
			"MMG_02_black_F",
			"MMG_02_camo_F",
			"MMG_02_sand_F",
			"srifle_DMR_03_F",
			"srifle_DMR_03_khaki_F",
			"srifle_DMR_03_multicam_F",
			"srifle_DMR_03_tan_F",
			"srifle_DMR_03_woodland_F",
			"srifle_DMR_06_camo_F",
			"srifle_DMR_06_olive_F",
			"srifle_DMR_05_blk_F",
			"srifle_DMR_05_hex_F",
			"srifle_DMR_05_tan_F",
			"MMG_01_hex_F",
			"MMG_01_tan_F",
			"srifle_DMR_04_F",
			"srifle_DMR_04_Tan_F",
			"muzzle_snds_338_black",
			"muzzle_snds_338_green",
			"muzzle_snds_338_sand",
			"muzzle_snds_B",
			"muzzle_snds_93mmg",
			"muzzle_snds_93mmg_tan",
			"optic_AMS",
			"optic_AMS_khk",
			"optic_AMS_snd",
			"optic_KHS_blk",
			"optic_KHS_hex",
			"optic_KHS_old",
			"optic_KHS_tan",
			"optic_NVS",
			"bipod_01_F_snd",
			"bipod_01_F_blk",
			"bipod_01_F_mtp",
			"bipod_02_F_blk",
			"bipod_02_F_tan",
			"bipod_02_F_hex",
			"bipod_03_F_blk",
			"bipod_03_F_oli",
			"acc_flashlight",
			"acc_pointer_IR",
			"10Rnd_338_Mag",
			"130Rnd_338_Mag",
			"20Rnd_762x51_Mag",
			"10Rnd_93x64_DMR_05_Mag",
			"150Rnd_93x64_Mag",
			"10Rnd_127x54_Mag"
		/*
			"U_OG_Guerilla1_1",
			"U_OG_leader",
			"U_B_CTRG_1",
			"U_B_CTRG_2",
			"U_B_CTRG_3",
			"U_O_CombatUniform_oucamo",
			"U_O_CombatUniform_ocamo",
			"U_O_OfficerUniform_ocamo",
			"U_I_G_resistanceLeader_F",
			"U_I_CombatUniform",
			"U_I_CombatUniform_tshirt",
			"U_I_OfficerUniform",
			"U_B_GhillieSuit",
			"U_O_GhillieSuit",
			"U_I_GhillieSuit",
			"U_B_HeliPilotCoveralls",
			"U_I_HeliPilotCoveralls",
			"U_I_pilotCoveralls",
			"U_O_PilotCoveralls",
			"U_O_Wetsuit",
			"U_O_FullGhillie_lsh",
			"U_O_FullGhillie_sard",
			"U_O_FullGhillie_ard",
			"U_C_Scientist",
			"H_Shemag_tan",
			"H_Shemag_olive",
			"H_ShemagOpen_khk",
			"H_HelmetO_oucamo",
			"H_HelmetSpecO_ocamo",
			"H_HelmetSpecO_blk",
			"H_CrewHelmetHeli_B",
			"H_CrewHelmetHeli_I",
			"H_CrewHelmetHeli_O",
			"H_PilotHelmetHeli_B",
			"H_PilotHelmetHeli_I",
			"H_PilotHelmetHeli_O",
			"H_PilotHelmetFighter_B",
			"H_PilotHelmetFighter_O",
			"G_Lowprofile",
			"G_Combat",
			"G_Bandanna_tan",
			"G_Bandanna_beast",
			"G_Bandanna_blk",
			"G_Bandanna_oli",
			"G_Bandanna_khk",
			"G_Bandanna_shades",
			"G_Bandanna_sport",
			"G_Bandanna_aviator",
			"G_Balaclava_oli",
			"G_Balaclava_blk",
			"G_Balaclava_combat",
			"G_Balaclava_lowprofile",
			"V_BandollierB_cbr",
			"V_BandollierB_blk",
			"V_BandollierB_oli",
			"V_PlateCarrier_Kerry",
			"V_PlateCarrier1_rgr",
			"V_PlateCarrier1_blk",
			"V_PlateCarrier2_rgr",
			"V_PlateCarrierIA1_dgtl",
			"V_PlateCarrierIA2_dgtl",
			"V_PlateCarrierL_CTRG",
			"V_PlateCarrierH_CTRG",
			"V_PlateCarrierSpec_rgr",
			"V_PlateCarrierSpec_blk",
			"V_PlateCarrierGL_rgr",
			"V_PlateCarrierGL_blk",
			"V_Chestrig_khk",
			"V_Chestrig_rgr",
			"V_Chestrig_blk",
			"V_Chestrig_oli",
			"V_TacVest_khk",
			"V_TacVest_brn",
			"V_TacVest_blk",
			"V_TacVest_camo",
			"V_TacVestIR_blk",
			"V_I_G_resistanceLeader_F",
			"V_HarnessO_gry",
			"V_HarnessO_brn",
			"V_HarnessOGL_gry",
			"V_HarnessOSpec_brn",
			"V_HarnessOSpec_gry",
			"V_RebreatherB",
			"V_RebreatherIA",
			"V_RebreatherIR",
		*/
		];
	};
	/*
	case 0 : { [ ]; };
	case 2 : { [ ]; };
	case 3 : { [ ]; };
	case 4 : { [ ]; };
	case 5 : { [ ]; };
	*/
};

