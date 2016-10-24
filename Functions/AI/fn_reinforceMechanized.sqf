/*
| Author:
|
|	Pfc.Christiansen
|_____
|
|   Description: Call this to get enemy reinforcement EXAMPLE: ["MARKERNAME"] call AW_fnc_reinforceChopper
|
|	Created: 16. March 2015
|	Last modified:
|	Made for AhoyWorld.
*/
//Read param for units
_groupCfg = (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_btr60" >> "rhs_group_rus_vdv_btr60_squad_2mg");


_destination = _this select 0;
//_spawn =  [_destination, 1000] call CBA_fnc_randPos;
_spawn = [_destination,700,1000,5,0,5,0] call BIS_fnc_findSafePos;
_GRP1 = [_spawn, EAST, _groupCfg] call BIS_fnc_spawnGroup;
[_GRP1,(_destination)] call BIS_fnc_taskAttack;
