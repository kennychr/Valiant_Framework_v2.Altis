/*
| Author:
|
|	Pfc.Christiansen
|_____
|
|   Description: Call this to get a enemy reinforcement chopper. EXAMPLE: ["MARKERNAME"] call AW_fnc_reinforceChopper
|
|	Created: 16. March 2015
|	Last modified:
|	Made for AhoyWorld.
*/

//-------------Defines.

    _groupCfg =(configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_flora" >> "rhs_group_rus_vdv_infantry_flora_squad_sniper");
    _vicClass = "RHS_Mi8mt_vdv";
    _destination = _this select 0;
    //_spawn =  [_destination, 1700] call CBA_fnc_randPos;
    _spawn = [_destination,1000,1500,5,0,5,0] call BIS_fnc_findSafePos;
    _helicopter = _vicClass;
    //-------------Spawn Chopper and Crew it.
    _heliSide = createGroup east;
    _reinf_heli = createVehicle [_helicopter, _spawn, [], 0, "FLY" ];
    _crewHeli =	[_reinf_heli,_heliSide] call BIS_fnc_spawnCrew;
    //-------------Spawn Infantry and move them inside the chopper.
    _grp2 = [_spawn, EAST, _groupCfg] call BIS_fnc_spawnGroup;
    {
    _x moveInCargo _reinf_heli;
    } forEach units  _grp2;
    //-------------Set WP for helicopter
    _waypointLoc = [_destination,75 ] call CBA_fnc_randPos;
    _wpUNL = _heliSide addWaypoint [_destination,0];
    _wpUNL setWaypointType "TR UNLOAD";
    _wpUNL setwaypointCombatMode "BLUE";
    _wpUNL setWaypointBehaviour "SAFE";
    _wpUNL setWaypointCompletionRadius 40;
    [_grp2,_destination] call BIS_fnc_taskAttack;
