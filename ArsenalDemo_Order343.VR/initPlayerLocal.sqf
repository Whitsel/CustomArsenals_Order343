
waitUntil {!isNull player};

["init"] call compile preProcessFile format ["tScripts\Class\%1.sqf", typeOf player];
