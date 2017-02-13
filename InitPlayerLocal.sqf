/*
 * Author: Pfc.Christiansen
 * InitPlayerLocal.
 * All stuff that should only run on client side goes here!
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 */

enableSaving [false,false];//Disable SP save

// ---------------- Player Scripts
//[] call AW_fnc_diary;//Write briefing/changelog etc. into mission
[] call AW_fnc_VA02;//Limited arsenal

_actionPlayerRoster = ["playerRoster", "Show Player Roster", "\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\whiteboard_ca.paa", {call AW_fnc_open_roster}, {true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "ACE_TeamManagement"], _actionPlayerRoster] call ace_interact_menu_fnc_addActionToObject;//Add roster to acemenu for player



//Briefing
if (serverCommandAvailable "#kick") then {

#include "Briefing\AW_Admin.sqf"

};
#include "Briefing\AW_Briefing.sqf"
