/*
 * Author: PFc.Christiansen
 * [Loadout executer per unit, uses variable stored in unit via init field in editor.]
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 * Ingame editor set a variable on player like : this setVariable ["loadout", "Pltco", true];
 * In initPlayerLocal.sqf use : _loadouts = [] call AW_fnc_LEX;
 *
 * Public: [Yes/No]
 */

_loadoutC = false;
//---------------Start Of Loadout Functions---------------
//--------Platoon Command
AW_fnc_Loadout_PLTCO = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
  player addItemToUniform "ACE_tourniquet";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_MapTools";
  player addItemToUniform "ACE_microDAGR";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addVest "rhsusf_spc_squadleader";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellRed";
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "SmokeShellPurple";
  player addItemToVest "B_IR_Grenade";
  player addItemToVest "ACE_HandFlare_White";
  player addItemToVest "ACE_HandFlare_Green";
  player addWeapon "rhs_weap_m4_carryhandle";
  player addWeapon "RH_m9";
  player addHandgunItem "RH_X300";
  player addWeapon "lerca_1200_tan";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "ItemGPS";
  ["CMD"] call AW_fnc_radioGiver;
};
//--------Air Controller
AW_fnc_Loadout_FAC = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
  player addItemToUniform "ACE_tourniquet";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_MapTools";
  player addItemToUniform "ACE_microDAGR";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addVest "rhsusf_spc_light";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellRed";
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "SmokeShellPurple";
  player addItemToVest "B_IR_Grenade";
  player addItemToVest "ACE_HandFlare_White";
  player addItemToVest "ACE_HandFlare_Green";
  player addBackpack "rhsusf_assault_eagleaiii_coy";
  player addWeapon "rhs_weap_m4_carryhandle";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_m9";
  player addHandgunItem "RH_X300";
  player addWeapon "Binocular";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemGPS";
  player addItemToVest "ACRE_PRC343";
  ["CMD"] call AW_fnc_radioGiver;
};
//--------UAV Operator
AW_fnc_Loadout_UAV = {

};
//--------Squadleader
AW_fnc_Loadout_SL = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
  player addItemToUniform "ACE_tourniquet";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_MapTools";
  player addItemToUniform "ACE_microDAGR";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addVest "rhsusf_spc_squadleader";
  player addItemToVest "ACE_NVG_Gen4";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellRed";
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "SmokeShellPurple";
  player addItemToVest "B_IR_Grenade";
  player addItemToVest "ACE_HandFlare_White";
  player addItemToVest "ACE_HandFlare_Green";
  player addWeapon "rhs_weap_m4_carryhandle";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_m9";
  player addHandgunItem "RH_X300";
  player addWeapon "Binocular";

  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "ItemGPS";
  ["squadleader"] call AW_fnc_radioGiver;



};
//--------Teamleader
AW_fnc_Loadout_TL = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
  player addItemToUniform "ACE_MapTools";
  player addItemToUniform "ACE_microDAGR";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addVest "rhsusf_spc_teamleader";
  player addItemToVest "ACE_NVG_Gen4";
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "B_IR_Grenade";
  player addItemToVest "ACE_HandFlare_White";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_M441_HE";};
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_M433_HEDP";};
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  player addItemToVest "1Rnd_Smoke_Grenade_shell";
  player addItemToVest "1Rnd_SmokeRed_Grenade_shell";
  player addItemToVest "1Rnd_SmokeGreen_Grenade_shell";
  player addWeapon "rhs_weap_m4a1_m203";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_m9";
  player addHandgunItem "RH_X300";
  player addWeapon "Rangefinder";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "ItemGPS";
  ["ftleader"] call AW_fnc_radioGiver;


};
//--------Rifleman
AW_fnc_Loadout_RF = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_Flashlight_XL50";
  player addItemToUniform "ACE_microDAGR";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_elasticBandage";};
  player addVest "rhsusf_spc_rifleman";
  player addItemToVest "ACE_NVG_Gen4";
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "ACE_HandFlare_White";
  player addWeapon "rhs_weap_m16a4_carryhandle_pmag";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "tf47_at4_heat";
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player addWeapon "Binocular";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemGPS";
  ["man"] call AW_fnc_radioGiver;

};

