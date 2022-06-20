
/*
 * Author: [7Cav] Sidd
 * Applys kit to unit
 *
 * Arguments:
 * 0: player <OBJECT>
 *
 * Return Value:
 * Array of objects
 *
 * Example:
 * player call tScripts_fnc_teamLeader;
 *
 * Public: No
 */

#include "script_component.hpp";

params ["_unit"];

_weaponPrimary = [
	"ACWP_HK416D_105_base",
	"ACWP_HK416D_105_CTR_base",
	"ACWP_M4A5_105_troy_base_BLK",
	"ACWP_M4A5_145_troy_base_BLK"
];

_weaponPrimarySight = [
	"acwp_t2",
	"acwp_t2_g33_down",
	"acwp_eotech",
	"acwp_eotech_g33_down"
];

_weaponPrimaryRail = [
	"wmlx_l_peq_t_ir_black",
	"wmlx_l_peq_r_ir_black",
	"m300_l_peq_t_ir_black",
	"m300_b_peq_t_ir_black"
];

_weaponPrimaryMuzzle = [
	"acwp_rc1",
	"acwp_rc1_cover_stripe",
	"acwp_rc1_tan"
];

_weaponPrimaryBipod = [];

_weaponSecondary = [
	"ACWP_USP",
	"ACWP_USP_TAN"
];

_weaponSecondarySight = [
	"",
	"acwp_rmr_pistol"
];

_weaponSecondaryRail = [
	"acwp_x400v_light"
];

_weaponSecondaryMuzzle = [
	"muzzle_snds_l"
];

_uniforms = [
	"UK3CB_BAF_U_CombatUniform_MTP_RM",
	"UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve_RM"
];

_vests = [
	"UK3CB_BAF_V_Osprey_Rifleman_A",
	"UK3CB_BAF_V_Osprey_Rifleman_B",
	"UK3CB_BAF_V_Osprey_Rifleman_C",
	"UK3CB_BAF_V_Osprey_Rifleman_D",
	"UK3CB_BAF_V_Osprey_Rifleman_E",
	"UK3CB_BAF_V_Osprey_Rifleman_F"
];

_backpacks = [
	"UK3CB_BAF_B_Bergen_MTP_Engineer_L_A",
	"UK3CB_BAF_B_Bergen_MTP_PointMan_L_A",
	"UK3CB_BAF_B_Bergen_MTP_Rifleman_H_A",
	"UK3CB_BAF_B_Bergen_MTP_Rifleman_H_B",
	"UK3CB_BAF_B_Bergen_MTP_Rifleman_H_C",
	"UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A",
	"UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B",
	"UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C",
	"UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D",
	"UK3CB_BAF_B_Bergen_MTP_Sapper_L_A"
];

_helmets = [
	"UK3CB_BAF_H_Mk7_Camo_A",
	"UK3CB_BAF_H_Mk7_Camo_B",
	"UK3CB_BAF_H_Mk7_Camo_C",
	"UK3CB_BAF_H_Mk7_Camo_D",
	"UK3CB_BAF_H_Mk7_Camo_E",
	"UK3CB_BAF_H_Mk7_Camo_F",
	"UK3CB_BAF_H_Mk7_Net_A",
	"UK3CB_BAF_H_Mk7_Net_B",
	"UK3CB_BAF_H_Mk7_Net_C",
	"UK3CB_BAF_H_Mk7_Net_D",
	"UK3CB_BAF_H_Mk7_Scrim_A",
	"UK3CB_BAF_H_Mk7_Scrim_B",
	"UK3CB_BAF_H_Mk7_Scrim_C",
	"UK3CB_BAF_H_Mk7_Scrim_D",
	"UK3CB_BAF_H_Mk7_Scrim_E",
	"UK3CB_BAF_H_Mk7_Scrim_F"
];

_facewear = [
	"",
	"UK3CB_BAF_G_Tactical_Black",
	"UK3CB_BAF_G_Tactical_Clear",
	"UK3CB_BAF_G_Tactical_Grey",
	"UK3CB_BAF_G_Tactical_Orange",
	"UK3CB_BAF_G_Tactical_Yellow",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw"
];

_nods = [
	"UK3CB_BAF_HMNVS"
];

_unit setUnitLoadout [
	[
		selectRandom _weaponPrimary,
		selectRandom _weaponPrimaryMuzzle,
		selectRandom _weaponPrimaryRail,
		selectRandom _weaponPrimarySight,
		["ACWP_30rnd_556x45_EPR_PMAG", 30],
		[],
		selectRandom _weaponPrimaryBipod
	],
	[
		selectRandom _weaponSecondary,
		selectRandom _weaponSecondaryMuzzle,
		selectRandom _weaponSecondaryRail,
		selectRandom _weaponSecondarySight,
		["ACWP_18Rnd_9x21_Mag_USP", 18],
		[],
		""
	],
	["","","","",[],[],""],
	[selectRandom _uniforms,[
		["ACE_microDAGR",1],
		["ACE_MapTools",1],
		["ACE_Flashlight_XL50",1]
	]],
	[selectRandom _vests,[
		["ACWP_30rnd_556x45_EPR_PMAG",9,30],
		["HandGrenade",4,1],
		["SmokeShell",4,1]
	]],
	[selectRandom _backpacks, [
		["ACE_personalAidKit",1],
		["ACE_elasticBandage",20],
		["ACE_quikclot",20],
		["ACE_splint",4],
		["ACE_tourniquet",4],
		[selectRandom _nods,1]
	]],
	selectRandom _helmets,
	selectRandom _facewear,
	[],
	["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]
];

diag_log format ["tScripts Logging: %1 had the Team Leader kit applied",name _unit];
