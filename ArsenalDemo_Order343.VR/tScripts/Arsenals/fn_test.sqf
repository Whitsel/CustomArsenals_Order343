
#include "script_component.hpp";

params ["_object"];

_teamLeader = [
	"kitSelectTeamLeader",
	"Team Leader",
	"",
	{player call FUNC(teamLeader)},
	{true}
] call ace_interact_menu_fnc_createAction;

_machinegunner = [
	"kitSelectAutomaticRifleman",
	"Automatic Rifleman",
	"",
	{player call FUNC(automaticRifleman)},
	{true}
] call ace_interact_menu_fnc_createAction;

_operator = [
	"kitSelectOperator",
	"Operator",
	"",
	{player call FUNC(rifleman)},
	{true}
] call ace_interact_menu_fnc_createAction;

_medic = [
	"kitSelectMedic",
	"Medic",
	"",
	{player call FUNC(medic)},
	{true}
] call ace_interact_menu_fnc_createAction;

_pilot = [
	"kitSelectPilot",
	"Pilot",
	"",
	{player call FUNC(pilot)},
	{true}
] call ace_interact_menu_fnc_createAction;

_kits = [
	_teamLeader,
	_machineGunner,
	_operator,
	_medic,
	_pilot
];

{
	[
		_object,
		0,
		["ACE_MainActions", "ace_arsenal_interaction"],
		_x,
		true
	] call ace_interact_menu_fnc_addActionToObject;
} forEach _kits;

true
