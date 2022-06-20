
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
 * player call tScripts_fnc_automaticRifleman;
 *
 * Public: No
 */

#include "script_component.hpp";

params ["_unit"];

_unit setUnitLoadout [
	["","","","",[],[],""],[],
	["","","","",[],[],""],
	["UK3CB_BAF_U_CombatUniform_MTP",[]],
	["",[]],
	[],
	"UK3CB_BAF_H_Boonie_MTP",
	"UK3CB_BAF_G_Tactical_Black",
	[],
	["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]
];

diag_log format ["tScripts Logging: %1 had the Automatic Rifleman kit applied",name _unit];
