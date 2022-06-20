
/*
 * Author: [7Cav] Sidd
 * Collects all objects in mission that include the passed variable name and returns them in an array
 *
 * Arguments:
 * 0: "variableName" <STRING>
 *
 * Return Value:
 * Array of objects
 *
 * Example:
 * "variableName" call tScripts_fnc_ArrayObjects;
 *
 * Public: No
 */

#include "script_component.hpp";

params ["_varSearch"];

private _objectArray = [];

private _allThings = allMissionObjects "THING";

{
	if (
		[_varSearch, format ["%1",_x]] call BIS_fnc_inString
	) then {
		_objectArray append [_x];
	};
} forEach _allThings;

_objectArray
