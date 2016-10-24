/*
 * Author: Pfc. Christiansen
 * [Description]
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */
params ["_vehicle","_spawntime"];
_pos = _vehicle getVariable ["CUP_WaterVehicles_LHD_respawnPosition", "none"]; hint format ["%1",_pos];
_class = typeOf _vehicle;
sleep _spawntime;
deleteVehicle _vehicle;
sleep 0.1;
[LHD1, _class, _pos] call CUP_fnc_spawnVehicleCargo;