//--------Grenadier
AW_fnc_Loadout_GRD = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
  player addItemToUniform "ACE_MapTools";
  player addItemToUniform "ACE_microDAGR";
  player addVest "rhsusf_spc_teamleader";
  player addItemToVest "ACE_NVG_Gen4";
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "B_IR_Grenade";
  player addItemToVest "ACE_HandFlare_White";
  player addItemToVest "rhs_mag_M441_HE";
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_M433_HEDP";};
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  player addItemToVest "1Rnd_Smoke_Grenade_shell";
  player addItemToVest "1Rnd_SmokeRed_Grenade_shell";
  player addItemToVest "1Rnd_SmokeGreen_Grenade_shell";
  player addWeapon "rhs_weap_m4a1_m203";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_m9";
  player addHandgunItem "RH_X300";
  player addWeapon "Rangefinder";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemGPS";
  ["man"] call AW_fnc_radioGiver;

};
//--------AutoRifleman
AW_fnc_Loadout_AR = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
  player addItemToUniform "ACE_microDAGR";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addVest "rhsusf_spc_mg";
  player addItemToVest "HandGrenade";
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "ACE_HandFlare_White";
  player addItemToVest "rhs_200rnd_556x45_M_SAW";
  player addBackpack "rhsusf_assault_eagleaiii_coy";
  player addItemToBackpack "ACE_NVG_Gen4";
  player addItemToBackpack "rhs_200rnd_556x45_M_SAW";
  player addWeapon "rhs_weap_m249_pip_S_para";
  player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
  player addPrimaryWeaponItem "optic_MRCO";
  [player,1,1] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player addWeapon "Rangefinder";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  ["man"] call AW_fnc_radioGiver;

};
//--------Assistant Autorifleman
AW_fnc_Loadout_AAR = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
  player addItemToUniform "ACE_Flashlight_XL50";
  player addItemToUniform "ACE_microDAGR";
  player addVest "rhsusf_spc_iar";
  player addItemToVest "ACE_NVG_Gen4";
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "ACE_HandFlare_White";
  for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  player addBackpack "rhsusf_assault_eagleaiii_coy";
  player addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";
  for "_i" from 1 to 2 do {player addItemToBackpack "rhsusf_200Rnd_556x45_soft_pouch";};
  player addWeapon "rhs_weap_m4a1_grip";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player addWeapon "Rangefinder";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemGPS";
  ["man"] call AW_fnc_radioGiver;

};
AW_fnc_Loadout_MRK = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
  player addVest "rhsusf_spc_corpsman";
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "ACE_HandFlare_White";
  for "_i" from 1 to 5 do {player addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";};
  player addHeadgear "rhsusf_opscore_rg_cover_pelt";
  player addWeapon "rhs_weap_m14ebrri";
  player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
  player addPrimaryWeaponItem "optic_AMS";
  player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
  player addWeapon "Binocular";

  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "ItemGPS";
  ["man"] call AW_fnc_radioGiver;
};

//--------Medic
AW_fnc_Loadout_ME = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
  player addVest "rhsusf_spc_corpsman";
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "ACE_HandFlare_White";
  for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  player addBackpack "rhsusf_assault_eagleaiii_coy";
  for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
  for "_i" from 1 to 20 do {player addItemToBackpack "ACE_fieldDressing";};
  for "_i" from 1 to 15 do {player addItemToBackpack "ACE_elasticBandage";};
  for "_i" from 1 to 15 do {player addItemToBackpack "ACE_quikclot";};
  for "_i" from 1 to 15 do {player addItemToBackpack "ACE_morphine";};
  for "_i" from 1 to 15 do {player addItemToBackpack "ACE_epinephrine";};
  for "_i" from 1 to 10 do {player addItemToBackpack "ACE_atropine";};
  for "_i" from 1 to 5 do {player addItemToBackpack "ACE_tourniquet";};
  for "_i" from 1 to 5 do {player addItemToBackpack "ACE_salineIV_250";};
  for "_i" from 1 to 2 do {player addItemToBackpack "ACE_plasmaIV_250";};
  player addItemToBackpack "ACE_NVG_Gen4";
  for "_i" from 1 to 2 do {player addItemToBackpack "ACE_plasmaIV_500";};
  player addItemToBackpack "ACE_plasmaIV";
  player addWeapon "rhs_weap_m4a1";
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "Binocular";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "ItemRadioAcreFlagged";
  player linkItem "ItemGPS";
  ["man"] call AW_fnc_radioGiver;


};

