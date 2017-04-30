/*
 * Author: [Pfc.Christiansen]
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

//Get type of countdown if applicable
 if (isNil "AW_Safe_Type") then {
     AW_Safe_Type = ["safe_start_type",0] call BIS_fnc_getParamValue;
 };

if (isNil "AW_Safe_Timer") then {
    AW_Safe_Timer = ["safe_start_timer",0] call BIS_fnc_getParamValue;
};



switch AW_Safe_Type do {
  //OFF
  case 0 : {

  };
  //Countdown
  case 1 : {
        [] call AW_fnc_safestart_server_countdown;
        [true] remoteExecCall ["AW_fnc_safestart_player",0];

    };

  //Admin start
  case 1337 : {
    [] call AW_fnc_safestart_server_admin;
    [true] remoteExecCall ["AW_fnc_safestart_player",0];
  };

};
