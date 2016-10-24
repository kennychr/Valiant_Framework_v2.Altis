/*
 * Author: Pfc.Christiansen
 * Give radio based on active mod and what role the function gets given.
 *
 * Arguments:
 * 0: type of unit (leader\riflemane etc) STRING
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */

 params ["_radioType"];


if (ACRE) then {
    switch _radioType do {
        case "leader": {
          player addItemToVest "ACRE_PRC343";
          player addItemToVest "ACRE_PRC152";
          player addItemToBackpack "ACRE_PRC117F";
        };
        case "squadleader": {
          player addItemToVest "ACRE_PRC343";
          player addItemToVest "ACRE_PRC152";

        };
        case "ftleader": {
          player addItemToVest "ACRE_PRC343";
          player addItemToVest "ACRE_PRC152";
        };
        case "man": {
          player addItemToVest "ACRE_PRC343";
        };
    };
};


if (TFAR) then {
    switch _radioType do {
        case "CMD": {
          player linkItem "tf_microdagr";
          player linkItem "tf_rf7800str";
          player addBackpack "tf_rt1523g_big_rhs";
        };
        case "squadleader": {
          player linkItem "tf_microdagr";
          player linkItem "tf_anprc152";
        };
        case "ftleader": {
          player linkItem "tf_microdagr";
          player linkItem "tf_anprc152";
        };
        case "man": {
            player linkItem "tf_microdagr";
		        player linkItem "tf_rf7800str";
        };
    };
};
