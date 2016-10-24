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
clearMagazineCargoGlobal FSG_Crate;
clearItemCargoGlobal FSG_Crate;
clearWeaponCargoGlobal FSG_Crate;


FSG_Refill = true;

while {FSG_Refill} do {

FSG_Crate addBackPackCargoGlobal ["B_Mortar_01_support_F", 1];
FSG_Crate addBackPackCargoGlobal ["B_Mortar_01_weapon_F", 1];
FSG_Crate addBackPackCargoGlobal ["RHS_M2_Gun_Bag", 1];
FSG_Crate addBackPackCargoGlobal ["RHS_M2_Tripod_Bag", 1];
FSG_Crate addBackPackCargoGlobal ["RHS_M2_MiniTripod_Bag", 1];
FSG_Crate addBackPackCargoGlobal ["RHS_Mk19_Gun_Bag", 1];
FSG_Crate addBackPackCargoGlobal ["RHS_Mk19_Tripod_Bag", 1];
FSG_Crate addWeaponCargoGlobal ["rhs_weap_fim92", 1];
FSG_Crate addMagazineCargoGlobal ["rhs_fim92_mag", 3];
FSG_Crate addWeaponCargoGlobal ["rhs_weap_fgm148", 3];
FSG_Crate addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",10];

sleep 800;
};