//--------Medium Machine Gun TL
AW_fnc_Loadout_MMG_T = {

  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
  player addItemToUniform "ACE_tourniquet";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_MapTools";
  player addItemToUniform "ACE_microDAGR";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addVest "rhsusf_spc_squadleader";
  player addItemToVest "ACE_NVG_Gen4";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellRed";
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "SmokeShellPurple";
  player addItemToVest "B_IR_Grenade";
  player addItemToVest "ACE_HandFlare_White";
  player addItemToVest "ACE_HandFlare_Green";
  player addWeapon "rhs_weap_m4_carryhandle";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_m9";
  player addHandgunItem "RH_X300";
  player addWeapon "Binocular";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "ItemGPS";
["squadleader"] call AW_fnc_radioGiver;



};
//--------Medium Machine Gun Assistant
AW_fnc_Loadout_MMG_A = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
  player addItemToUniform "ACE_Flashlight_XL50";
  player addItemToUniform "ACE_microDAGR";
  player addItemToUniform "ACE_HandFlare_White";
  player addVest "rhsusf_spc_light";
  player addItemToVest "ACE_NVG_Gen4";
  player addItemToVest "HandGrenade";
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellBlue";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  player addBackpack "rhsusf_assault_eagleaiii_coy";
  for "_i" from 1 to 3 do {player addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};
  player addWeapon "rhs_weap_m4a1_grip";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player addWeapon "Rangefinder";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  ["man"] call AW_fnc_radioGiver;

};
//--------Medium Machine Gun Gunner
AW_fnc_Loadout_MMG_G = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_microDAGR";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
  player addVest "rhsusf_spc_mg";
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "ACE_HandFlare_White";
  player addItemToVest "rhsusf_100Rnd_762x51_m62_tracer";
  player addBackpack "rhsusf_assault_eagleaiii_coy";
  player addItemToBackpack "ACE_NVG_Gen4";
  player addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";
  player addWeapon "rhs_weap_m240B";
  player addPrimaryWeaponItem "optic_MRCO";
  [player,1,1] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player addWeapon "Rangefinder";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  ["man"] call AW_fnc_radioGiver;

};
//--------Medium Anti Tank TL
AW_fnc_Loadout_MAT_T = {

};
//--------Medium Anti Tank Assistant
AW_fnc_Loadout_MAT_A = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
  player addItemToUniform "RH_15Rnd_45cal_fnp";
  player addVest "rhsusf_spc_light";
  player addItemToVest "ACE_NVG_Gen4";
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "ACE_HandFlare_White";
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";};
  player addBackpack "rhsusf_assault_eagleaiii_coy";[player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "rhs_weap_m4a1_grip";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemGPS";
  ["man"] call AW_fnc_radioGiver;
};
//--------Medium Anti Tank Gunner
AW_fnc_Loadout_MAT_G = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_cu_ocp";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "RH_15Rnd_45cal_fnp";
  player addVest "rhsusf_iotv_ocp_Rifleman";
  for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "ACE_HandFlare_White";
  player addBackpack "rhsusf_assault_eagleaiii_ocp";
  for "_i" from 1 to 2 do {player addItemToBackpack "tf47_m3maaws_HEAT";};
  player addItemToBackpack "tf47_m3maaws_HE";
  player addHeadgear "rhsusf_ach_helmet_headset_ocp";
  player addWeapon "rhs_weap_m4_grip";
  player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
  player addPrimaryWeaponItem "rhsusf_acc_EOTECH";
  player addWeapon "tf47_m3maaws";
  player addSecondaryWeaponItem "tf47_optic_m3maaws";
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ACE_NVG_Gen4";
  ["man"] call AW_fnc_radioGiver;
};
//--------Fire Support Group TL
AW_fnc_Loadout_FSG_T = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
  player addItemToUniform "ACE_tourniquet";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_MapTools";
  player addItemToUniform "ACE_microDAGR";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addVest "rhsusf_spc_squadleader";
  player addItemToVest "ACE_NVG_Gen4";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellRed";
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "SmokeShellPurple";
  player addItemToVest "B_IR_Grenade";
  player addItemToVest "ACE_HandFlare_White";
  player addItemToVest "ACE_HandFlare_Green";
  player addWeapon "rhs_weap_m4_carryhandle";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_m9";
  player addHandgunItem "RH_X300";
  player addWeapon "Binocular";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "ItemGPS";
