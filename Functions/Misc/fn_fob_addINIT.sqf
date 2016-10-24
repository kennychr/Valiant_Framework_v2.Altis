



//
fob_actionOpen = ['FOBA','Deploy FOB','',{

  [_bunker] call AdvLog_fnc_factoryInit;
  [FOB_box,0,["ACE_MainActions","FOBA"]] call ace_interact_menu_fnc_removeActionFromObject;
  [_bunker, 0, ["ACE_MainActions"], fob_actionClose] call ace_interact_menu_fnc_addActionToObject;


  },{true}] call ace_interact_menu_fnc_createAction;


//
fob_actionClose = ['FOBB','Un-Deploy FOB','',{

  [FOB_box,0,["ACE_MainActions","R3F_openCF"]] call ace_interact_menu_fnc_removeActionFromObject;
  [FOB_box,0,["ACE_MainActions","FOBB"]] call ace_interact_menu_fnc_removeActionFromObject;
  [FOB_box, 0, ["ACE_MainActions"], fob_actionOpen] call ace_interact_menu_fnc_addActionToObject;

  },{true}] call ace_interact_menu_fnc_createAction;







[FOB_box, 0, ["ACE_MainActions"], fob_actionOpen] call ace_interact_menu_fnc_addActionToObject;
