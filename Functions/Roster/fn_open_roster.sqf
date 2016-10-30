_dialog = createDialog "playerRoster";
if (!_dialog) exitWith {systemChat "Error: Can't open 'CH View Distance' dialog."};
disableSerialization;
[] call AW_fnc_roster;