["squadleader"] call AW_fnc_radioGiver;
};
//--------Fire Support Group Soldier
AW_fnc_Loadout_FSG_S = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_Flashlight_XL50";
  player addItemToUniform "ACE_microDAGR";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_elasticBandage";};
  player addVest "rhsusf_spc_rifleman";
  player addItemToVest "ACE_NVG_Gen4";
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "ACE_HandFlare_White";
  player addWeapon "rhs_weap_m16a4_carryhandle_pmag";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "tf47_at4_heat";
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player addWeapon "Binocular";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemGPS";
  ["man"] call AW_fnc_radioGiver;

};
//--------Medical Evacuation Unit TL
AW_fnc_Loadout_MEU_T = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
  player addItemToUniform "ACE_tourniquet";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_MapTools";
  player addItemToUniform "ACE_microDAGR";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addVest "rhsusf_spc_squadleader";
  player addItemToVest "ACE_NVG_Gen4";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellRed";
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "SmokeShellPurple";
  player addItemToVest "B_IR_Grenade";
  player addItemToVest "ACE_HandFlare_White";
  player addItemToVest "ACE_HandFlare_Green";
  player addWeapon "rhs_weap_m4_carryhandle";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_m9";
  player addHandgunItem "RH_X300";
  player addWeapon "Binocular";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "ItemGPS";
["squadleader"] call AW_fnc_radioGiver;
};
//--------Medical Evacuation Unit Rifleman
AW_fnc_Loadout_MEU_R = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_Flashlight_XL50";
  player addItemToUniform "ACE_microDAGR";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_elasticBandage";};
  player addVest "rhsusf_spc_rifleman";
  player addItemToVest "ACE_NVG_Gen4";
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "ACE_HandFlare_White";
  player addWeapon "rhs_weap_m16a4_carryhandle_pmag";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "tf47_at4_heat";
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player addWeapon "Binocular";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemGPS";
  ["man"] call AW_fnc_radioGiver;
};
//--------Medical Evacuation Unit Doctor
AW_fnc_Loadout_MEU_D = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
  player addVest "rhsusf_spc_corpsman";
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "ACE_HandFlare_White";
  player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";
  for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  player addBackpack "TRYK_B_Medbag";
  for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
  for "_i" from 1 to 20 do {player addItemToBackpack "ACE_fieldDressing";};
  for "_i" from 1 to 15 do {player addItemToBackpack "ACE_elasticBandage";};
  for "_i" from 1 to 15 do {player addItemToBackpack "ACE_quikclot";};
  for "_i" from 1 to 15 do {player addItemToBackpack "ACE_morphine";};
  for "_i" from 1 to 15 do {player addItemToBackpack "ACE_epinephrine";};
  for "_i" from 1 to 10 do {player addItemToBackpack "ACE_atropine";};
  for "_i" from 1 to 5 do {player addItemToBackpack "ACE_tourniquet";};
  for "_i" from 1 to 5 do {player addItemToBackpack "ACE_salineIV_250";};
  for "_i" from 1 to 2 do {player addItemToBackpack "ACE_plasmaIV_250";};
  player addItemToBackpack "ACE_NVG_Gen4";
  for "_i" from 1 to 2 do {player addItemToBackpack "ACE_plasmaIV_500";};
  player addItemToBackpack "ACE_plasmaIV";
  player addWeapon "rhs_weap_m4a1";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player addWeapon "Binocular";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemGPS";
  ["man"] call AW_fnc_radioGiver;
};

//--------Repair team TL
AW_fnc_Loadout_REP_TL = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_packingBandage";};
  player addItemToUniform "ACE_tourniquet";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_MapTools";
  player addItemToUniform "ACE_microDAGR";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addVest "rhsusf_spc_squadleader";
  player addItemToVest "ACE_NVG_Gen4";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellRed";
  player addItemToVest "SmokeShellGreen";
  player addItemToVest "SmokeShellBlue";
  player addItemToVest "SmokeShellPurple";
  player addItemToVest "B_IR_Grenade";
  player addItemToVest "ACE_HandFlare_White";
  player addItemToVest "ACE_HandFlare_Green";
  player addWeapon "rhs_weap_m4_carryhandle";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_m9";
  player addHandgunItem "RH_X300";
  player addWeapon "Binocular";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemWatch";
  player linkItem "ItemGPS";
  ["squadleader"] call AW_fnc_radioGiver;
};

