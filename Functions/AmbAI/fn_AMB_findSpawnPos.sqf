/*
 * Author: Pfc.Christiansen
 * Finds safe spawn pos of units withing the given distance
 *
 * Arguments:
 * 0: object
 *
 * Return Value:
 * spawn pos
 *
 * Example:
 * [target] call AW_fnc_findSpawnPos;
 *
 * Public: [Yes/No]
 */

 params ["_target"];

 _distance = 800 + (random 400);
 _dir = getDir _target;
 _targetPos = [_target,_distance,_dir] call BIS_fnc_relPos;
 _targetPos
