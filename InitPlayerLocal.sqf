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
[] call AW_fnc_diary;//Write briefing/changelog etc. into mission
[] call AW_fnc_VA02;//Limited arsenal
[player, currentWeapon player, currentMuzzle player] call ace_safemode_fnc_lockSafety;//Put safety on for player....
_actionPlayerRoster = ["playerRoster", "Show Player Roster", "\a3\ui_f\data\IGUI\Cfg\simpleTasks\types\whiteboard_ca.paa", {call AW_fnc_open_roster}, {true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "ACE_TeamManagement"], _actionPlayerRoster] call ace_interact_menu_fnc_addActionToObject;//Add roster to acemenu for player

// -------------- Headless Client
[] spawn {
    if (!hasInterface) then {
        if (isNil 'mytag_headlessClient_server_listener' ) then {
            waitUntil {
                sleep 1;
                (!isNil 'mytag_headlessClient_server_listener' )
            };
        };
        mytag_headlessClient_client_active = TRUE;
        publicVariableServer 'mytag_headlessClient_client_active';
      //  [] execFSM 'Machines\AI\AmbientAI.fsm';
    };
};