//--------Repair team Repair Specialist
AW_fnc_Loadout_REP_RS = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_Flashlight_MX991";
  player addItemToUniform "ACE_DefusalKit";
  player addItemToUniform "ACE_Clacker";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_fieldDressing";};
  player addItemToUniform "ACE_microDAGR";
  player addVest "rhsusf_spc_light";
  player addItemToVest "ACE_NVG_Gen4";
  player addItemToVest "MineDetector";
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellGreen";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  player addBackpack "rhsusf_assault_eagleaiii_coy";
  player addItemToBackpack "ToolKit";
  for "_i" from 1 to 3 do {player addItemToBackpack "DemoCharge_Remote_Mag";};
  player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";
  player addWeapon "rhs_weap_m4a1_grip";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemGPS";
  ["man"] call AW_fnc_radioGiver;

};

//--------Repair team Demolitions Specialist
AW_fnc_Loadout_REP_DS = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_Flashlight_MX991";
  player addItemToUniform "ACE_DefusalKit";
  player addItemToUniform "ACE_Clacker";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_fieldDressing";};
  player addItemToUniform "ACE_microDAGR";
  player addVest "rhsusf_spc_light";
  player addItemToVest "ACE_NVG_Gen4";
  player addItemToVest "MineDetector";
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellGreen";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  player addBackpack "rhsusf_assault_eagleaiii_coy";
  player addItemToBackpack "ToolKit";
  for "_i" from 1 to 3 do {player addItemToBackpack "DemoCharge_Remote_Mag";};
  player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";
  player addWeapon "rhs_weap_m4a1_grip";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemGPS";
  ["man"] call AW_fnc_radioGiver;

};

