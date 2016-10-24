/*
 * Author: Pfc.Christiansen
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

 [false, false] call acre_api_fnc_setupMission;//Turns off babel and diffrent radio channels per side as this is coop.
 [0.7] call acre_api_fnc_setLossModelScale;//Sets terrain interception, default is 1. Turned down for a easier time radiong.
 [false] call acre_api_fnc_setFullDuplex;//Turns off full duplex.
 [true] call acre_api_fnc_setInterference;//Interference on, i.e you cant have multiple transmissions on one channel.
