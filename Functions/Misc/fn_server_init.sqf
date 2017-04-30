/*
 * Author: Pfc.Christiansen
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
//----------::::::::::::::::: Map Radius, This can\must be tweaked when porting over to other maps if not you will experince missions spawning of the visible map, easiest is to spawn center-ish on map and then using shift-click to measure map's radius and then subtracting 500-1000m and input the value.
mapRadius = 9400;publicVariable "mapRadius";

//---------------------------------- Params Check
AW_Arsenal = "Arsenal" call BIS_fnc_getParamValue; publicVariable "AW_Arsenal";
AW_Spectator = "Spectator" call BIS_fnc_getParamValue; publicVariable "AW_Spectator";
AW_Emplacements_AAA = "Emplacements_AAA" call BIS_fnc_getParamValue; publicVariable "AW_Emplacements_AAA";
AW_Emplacements_HMG = "Emplacements_HMG" call BIS_fnc_getParamValue; publicVariable "AW_Emplacements_HMG";

if (AW_Arsenal == 1) then {
//[] spawn AW_fnc_VA;
};
if (AW_Spectator == 1) then {
600 remoteExec ["setplayerrespawntime",0,false];//If spectator(gamenight mode) is enabled, set respawn time to X seconds
};
if (AW_Emplacements_AAA == 1) then {
execFSM "Modules\Emplacements\AAA.fsm";//Anti Air Emplacements
};
if (AW_Emplacements_HMG == 1) then {
//TODO:FIX execFSM "Modules\Emplacements\HMG.fsm";//Heavy Machine Gun Nests
};

//---------- Check for TFAR\ACRE for radio box and setup according to mod
ACRE = isClass(configFile >> "cfgPatches" >> "acre_main"); publicVariable "ACRE";
TFAR = isClass(configFile >> "cfgPatches" >> "task_force_radio"); publicVariable "TFAR";
[] call AW_fnc_radio_init;

//---------- Call task sys setup
[] call AW_fnc_taskInit;
//---------- Map center fnc !!Do not ever remove!!
[] call AW_fnc_mapCenter;

[] call AW_fnc_airfield_init;
