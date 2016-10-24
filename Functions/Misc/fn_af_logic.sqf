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
main_base_selected = false;
main_airfield_not_turned = true;
w_airfield_not_turned = true;
ne_airfield_not_turned = true;
mission_fsms_running = "no";
captured_airfields = [];
counter_attack_start = false;

//----------Setup Makrers and tasking
//Main AF
_mrk_main_af = createMarker ["_mrk_main_af",getPos trigger_main_airfield_1];
"_mrk_main_af" setMarkerShape "RECTANGLE";
"_mrk_main_af" setMarkerSize [430,950];
"_mrk_main_af" setMarkerDir 224.784;
"_mrk_main_af" setMarkerBrush "DIAGGRID";
"_mrk_main_af" setMarkerColor "ColorOPFOR";
main_af_task = ["Capture the main airfield","Capture Airfield","testWords",getPos trigger_main_airfield_1,"Search"] call AW_fnc_makeTask;

//NE AF
_mrk_ne_af = createMarker ["_mrk_ne_af",getPos trigger_ne_airfield_1];
"_mrk_ne_af" setMarkerShape "RECTANGLE";
"_mrk_ne_af" setMarkerSize [350,320];
"_mrk_ne_af" setMarkerDir 0;
"_mrk_ne_af" setMarkerBrush "DIAGGRID";
"_mrk_ne_af" setMarkerColor "ColorOPFOR";
ne_af_task = ["Capture the SE airfield","Capture Airfield","testWords",getPos trigger_ne_airfield_1,"Search"] call AW_fnc_makeTask;

//W AF
_mrk_w_af = createMarker ["_mrk_w_af",getPos trigger_w_airfield_1];
"_mrk_w_af" setMarkerShape "RECTANGLE";
"_mrk_w_af" setMarkerSize [300,340];
"_mrk_w_af" setMarkerDir 0;
"_mrk_w_af" setMarkerBrush "DIAGGRID";
"_mrk_w_af" setMarkerColor "ColorOPFOR";
w_af_task = ["Capture the W airfield","Capture Airfield","testWords",getPos trigger_w_airfield_1,"Search"] call AW_fnc_makeTask;
//--------- Spawn enemies(todo: use ai_spawn.sqf)

//Main AF
_main_af_units = [EAST, 14, getPos trigger_main_airfield_1, 500] call AW_fnc_spawnEnemy;
[_main_af_units, [["patrol", getPos trigger_main_airfield_1, 200]]] call AW_fnc_setBehaviour;
//NE AF
_ne_af_units = [EAST, 7, getPos trigger_ne_airfield_1, 400] call AW_fnc_spawnEnemy;
[_ne_af_units, [["patrol", getPos trigger_ne_airfield_1, 200]]] call AW_fnc_setBehaviour;
//W AF
_w_af_units = [EAST, 7, getPos trigger_w_airfield_1, 400] call AW_fnc_spawnEnemy;
[_w_af_units, [["patrol",  getPos trigger_w_airfield_1, 200]]] call AW_fnc_setBehaviour;



//while {true} do {

