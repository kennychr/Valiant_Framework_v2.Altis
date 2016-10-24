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


 if (ACRE) then {
    [] call AW_fnc_acre_setup;
 };
 if (TFAR) then {
   [] call AW_fnc_tfar_setup;
 };
