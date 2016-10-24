/*
 * Author: Pfc.Christiansen
 * Altered from Gauntlet 0.44 to fnc instead of regular sqf.
 *
 * Arguments:
 * 0: Target for addaction.
 *
 * Return Value:
 * None
 *
 * Example:
 * [Supply_Pol] call AW_fnc_supplyPole
 *
 * Public: [Yes/No]
 */
params ["_pole"];

 _pole addAction ["=== CRATES ===","",[],30,false,true,""];
 _pole addAction ["<t color=""#FFCF11"">Empty Crate</t>","scripts\misc\Crate_Empty.sqf",[],29,false,true,""];
 _pole addAction ["<t color=""#FFCF11"">Ammo Crate</t>","scripts\misc\Crate_Basic.sqf",[],28,false,true,""];
 _pole addAction ["<t color=""#FFCF11"">Explosives Crate</t>","scripts\misc\Crate_Explosives.sqf",[],27,false,true,""];
 _pole addAction ["<t color=""#FFCF11"">Launchers Crate</t>","scripts\misc\Crate_Launchers.sqf",[],26.5,false,true,""];
 _pole addAction ["<t color=""#FFCF11"">MAT Ammo Crate</t>","scripts\misc\Crate_MAT.sqf",[],26,false,true,""];
 _pole addAction ["<t color=""#FFCF11"">HAT Ammo Crate</t>","scripts\misc\Crate_HAT.sqf",[],25,false,true,""];
 _pole addAction ["<t color=""#FFCF11"">MMG Ammo Crate</t>","scripts\misc\Crate_MMG.sqf",[],24,false,true,""];
 _pole addAction ["<t color=""#FFCF11"">Grenade Crate</t>","scripts\misc\Crate_Grenades.sqf",[],23,false,true,""];
 _pole addAction ["<t color=""#FFCF11"">Medical Crate</t>","scripts\misc\Crate_Medical.sqf",[],22,false,true,""];
 _pole addAction ["=== WHEELS/TRACKS ===","",[],20,false,true,""];
 _pole addAction ["<t color=""#FFCF11"">Spawn spare Wheel</t>","scripts\misc\createWheel.sqf",[],19,false,true,""];
 _pole addAction ["<t color=""#FFCF11"">Spawn spare Track</t>","scripts\misc\createTrack.sqf",[],18,false,true,""];
