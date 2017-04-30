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





AW_SafeStart_Loop = [{



  ["SafeStart",[format["Time Remaining: %1 min",AW_Safe_Timer]]] call BIS_fnc_showNotification;



 	// Reduce the mission timer by one
 	AW_Safe_Timer = AW_Safe_Timer - 1;
 	publicVariable "AW_Safe_Timer";
  if (AW_Safe_Timer == 0) then {

     ["SafeStartMissionStarting",["Mission Starting Now!"]] call BIS_fnc_showNotification;
     [false] remoteExecCall ["AW_fnc_safestart_player",0];
     [AW_SafeStart_Loop] call CBA_fnc_removePerFrameHandler;
  };
 }, 60, []] call CBA_fnc_addPerFrameHandler;
