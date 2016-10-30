/*
 * Author: Pfc.Christiansen
 * InitServer.
 * All stuff that should only run on server side goes here!
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 */
//---------- Disable Saving
enableSaving [false,false];//Disable SP save
//---------- Check for TFAR\ACRE for radio box and setup according to mod
ACRE = isClass(configFile >> "cfgPatches" >> "acre_main"); publicVariable "ACRE";
TFAR = isClass(configFile >> "cfgPatches" >> "task_force_radio"); publicVariable "TFAR";
[] call AW_fnc_radio_init;
//---------- Params Logging
for [ {_i = 0}, {_i < count(paramsArray)}, {_i = _i + 1} ] do {
	call compile format
	[
		"PARAMS_%1 = %2",
		(configName ((missionConfigFile >> "Params") select _i)),
		(paramsArray select _i)
	];
};

//---------- Time Of Day
definedTime = (paramsArray select 1);
//skipTime definedTime;

//---------- Call task sys setup
[] call AW_fnc_taskInit;
//---------- Map center fnc !!Do not ever remove!!
[] call AW_fnc_mapCenter;
//---------- Radio box setup
[RADIO_box] call AW_fnc_radioBox;

//----------::::::::::::::::: Map Radius, This can\must be tweaked when porting over to other maps if not you will experince missions spawning of the visible map, easiest is to spawn center-ish on map and then using shift-click to measure map's radius and then subtracting 500-1000m and input the value.
mapRadius = 9400;publicVariable "mapRadius";
//---------- Setup vars for airfields
main_airfield_captured = false;
w_airfield_captured = false;
se_airfield_captured = false;
ne_airfield_captured = false;



//---------- Add radios to box
//[RADIO_box] call AW_fnc_radioBox;
//---------- Get Param for units used
AW_UNITS = "OPFORUnits" call BIS_fnc_getParamValue; publicVariable "AW_UNITS";

//Setup supply bokses etc
[{[FSG_crate] call AW_fnc_FSG}, 800, []] call CBA_fnc_addPerFrameHandler;
[{[LOGI_crate,LOGI_medical] call AW_fnc_Supply}, 800, []] call CBA_fnc_addPerFrameHandler;




//---------- Start airfield logic
[] call AW_fnc_af_logic;

//---------- Run mission engines(quoted out as AF logic is running)
//MAINFSM = []execFSM "Modules\Main\Main.fsm"; publicVariable "MAINFSM";				// Main Mission Selector
AW_Sidemissions = "SideMissions" call BIS_fnc_getParamValue; publicVariable "AW_Sidemissions";//Get param for if sidemission shold run
if (AW_Sidemissions == 1) then {
//SIDEFSM = []execFSM "Modules\Side\Side.fsm"; publicVariable "SIDEFSM";
};


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

// -------------- Headless Client
[] spawn {
    mytag_headlessClient_server_listener = TRUE; publicVariable 'mytag_headlessClient_server_listener';
    sleep 30;
    if (isNil 'mytag_headlessClient_client_active') then {
      //  [] execFSM 'Machines\AI\AmbientAI.fsm';
    };
};
// -------------- Server scripts

[] execVM "Scripts\qs_clean.sqf";
