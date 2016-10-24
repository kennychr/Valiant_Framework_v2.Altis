/*
 * Author: Pfc.Christiansen
 * [Description]
 *
 * Arguments:
 * 0: Classname
 * 1: spawn delay
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["2S6M_Tunguska"] call AW_fnc_vehicleSpawner;
 *
 * Public: [Yes/No]
 */

 params ["_class","_pos","_dir"];


 _veh = createVehicle [_class, _pos, [], 0, "NONE"];
 _veh setDir _dir;
