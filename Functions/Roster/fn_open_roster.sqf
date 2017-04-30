_dialog = createDialog "playerRoster";
if (!_dialog) exitWith {systemChat "Error: Can't open 'Radio' dialog."};
disableSerialization;
[] call AW_fnc_roster;
