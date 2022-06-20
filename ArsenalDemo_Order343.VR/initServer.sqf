
if(!isMultiplayer) then {
	{if(!(isPlayer _x)) then {deleteVehicle _x}} foreach allUnits;
};