//--------Repair team Engineer
AW_fnc_Loadout_REP_EN = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_Flashlight_MX991";
  player addItemToUniform "ACE_DefusalKit";
  player addItemToUniform "ACE_Clacker";
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_fieldDressing";};
  player addItemToUniform "ACE_microDAGR";
  player addVest "rhsusf_spc_light";
  player addItemToVest "ACE_NVG_Gen4";
  player addItemToVest "MineDetector";
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellGreen";
  for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  player addBackpack "rhsusf_assault_eagleaiii_coy";
  player addItemToBackpack "ToolKit";
  for "_i" from 1 to 3 do {player addItemToBackpack "DemoCharge_Remote_Mag";};
  player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";
  player addWeapon "rhs_weap_m4a1_grip";
  [player,1,0] call AW_fnc_loadoutRandomization;
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemGPS";
  ["man"] call AW_fnc_radioGiver;

};
//--------Helicopter Pilot
AW_fnc_Loadout_Hel_P = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_epinephrine";};
  player addItemToUniform "ACE_microDAGR";
  player addVest "rhsusf_spc_crewman";
  for "_i" from 1 to 2 do {player addItemToVest "ACE_NVG_Gen4";};
  player addItemToVest "HandGrenade";
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellGreen";
  for "_i" from 1 to 2 do {player addItemToVest "hlc_30Rnd_9x19_B_MP5";};
  player addHeadgear "H_PilotHelmetHeli_O";
  player addBackpack "rhsusf_assault_eagleaiii_coy";
  player addWeapon "hlc_smg_mp5k_PDW";
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemGPS";
  ["CMD"] call AW_fnc_radioGiver;
};
//--------Helicopter Co-Pilot\Crew
AW_fnc_Loadout_Hel_C = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_epinephrine";};
  player addItemToUniform "ACE_microDAGR";
  player addVest "rhsusf_spc_crewman";
  player addItemToVest "ACE_NVG_Gen4";
  player addItemToVest "HandGrenade";
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellGreen";
  for "_i" from 1 to 2 do {player addItemToVest "hlc_30Rnd_9x19_B_MP5";};
  player addHeadgear "H_PilotHelmetHeli_O";
  player addWeapon "hlc_smg_mp5k_PDW";
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemGPS";
  player addItemToVest "ACRE_PRC343";
  player addBackpack "rhsusf_assault_eagleaiii_coy";
  ["CMD"] call AW_fnc_radioGiver;


};
//--------Vehicle Crew Commander
AW_fnc_Loadout_Vic_C = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_epinephrine";};
  player addItemToUniform "ACE_microDAGR";
  player addVest "rhsusf_spc_crewman";
  player addItemToVest "ACE_NVG_Gen4";
  player addItemToVest "HandGrenade";
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellGreen";
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  player addBackpack "rhsusf_assault_eagleaiii_coy";
  player addHeadgear "H_HelmetCrew_I";
  player addGoggles "TRYK_Shemagh";
  player addWeapon "rhs_weap_m4a1";
  player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
  player addPrimaryWeaponItem "rhsusf_acc_eotech_552";
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemGPS";
  ["CMD"] call AW_fnc_radioGiver;
};
//--------Vehicle Crew Gunner
AW_fnc_Loadout_Vic_G = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_epinephrine";};
  player addItemToUniform "ACE_microDAGR";
  player addVest "rhsusf_spc_crewman";
  player addItemToVest "ACE_NVG_Gen4";
  player addItemToVest "HandGrenade";
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellGreen";
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  player addBackpack "rhsusf_assault_eagleaiii_coy";
  player addHeadgear "H_HelmetCrew_I";
  player addGoggles "TRYK_Shemagh";
  player addWeapon "rhs_weap_m4a1";
  player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
  player addPrimaryWeaponItem "rhsusf_acc_eotech_552";
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemGPS";
  ["man"] call AW_fnc_radioGiver;

};
//--------Vehicle Crew Driver
AW_fnc_Loadout_Vic_D = {
  removeAllWeapons player;
  removeAllItems player;
  removeAllAssignedItems player;
  removeUniform player;
  removeVest player;
  removeBackpack player;
  removeHeadgear player;
  removeGoggles player;
  player forceAddUniform "rhs_uniform_FROG01_wd";
  player addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
  player addItemToUniform "ACE_tourniquet";
  player addItemToUniform "ACE_IR_Strobe_Item";
  player addItemToUniform "ACE_Flashlight_XL50";
  for "_i" from 1 to 2 do {player addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 3 do {player addItemToUniform "ACE_epinephrine";};
  player addItemToUniform "ACE_microDAGR";
  player addVest "rhsusf_spc_crewman";
  player addItemToVest "ACE_NVG_Gen4";
  player addItemToVest "HandGrenade";
  player addItemToVest "SmokeShell";
  player addItemToVest "SmokeShellGreen";
  for "_i" from 1 to 3 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
  player addBackpack "rhsusf_assault_eagleaiii_coy";
  player addHeadgear "H_HelmetCrew_I";
  player addGoggles "TRYK_Shemagh";
  player addWeapon "rhs_weap_m4a1";
  player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
  player addPrimaryWeaponItem "rhsusf_acc_eotech_552";
  player addWeapon "RH_fnp45t";
  player addHandgunItem "RH_X300";
  player linkItem "ItemMap";
  player linkItem "ItemCompass";
  player linkItem "ItemGPS";
  ["man"] call AW_fnc_radioGiver;

};
AW_fnc_loadoutRandomization = {
  _unit = _this select 0;
  _pattern = _this select 1;
  _gun = _this select 2;
  removeHeadgear player;
  removeGoggles player;

  if (_gun == 0) then {

  _optic = [
  		"optic_Aco",
  		"rhsusf_acc_ACOG2_USMC",
  		"rhsusf_acc_ACOG3_USMC",
  		"rhsusf_acc_ACOG_USMC",
  		"SMA_eotech552",
  		"SMA_eotech552_3XDOWN",
  		"SMA_eotech552_kf",
  		"rhsusf_acc_ELCAN",
  		"rhsusf_acc_ELCAN_pip",
  		"rhsusf_acc_ACOG",
  		"rhsusf_acc_ACOG_pip",
  		"rhsusf_acc_ACOG2",
  		"rhsusf_acc_ACOG3",
  		"rhsusf_acc_eotech_552",
  		"rhsusf_acc_compm4",
  		"SMA_BARSKA",
  		"SMA_CMORE",
  		"sma_spitfire_01_black",
  		"sma_spitfire_01_sc_black",
  		""
  	];

  	_acc = [
  		"rhsusf_acc_anpeq15side",
  		"rhsusf_acc_anpeq15",
  		"rhsusf_acc_anpeq15_light",
  		"rhsusf_acc_anpeq15A",
  		"SMA_ANPEQ15_TAN",
  		"SMA_ANPEQ15_BLK",
  		"ACE_acc_pointer_green",
  		"acc_pointer_IR",
  		"SMA_SFFL_BLK",
  		"SMA_SFFL_TAN",
  		""
  	];
  	_rndOptic = _optic call BIS_fnc_selectRandom;
  	_rndAcc = _acc call BIS_fnc_selectRandom;
  	player addPrimaryWeaponItem _rndOptic;
  	player addPrimaryWeaponItem _rndAcc;
  };

  _woodFacewear = [
  	"G_Bandanna_oli",
  	"TRYK_Shemagh_G",
  	"rhs_googles_black",
  	"rhs_googles_yellow",
  	"rhs_googles_orange",
  	"rhs_ess_black",
  	"G_Bandanna_blk",
  	"TRYK_US_ESS_Glasses",
  	"TRYK_US_ESS_Glasses_TAN_BLK",
  	"G_Tactical_Black",
  	"TRYK_US_ESS_Glasses_BLK",
  	"TRYK_kio_balaclava_BLK",
  	"TRYK_kio_balaclavas",
  	""
  ];
  _woodHelmets = [
  	"rhsusf_ach_bare_ess",
  	"rhsusf_ach_bare_headset",
  	"rhsusf_ach_bare_headset_ess",
  	"rhsusf_ach_bare_wood_ess",
  	"rhsusf_ach_bare_wood_headset",
  	"rhsusf_ach_bare_wood_headset_ess",
  	"rhsusf_lwh_helmet_marpatwd_ess",
  	"rhsusf_lwh_helmet_marpatwd_headset",
  	"rhsusf_mich_bare_alt",
  	"rhsusf_mich_bare_headset",
  	"rhsusf_mich_helmet_marpatwd_alt_headset",
  	"rhsusf_mich_helmet_marpatwd_headset"
  ];

  _desertFacewear = [
  	"G_Bandanna_tan",
  	"TRYK_Shemagh_mesh",
  	"TRYK_US_ESS_Glasses_TAN_BLK",
  	"TRYK_Shemagh",
  	"rhs_googles_black",
  	"rhs_googles_yellow",
  	"rhs_googles_orange",
  	"rhs_ess_black",
  	"G_Bandanna_blk",
  	"TRYK_US_ESS_Glasses",
  	"TRYK_US_ESS_Glasses_TAN_BLK",
  	"G_Tactical_Black",
  	"TRYK_US_ESS_Glasses_BLK",
  	"TRYK_kio_balaclava_BLK",
  	"TRYK_kio_balaclavas",
  	""
  ];
  _desertHelmets = [
  	"rhsusf_ach_bare_des_ess",
  	"rhsusf_ach_bare_des_headset",
  	"rhsusf_ach_bare_des_headset_ess",
  	"rhsusf_ach_bare_tan_ess",
  	"rhsusf_ach_bare_tan_headset",
  	"rhsusf_ach_bare_tan_headset_ess",
  	"rhsusf_lwh_helmet_marpatd",
  	"rhsusf_lwh_helmet_marpatd_ess",
  	"rhsusf_lwh_helmet_marpatd_headset",
  	"rhsusf_mich_bare_tan",
  	"rhsusf_mich_bare_alt_tan",
  	"rhsusf_mich_bare_norotos_alt_tan_headset",
  	"rhsusf_mich_bare_norotos_alt_tan",
  	"rhsusf_mich_bare_norotos_arc_alt_tan",
  	"rhsusf_mich_bare_norotos_tan_headset",
  	"rhsusf_mich_helmet_marpatd_alt_headset",
  	"H_HelmetSpecB_sand"
  ];

  if (_pattern == 1) then {
  	_helmet = _woodHelmets call BIS_fnc_selectRandom;
  	_facewear = _woodFacewear call BIS_fnc_selectRandom;
  	player addHeadgear _helmet;
  	player addGoggles _facewear;
  };

  if (_pattern == 0) then {
  	_helmet = _desertHelmets call BIS_fnc_selectRandom;
  	_facewear = _desertFacewear call BIS_fnc_selectRandom;
  	player addHeadgear _helmet;
  	player addGoggles _facewear;
  };

};
//---------------End Of Loadout Functions---------------
private ["_u","_c"];

_u = player;
_c = _u getVariable "loadout";

switch _c do {
//---------------Ground Units Non-Vehicle---------------
//--------CMD Elements
      case 'Pltco'  : { []call AW_fnc_Loadout_PLTCO };//Platoon Command
      case 'JTAC'   : { []call AW_fnc_Loadout_FAC };//Air Controller
      case 'UAV'    : {};//UAV Operator
//--------Infantry
      case 'SL'     : { []call AW_fnc_Loadout_SL  };//Squadleader
      case 'TL'     : { []call AW_fnc_Loadout_TL  };//Teamleader
      case 'RF'     : { []call AW_fnc_Loadout_RF  };//Rifleman
      case 'GRD'    : { []call AW_fnc_Loadout_GRD };//Grenadier
      case 'AR'     : { []call AW_fnc_Loadout_AR  };//Auto Rifleman
      case 'AAR'    : { []call AW_fnc_Loadout_AAR };//Assistant Autorifleman
      case 'MRK'    : { []call AW_fnc_Loadout_MRK };//Marksman
      case 'ME'     : { []call AW_fnc_Loadout_ME  };//Medic
//--------Specialist Roles
      //--------Medium Machine Gun
      case 'MG_T'   : { []call AW_fnc_Loadout_MMG_T  };//Medium Machine Gun Teamlead
      case 'MG_A'   : { []call AW_fnc_Loadout_MMG_A  };//Medium Machine Gun Assistant
      case 'MG_G'   : { []call AW_fnc_Loadout_MMG_G  };//Medium Machine Gun Gunner
      //--------Medium Anti Tank
      case 'MAT_T' : { []call AW_fnc_Loadout_MAT_T};//Medium Anti Tank TeamLead
      case 'MAT_A' : { []call AW_fnc_Loadout_MAT_A};//Medium Anti Tank Assistant
      case 'MAT_G' : { []call AW_fnc_Loadout_MAT_G};//Medium Anto Tank Gunner
      //........Fire Support Group-NOT USED ATM
      case 'FSG_T' : { []call AW_fnc_Loadout_FSG_T};//Fire Support Group TeamLeader
      case 'FSG_R' : { []call AW_fnc_Loadout_FSG_S};//Fire Support Group Soldier
      //--------Medical Evacuation Unit-NOT USED ATM
      case 'MEU_T' : { []call AW_fnc_Loadout_MEU_T};//Medical Evacuation Unit TeamLead
      case 'MEU_R' : { []call AW_fnc_Loadout_MEU_R};//Medical Evacuation Unit RIfleman
      case 'MEU_D' : { []call AW_fnc_Loadout_MEU_D};//Medical Evacuation Unut Doctor
      //--------Repair unit
      case 'REP_TL': { []call AW_fnc_Loadout_REP_TL};//Repair Team TeamLeader
      case 'REP_RS': { []call AW_fnc_Loadout_REP_RS};//Repair Team Repair Specialist
      case 'REP_DS': { []call AW_fnc_Loadout_REP_DS};//Repair Team Demolitions Specialist
      case 'REP_EN': { []call AW_fnc_Loadout_REP_EN};//Repair Team Engineer

//---------------Vehicle Units--------------
  //--------Air
      case 'Hel_P' : { []call AW_fnc_Loadout_Hel_P};//Helicopter Pilot
      case 'Hel_C' : { []call AW_fnc_Loadout_Hel_C};//Helicopter Co-pilot\Crew
  //--------Ground
      case 'Vic_C' : { []call AW_fnc_Loadout_Vic_C};//Vehicle Crew Commander
      case 'Vic_G' : { []call AW_fnc_Loadout_Vic_G};//Vehicle Crew Gunner
      case 'Vic_D' : { []call AW_fnc_Loadout_Vic_D};//Vehicle Crew Driver

};
_loadoutC = true;
_loadoutC