[{
        //Main Airfield
        if (main_airfield_captured && main_airfield_not_turned) then {
          //Switch markercolor to blufor
          "_mrk_main_af" setMarkerColor "ColorBLUFOR";
          //Var to stop it from doing this again
          main_airfield_not_turned = false;
          //Create Respawn marker
          respawn_main_af = createMarker ["respawn_westMainairfield",getMarkerPos "rsp_pos_main_af"];
          "respawn_westMainairfield" setMarkerType "empty";
          "respawn_westMainairfield" setMarkerText "Main Airfield Respawn";
          //Spawn supply crate
          _main_af_supply_box = "Box_NATO_AmmoVeh_F" createVehicle getMarkerPos "supply_box_main_airfield";
          //Complete task
          [main_af_task,"SUCCEEDED"] call BIS_fnc_taskSetState;
          //Check if FSM has been started from other AF
          switch mission_fsms_running do {
                case "yes": {

                };
                case "no": {

                  MAINFSM = []execFSM "Modules\Main\Main.fsm"; publicVariable "MAINFSM";
                    AW_Sidemissions = "SideMissions" call BIS_fnc_getParamValue; publicVariable "AW_Sidemissions";//Get param for if sidemission shold run
                    if (AW_Sidemissions == 1) then {
                      SIDEFSM = []execFSM "Modules\Side\Side.fsm"; publicVariable "SIDEFSM";
                    };
                    _airfield_array_add = getMarkerPos "pickup_main_af";
                    captured_airfields = captured_airfields + [_airfield_array_add];
                    counter_attack_start = true;
                    mission_fsms_running = "yes";
                    _main_af_units call AW_fnc_collectGarbage;
                };
          };
        };
        //Western Airfield
        if (w_airfield_captured && w_airfield_not_turned) then {
          //Switch markercolor to blufor
          "_mrk_w_af" setMarkerColor "ColorBLUFOR";
          //Var to stop it from doing this again
          w_airfield_not_turned = false;
          //Create Respawn marker
          respawn_w_af = createMarker ["respawn_westWfield",getMarkerPos "rsp_pos_w_af"];
          "respawn_westWfield" setMarkerType "empty";
          "respawn_westWfield" setMarkerText "W Airfield Respawn";
          //Spawn supply crate
          _w_af_supply_box = "Box_NATO_AmmoVeh_F" createVehicle getMarkerPos "supply_box_w_airfield";
          //Complete task
          [w_af_task,"SUCCEEDED"] call BIS_fnc_taskSetState;
          //Check if FSM has been started from other AF
          switch mission_fsms_running do {
                case "yes": {

                };
                case "no": {
                    MAINFSM = []execFSM "Modules\Main\Main.fsm"; publicVariable "MAINFSM";
                    AW_Sidemissions = "SideMissions" call BIS_fnc_getParamValue; publicVariable "AW_Sidemissions";//Get param for if sidemission shold run
                    if (AW_Sidemissions == 1) then {
                    SIDEFSM = []execFSM "Modules\Side\Side.fsm"; publicVariable "SIDEFSM";
                    };
                    _airfield_array_add = getMarkerPos "pickup_w_af";
                    captured_airfields = captured_airfields + [_airfield_array_add];
                    counter_attack_start = true;
                    mission_fsms_running = "yes";
                    _w_af_units call AW_fnc_collectGarbage;
                };
          };
        };
        //NE Airfield
        if (ne_airfield_captured && ne_airfield_not_turned) then {
          //Switch markercolor to blufor
          "_mrk_ne_af" setMarkerColor "ColorBLUFOR";
          //Var to stop it from doing this again
          ne_airfield_not_turned = false;
          //Create Respawn marker
          respawn_ne_af = createMarker ["respawn_westNEfield",getMarkerPos "rsp_pos_ne_af"];
          "respawn_westWfield" setMarkerType "empty";
          "respawn_westWfield" setMarkerText "NE Airfield Respawn";
          //Spawn supply crate
          _ne_af_supply_box = "Box_NATO_AmmoVeh_F" createVehicle getMarkerPos "supply_box_ne_airfield";
          //Complete task
          [ne_af_task,"SUCCEEDED"] call BIS_fnc_taskSetState;
          //Check if FSM has been started from other AF
          switch mission_fsms_running do {
                case "yes": {

                };
                case "no": {

                    MAINFSM = []execFSM "Modules\Main\Main.fsm"; publicVariable "MAINFSM";
                    AW_Sidemissions = "SideMissions" call BIS_fnc_getParamValue; publicVariable "AW_Sidemissions";//Get param for if sidemission shold run
                    if (AW_Sidemissions == 1) then {
                    SIDEFSM = []execFSM "Modules\Side\Side.fsm"; publicVariable "SIDEFSM";
                    };
                    _airfield_array_add = getMarkerPos "pickup_w_af";
                    captured_airfields = captured_airfields + [_airfield_array_add];
                    counter_attack_start = true;
                    mission_fsms_running = "yes";
                    _ne_af_units call AW_fnc_collectGarbage;
                };
          };
        };

}, 30, []] call CBA_fnc_addPerFrameHandler;

/*
    sleep 30;
};
*/
