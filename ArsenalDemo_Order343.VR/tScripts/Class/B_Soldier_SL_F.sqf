
//Rifleman

#include "script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player call FUNC(base);

};

if (_state == "respawn") then {

};
