/*
 * Author: Pfc.Christiansen
 * Basic script for filling the FSG teams asset crate
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * Exec in initServer.sqf if you have a box placed called FSG_Crate.
 *
 * Public: [Yes/No]
 */



  params ["_crate"];
  clearMagazineCargoGlobal _crate;
  clearItemCargoGlobal _crate;
  clearWeaponCargoGlobal _crate;
  _crate addBackPackCargoGlobal ["B_Mortar_01_support_F", 1];
  _crate addBackPackCargoGlobal ["B_Mortar_01_weapon_F", 1];
  _crate addBackPackCargoGlobal ["RHS_M2_Gun_Bag", 1];
  _crate addBackPackCargoGlobal ["RHS_M2_Tripod_Bag", 1];
  _crate addBackPackCargoGlobal ["RHS_M2_MiniTripod_Bag", 1];
  _crate addBackPackCargoGlobal ["RHS_Mk19_Gun_Bag", 1];
  _crate addBackPackCargoGlobal ["RHS_Mk19_Tripod_Bag", 1];
  _crate addWeaponCargoGlobal ["rhs_weap_fim92", 1];
  _crate addMagazineCargoGlobal ["rhs_fim92_mag", 3];
  _crate addWeaponCargoGlobal ["rhs_weap_fgm148", 3];
  _crate addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",10];
