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
definedTime = (paramsArray select 0);
//skipTime definedTime;

//Setup supply boxes etc
[{[FSG_crate] call AW_fnc_FSG}, 800, []] call CBA_fnc_addPerFrameHandler;
[{[LOGI_crate,LOGI_medical] call AW_fnc_Supply}, 800, []] call CBA_fnc_addPerFrameHandler;
[RADIO_box] call AW_fnc_radioBox;

// -------------- Server scripts

[] execVM "Scripts\qs_clean.sqf";
