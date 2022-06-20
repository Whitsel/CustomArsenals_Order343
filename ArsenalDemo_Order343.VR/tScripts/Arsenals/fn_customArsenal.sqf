
/*
 * Author: [7Cav] Sidd
 * Applys default ace behaviors to box to prevent movement
 *
 * Arguments:
 * 0: [box1] <ARRAY>
 *
 * Return Value:
 * Array of objects
 *
 * Example:
 * [box1] call tScripts_fnc_customArsenal;
 *
 * Public: No
 */

#include "script_component.hpp";

params ["_arsenalObjects"];

private _arsenalAllowDamage = getNumber (missionConfigFile >> "CfgCustomArsenals" >> "arsenalAllowDamage");
private _arsenalAllowLoad = getNumber (missionConfigFile >> "CfgCustomArsenals" >> "arsenalAllowLoad");
private _arsenalAllowMove = getNumber (missionConfigFile >> "CfgCustomArsenals" >> "arsenalAllowMove");
private _arsenalAllowRopeAttach = getNumber (missionConfigFile >> "CfgCustomArsenals" >> "arsenalAllowRopeAttach");
private _arsenalClearInventory = getNumber (missionConfigFile >> "CfgCustomArsenals" >> "arsenalClearInventory");
private _arsenalEmptyInventory = getNumber (missionConfigFile >> "CfgCustomArsenals" >> "arsenalEmptyInventory");

if (_arsenalAllowDamage == 0) then {
	[_x allowdamage false] forEach _arsenalObjects;
};

if ("ace_main" in activatedAddons) then {
	if (_arsenalAllowLoad == 0) then {
		{[_x, -1] call ace_cargo_fnc_setSize} forEach _arsenalObjects;
	};

	if (_arsenalAllowMove == 0) then {
		{
			[_x, false] call ace_dragging_fnc_setDraggable;
			[_x, false] call ace_dragging_fnc_setCarryable;
		} forEach _arsenalObjects;
	};
};

if (_arsenalAllowRopeAttach == 0) then {
	{_x enableRopeAttach false} forEach _arsenalObjects;
};

if (_arsenalClearInventory == 1) then {
	{
		clearItemCargoGlobal _x;
		clearWeaponCargoGlobal _x;
		clearMagazineCargoGlobal _x;
		clearBackpackCargoGlobal _x;
	} forEach _arsenalObjects;
};

if (_arsenalEmptyInventory == 1) then {
	{
		_x addEventHandler [
			"ContainerOpened", {
				params ["_container", "_unit"];
				_container spawn {
					params ["_container"];
					clearItemCargoGlobal _container;
					clearWeaponCargoGlobal _container;
					clearMagazineCargoGlobal _container;
					clearBackpackCargoGlobal _container;
				};
			}
		];
	} forEach _arsenalObjects;
};

//[_arsenalObjects#0, false, false] call ace_arsenal_fnc_initBox;
