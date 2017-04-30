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
//---------- Setup vars for airfields
main_airfield_captured = false;
w_airfield_captured = false;
se_airfield_captured = false;
ne_airfield_captured = false;

//---------- Check for airfield start or start the main missions and if selected the sidemissions
AW_Airfield = "Airfield" call BIS_fnc_getParamValue; publicVariable "AW_Airfield";
if (AW_Airfield == 1) then {
[] call AW_fnc_af_logic;
};

if (AW_Airfield == 0) then {
	MAINFSM = []execFSM "Modules\Main\Main.fsm"; publicVariable "MAINFSM";				// Main Mission Selector
	AW_Sidemissions = "SideMissions" call BIS_fnc_getParamValue; publicVariable "AW_Sidemissions";//Get param for if sidemission shold run
	if (AW_Sidemissions == 1) then {
	SIDEFSM = []execFSM "Modules\Side\Side.fsm"; publicVariable "SIDEFSM";
	};
};
