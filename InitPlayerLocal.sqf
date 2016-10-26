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
//[] execVM 'Scripts\Loadouts\Woodland\LEX.sqf';//Loadout exec

[player, currentWeapon player, currentMuzzle player] call ace_safemode_fnc_lockSafety;//Put safety on for player....

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
