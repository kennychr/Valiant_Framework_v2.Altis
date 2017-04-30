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


AW_Safe_Start_Admin = 1;


AW_SafeStart_Loop = [{

  _currentTime = time;
  _minutes = floor  (_currentTime / 60);
  _hours = floor  (_currentTime / 60 / 60);

  if (_minutes < 10) then {

    ["SafeStart",[format["Time since mission start: %1:0%2 ",_hours,_minutes]]] call BIS_fnc_showNotification;

  } else {
    ["SafeStart",[format["Time since mission start: %1:%2 ",_hours,_minutes]]] call BIS_fnc_showNotification;

  };

  if (AW_Safe_Start_Admin == 0) then {

     ["SafeStartMissionStarting",["Mission Starting Now!"]] call BIS_fnc_showNotification;
     [false] remoteExecCall ["AW_fnc_safestart_player",0];
     [AW_SafeStart_Loop] call CBA_fnc_removePerFrameHandler;
  };
 }, 60, []] call CBA_fnc_addPerFrameHandler;
