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

switch (_this select 0) do {
	//Turn safety on
	case true:	{
		// Delete bullets from fired weapons
		if (isNil "AW_eh_safetyMan") then {
			AW_eh_safetyMan = player addEventHandler["Fired", {deletevehicle (_this select 6);}];
		};

		player allowDamage false;
    [player, currentWeapon player, currentMuzzle player] call ace_safemode_fnc_lockSafety;//Put safety on for player....
	};

	//Turn safety off
  case false: {
    if !(isNil "AW_eh_safetyMan") then {
      player removeEventhandler ["Fired", AW_eh_safetyMan];
      AW_eh_safetyMan = nil;
    };
    // Make player vulnerable
    player allowDamage true;
  };

};
