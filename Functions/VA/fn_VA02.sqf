/*
 * Author: Pfc.Christiansen
 * per-class arsenal run on preinit, preloads preinit also. Reliant on XEH for the preinit
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * BOOL when finished
 *
 * Example(s):
 * Add to unit in editor: this setVariable ["class", "X", true];
 *
 *
 *
 * With XEH (preinit and preload,users wont have loadtime in arsenal):
 * Add to description.ext:
 *
 * Add to InitPlayerLocal.sqf:
 * [] execVM "fn_VA02.sqf";
 *
 *
 */

_arsenalC = false;


//---------:::::Include Standard arrays and specialized stuff
_STANDARD_WEAPONS = [
"SMG_05_F",
"rhsusf_weap_MP7A1_base_f",
"rhsusf_weap_MP7A1_winter",
"rhsusf_weap_MP7A1_desert",
"rhsusf_weap_MP7A1_aor1",
"rhs_weap_M590_8RD",
"rhs_weap_M590_5RD",
"rhs_weap_m4",
"rhs_weap_m4_carryhandle",
"rhs_weap_m4_carryhandle_pmag",
"rhs_weap_mk18", "rhs_weap_mk18_KAC",
"rhs_weap_mk18_bk",
"rhs_weap_mk18_KAC_bk",
"rhs_weap_mk18_wd",
"rhs_weap_mk18_KAC_wd",
"rhs_weap_mk18_d",
"rhs_weap_mk18_KAC_d",
"rhs_weap_m4_pmag",
"rhs_weap_m4_mstock",
"rhs_weap_m4_carryhandle_mstock",
"hgun_ACPC2_F",
"hgun_P07_F",
"hgun_Pistol_heavy_01_F",
"hgun_P07_khk_F",
"rhs_weap_M320",
"rhsusf_weap_m1911a1",
"rhsusf_weap_glock17g4",
"rhsusf_weap_m9"
];

_STANDARD_UNIFORMS = [
"U_B_HeliPilotCoveralls",
"U_B_PilotCoveralls",
"U_B_Wetsuit",
"U_B_T_Soldier_AR_F",
"U_B_T_Soldier_F",
"U_B_T_Soldier_SL_F",
"LOP_U_PMC_Fatigue_01",
"U_O_CombatUniform_ocamo",
"U_O_CombatUniform_oucamo",
"rhs_uniform_g3_mc",
"rhs_uniform_g3_m81",
"rhs_uniform_g3_tan",
"rhs_uniform_g3_rgr",
"rhs_uniform_g3_blk",
"rhs_uniform_cu_ocp",
"rhs_uniform_cu_ucp",
"rhs_uniform_cu_ocp_1stcav",
"rhs_uniform_cu_ucp_1stcav",
"rhs_uniform_cu_ocp_82nd",
"rhs_uniform_cu_ucp_82nd",
"rhs_uniform_cu_ocp_101st",
"rhs_uniform_cu_ucp_101st",
"rhs_uniform_cu_ocp_10th",
"rhs_uniform_cu_ucp_10th",
"rhs_uniform_FROG01_d",
"rhs_uniform_FROG01_wd"
];

_STANDARD_HELMETS = [
"H_HelmetB_Enh_tna_F",
"H_HelmetB_light",
"H_HelmetB_light_black",
"H_HelmetB_light_desert",
"H_HelmetB_light_grass",
"H_HelmetB_light_sand",
"H_HelmetB_light_snakeskin",
"H_HelmetB_Light_tna_F",
"rhs_Booniehat_ocp",
"rhs_Booniehat_ucp",
"rhs_Booniehat_marpatd",
"rhs_Booniehat_marpatwd",
"rhs_Booniehat_m81",
"rhsusf_ach_bare",
"rhsusf_ach_bare_des",
"rhsusf_ach_bare_des_ess",
"rhsusf_ach_bare_des_headset",
"rhsusf_ach_bare_des_headset_ess",
"rhsusf_ach_bare_ess",
"rhsusf_ach_bare_headset",
"rhsusf_ach_bare_headset_ess",
"rhsusf_ach_bare_semi",
"rhsusf_ach_bare_semi_ess",
"rhsusf_ach_bare_semi_headset",
"rhsusf_ach_bare_semi_headset_ess",
"rhsusf_ach_bare_tan",
"rhsusf_ach_bare_tan_ess",
"rhsusf_ach_bare_tan_headset",
"rhsusf_ach_bare_tan_headset_ess",
"rhsusf_ach_bare_wood",
"rhsusf_ach_bare_wood_ess",
"rhsusf_ach_bare_wood_headset",
"rhsusf_ach_bare_wood_headset_ess",
"rhsusf_ach_helmet_M81",
"rhsusf_ach_helmet_ocp",
"rhsusf_ach_helmet_ocp_ess",
"rhsusf_ach_helmet_headset_ocp",
"rhsusf_ach_helmet_headset_ess_ocp",
"rhsusf_ach_helmet_camo_ocp",
"rhsusf_ach_helmet_ocp_norotos",
"rhsusf_ach_helmet_ucp",
"rhsusf_ach_helmet_ucp_ess",
"rhsusf_ach_helmet_headset_ucp",
"rhsusf_ach_helmet_headset_ess_ucp",
"rhsusf_ach_helmet_ucp_norotos",
"rhsusf_opscore_aor1",
"rhsusf_opscore_aor1_pelt",
"rhsusf_opscore_aor1_pelt_nsw",
"rhsusf_opscore_aor2",
"rhsusf_opscore_aor2_pelt",
"rhsusf_opscore_aor2_pelt_nsw",
"rhsusf_opscore_ut",
"rhsusf_opscore_ut_pelt",
"rhsusf_opscore_ut_pelt_nsw",
"rhsusf_opscore_ut_pelt_cam",
"rhsusf_opscore_ut_pelt_nsw_cam",
"rhsusf_opscore_bk",
"rhsusf_opscore_bk_pelt",
"rhsusf_opscore_fg",
"rhsusf_opscore_fg_pelt",
"rhsusf_opscore_fg_pelt_cam",
"rhsusf_opscore_fg_pelt_nsw",
"rhsusf_opscore_mc",
"rhsusf_opscore_mc_pelt",
"rhsusf_opscore_mc_pelt_nsw",
"rhsusf_opscore_mc_cover",
"rhsusf_opscore_mc_cover_pelt",
"rhsusf_opscore_mc_cover_pelt_nsw",
"rhsusf_opscore_mc_cover_pelt_cam",
"rhsusf_opscore_rg_cover",
"rhsusf_opscore_rg_cover_pelt",
"rhsusf_opscore_coy_cover",
"rhsusf_opscore_coy_cover_pelt",
"rhsusf_opscore_paint",
"rhsusf_opscore_paint_pelt",
"rhsusf_opscore_paint_pelt_nsw",
"rhsusf_opscore_paint_pelt_nsw_cam",
"rhsusf_lwh_helmet_M1942",
"rhsusf_lwh_helmet_marpatd",
"rhsusf_lwh_helmet_marpatd_ess",
"rhsusf_lwh_helmet_marpatd_headset_ess",
"rhsusf_lwh_helmet_marpatwd",
"rhsusf_lwh_helmet_marpatwd_ess",
"rhsusf_lwh_helmet_marpatwd_headset_ess",
"rhsusf_mich_helmet_marpatwd_headset",
"rhsusf_mich_helmet_marpatd_headset",
"rhsusf_mich_helmet_marpatwd_alt_headset",
"rhsusf_mich_helmet_marpatd_alt_headset",
"rhsusf_mich_helmet_marpatwd_nortos_headset",
"rhsusf_mich_helmet_marpatd_norotos_headset",
"rhsusf_mich_helmet_marpatwd_norotos_arc_headset",
"rhsusf_mich_helmet_marpatd_norotos_arc_headset",
"rhsusf_mich_bare",
"rhsusf_mich_bare_headset",
"rhsusf_mich_bare_alt",
"rhsusf_mich_bare_norotos_headset",
"rhsusf_mich_bare_norotos_alt",
"rhsusf_mich_bare_norotos_alt_headset",
"rhsusf_mich_bare_norotos_arc_headset",
"rhsusf_mich_bare_norotos_arc_alt",
"rhsusf_mich_bare_norotos_arc_alt_headset",
"rhsusf_mich_bare_tan",
"rhsusf_mich_bare_tan_headset",
"rhsusf_mich_bare_alt_tan",
"rhsusf_mich_bare_norotos_tan_headset",
"rhsusf_mich_bare_norotos_alt_tan",
"rhsusf_mich_bare_norotos_alt_tan_headset",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"rhsusf_mich_bare_norotos_arc_alt_tan_headset",
"rhsusf_mich_bare_semi",
"rhsusf_mich_bare_semi_headset",
"rhsusf_mich_bare_alt_semi",
"rhsusf_mich_bare_norotos_semi",
"rhsusf_mich_bare_norotos_semi_headset",
"rhsusf_mich_bare_norotos_alt_semi",
"rhsusf_mich_bare_norotos_alt_semi_headset",
"rhsusf_mich_bare_norotos_arc_semi",
"rhsusf_mich_bare_norotos_arc_semi_headset",
"rhsusf_mich_bare_norotos_arc_alt_semi",
"rhsusf_mich_bare_norotos_arc_alt_semi_headset",
"rhsusf_lwh_helmet_marpatd_headset",
"rhsusf_lwh_helmet_marpatwd_blk_ess",
"rhsusf_lwh_helmet_marpatwd_headset_blk",
"rhsusf_lwh_helmet_marpatwd_headset",
"rhsusf_mich_bare_norotos",
"rhsusf_mich_bare_norotos_arc",
"rhsusf_mich_bare_norotos_tan",
"rhsusf_mich_bare_norotos_arc_tan",
"rhsusf_mich_helmet_marpatd",
"rhsusf_mich_helmet_marpatd_alt",
"rhsusf_mich_helmet_marpatd_norotos",
"rhsusf_mich_helmet_marpatd_norotos_arc",
"rhsusf_mich_helmet_marpatwd",
"rhsusf_mich_helmet_marpatwd_alt",
"rhsusf_mich_helmet_marpatwd_norotos",
"rhsusf_mich_helmet_marpatwd_norotos_arc",
"rhsusf_mich_helmet_marpatwd_norotos_headset",
"rhsusf_Bowman",
"rhsusf_bowman_cap",
"rhsusf_patrolcap_ocp",
"rhsusf_patrolcap_ucp",
"rhs_8point_marpatd",
"rhs_8point_marpatwd",
"rhsusf_protech_helmet",
"rhsusf_protech_helmet_ess",
"rhsusf_protech_helmet_rhino"
];
_STANDARD_VESTS = [
"V_RebreatherB",
"V_Chestrig_blk",
"V_Chestrig_khk",
"V_Chestrig_oli",
"V_Chestrig_rgr",
"V_PlateCarrier1_blk",
"V_PlateCarrier1_rgr",
"V_PlateCarrier2_blk",
"V_PlateCarrier2_rgr",
"V_PlateCarrierGL_blk",
"V_PlateCarrierGL_mtp",
"V_PlateCarrierGL_rgr",
"V_PlateCarrierH_CTRG",
"V_PlateCarrierIA1_dgtl",
"V_PlateCarrierIA2_dgtl",
"V_PlateCarrierIAGL_dgtl",
"V_PlateCarrierIAGL_oli",
"V_PlateCarrierL_CTRG",
"V_PlateCarrierSpec_blk",
"V_PlateCarrierSpec_mtp",
"V_PlateCarrierSpec_rgr",
"V_Press_F",
"V_TacVestIR_blk",
"V_HarnessO_ghex_F",
"V_HarnessOGL_ghex_F",
"V_PlateCarrier1_rgr_noflag_F",
"V_PlateCarrier1_tna_F",
"V_PlateCarrier2_rgr_noflag_F",
"V_PlateCarrier2_tna_F",
"V_PlateCarrierGL_tna_F",
"V_PlateCarrierSpec_tna_F",
"V_TacChestrig_cbr_F",
"V_TacChestrig_grn_F",
"V_TacChestrig_oli_F",
"rhsgref_otv_khaki",
"rhsgref_otv_digi",
"rhsusf_iotv_ocp",
"rhsusf_iotv_ocp_Grenadier",
"rhsusf_iotv_ocp_Medic",
"rhsusf_iotv_ocp_Repair",
"rhsusf_iotv_ocp_Rifleman",
"rhsusf_iotv_ocp_SAW",
"rhsusf_iotv_ocp_Squadleader",
"rhsusf_iotv_ocp_Teamleader",
"rhsusf_iotv_ucp",
"rhsusf_iotv_ucp_Grenadier",
"rhsusf_iotv_ucp_Medic",
"rhsusf_iotv_ucp_Repair",
"rhsusf_iotv_ucp_Rifleman",
"rhsusf_iotv_ucp_SAW",
"rhsusf_iotv_ucp_Squadleader",
"rhsusf_iotv_ucp_Teamleader",
"rhsusf_spc",
"rhsusf_spc_rifleman",
"rhsusf_spc_iar",
"rhsusf_spc_corpsman",
"rhsusf_spc_crewman",
"rhsusf_spc_light",
"rhsusf_spc_marksman",
"rhsusf_spc_mg",
"rhsusf_spc_squadleader",
"rhsusf_spc_teamleader",
"rhsusf_spc_patchless",
"rhsusf_spc_patchless_radio",
"rhsusf_spcs_ocp",
"rhsusf_spcs_ocp_rifleman",
"rhsusf_spcs_ucp",
"rhsusf_spcs_ucp_rifleman"
];
_STANDARD_ITEMS = [
"tf_microdagr",
"tf_rf7800str",
"tf_anprc152",
"ACE_Vector",
"ACE_VectorDay",
"ACE_Yardage450",
"lerca_1200_black",
"lerca_1200_tan",
"rhsusf_ANPVS_14",
"rhsusf_ANPVS_15",
"ACE_NVG_Gen4",
"ACE_NVG_Wide",
"ACE_MX2A",
"rhsusf_acc_harris_bipod",
"rhsusf_acc_anpeq15A",
"rhsusf_acc_anpeq15",
"rhsusf_acc_anpeq15_light",
"rhsusf_acc_M2010S",
"rhsusf_acc_anpeq15side",
"rhsusf_acc_SR25S",
"rhsusf_acc_rotex5_grey",
"rhsusf_acc_rotex5_tan",
"rhsusf_acc_nt4_black",
"rhsusf_acc_nt4_tan",
"rhsusf_acc_muzzleFlash_SF",
"rhsusf_acc_SF3P556",
"rhsusf_acc_SFMB556",
"rhsusf_acc_compm4",
"rhsusf_acc_eotech_552",
"rhsusf_acc_LEUPOLDMK4",
"rhsusf_acc_M2A1",
"rhsusf_acc_EOTECH",
"rhsusf_acc_LEUPOLDMK4_2",
"rhsusf_acc_ACOG3_USMC",
"rhsusf_acc_ACOG2_USMC",
"rhsusf_acc_ACOG_USMC",
"rhsusf_acc_ACOG3",
"rhsusf_acc_ACOG2",
"rhsusf_acc_ACOG_pip",
"rhsusf_acc_ACOG_sa",
"rhsusf_acc_ACOG_d",
"rhsusf_acc_ACOG_wd",
"rhsusf_acc_ACOG"
];
_STANDARD_BACKPACKS = [
"rhsusf_assault_eagleaiii_coy",
"B_rhsusf_B_BACKPACK",
"rhsusf_assault_eagleaiii_ocp",
"rhsusf_assault_eagleaiii_ucp",
"rhsusf_falconii_coy",
"rhsusf_falconii_mc",
"tf_rt1523g_big_rhs"
];
_STANDARD_AMMO = [
"HandGrenade",
"MiniGrenade",
"SmokeShell",
"SmokeShellYellow",
"SmokeShellGreen",
"SmokeShellRed",
"SmokeShellPurple",
"SmokeShellOrange",
"SmokeShellBlue",
"B_IR_Grenade",
"rhs_mag_mk84",
"rhs_mag_mk3a2",
"rhs_mag_m67",
"rhs_mag_m69",
"rhs_mag_an_m14_th3",
"rhs_mag_m7a3_cs",
"rhs_mag_an_m8hc",
"rhs_mag_m18_green",
"rhs_mag_m18_red",
"rhs_mag_m18_yellow",
"rhs_mag_m18_purple",
"ACE_HandFlare_White",
"ACE_HandFlare_Red",
"ACE_HandFlare_Green",
"ACE_HandFlare_Yellow",
"ACE_M84",
"rhsusf_20Rnd_762x51_m118_special_Mag",
"rhsusf_20Rnd_762x51_m993_Mag",
"30Rnd_556x45_Stanag",
"30Rnd_556x45_Stanag_Tracer_Green",
"30Rnd_556x45_Stanag_Tracer_Red",
"30Rnd_556x45_Stanag_Tracer_Yellow",
"rhsusf_5Rnd_300winmag_xm2010",
"10Rnd_RHS_50BMG_Box",
"rhsusf_10Rnd_STD_50BMG_M107",
"rhs_200rnd_556x45_M_SAW",
"rhs_200rnd_556x45_T_SAW",
"rhs_200rnd_556x45_B_SAW",
"rhsusf_50Rnd_762x51",
"rhsusf_50Rnd_762x51_m61_ap",
"rhsusf_50Rnd_762x51_m62_tracer",
"rhsusf_50Rnd_762x51_m80a1epr",
"rhsusf_100Rnd_762x51",
"rhsusf_100Rnd_762x51_m61_ap",
"rhsusf_100Rnd_762x51_m62_tracer",
"rhsusf_100Rnd_762x51_m80a1epr",
"rhsusf_50Rnd_762x51_m993",
"rhsusf_100Rnd_762x51_m993",
"rhsusf_mag_6Rnd_M441_HE",
"rhsusf_mag_6Rnd_M433_HEDP",
"rhsusf_mag_6Rnd_M714_white",
"rhsusf_mag_6Rnd_M576_Buckshot",
"rhsusf_m112_mag",
"rhsusf_m112x4_mag",
"rhs_mag_m18_green",
"rhs_mag_m18_purple",
"rhs_mag_m18_red",
"rhs_mag_m18_yellow",
"rhs_m136_mag",
"rhs_m136_hedp_mag",
"rhs_m136_hp_mag",
"rhs_fim92_mag",
"rhs_fgm148_magazine_AT",
"rhs_mag_smaw_HEAA",
"rhs_mag_smaw_HEDP",
"rhs_mag_smaw_SR",
"rhsusf_mag_7x45acp_MHP",
"rhsusf_mag_17Rnd_9x19_FMJ",
"rhsusf_mag_17Rnd_9x19_JHP",
"rhsusf_mag_15Rnd_9x19_FMJ",
"rhsusf_mag_15Rnd_9x19_JHP",
"rhs_mag_M441_HE",
"rhs_mag_M433_HEDP",
"rhs_mag_m662_red",
"rhs_mag_m661_green",
"rhs_mag_M585_white"
];
_GRENADIER_WEAPONS = [
"arifle_Mk20_GL_F",
"arifle_Mk20_GL_plain_F",
"arifle_TRG21_GL_F",
"arifle_SPAR_01_GL_blk_F",
"arifle_SPAR_01_GL_khk_F",
"arifle_SPAR_01_GL_snd_F",
"rhs_weap_m4a1_m203s_d",
"rhs_weap_m4_m203",
"rhs_weap_m4_m320",
"rhs_weap_m4a1_m320",
"rhs_weap_m4a1_m203",
"rhs_weap_m4a1_carryhandle_m203",
"rhs_weap_m16a4_carryhandle_M203",
"rhs_weap_hk416d10_m320",
"rhs_weap_hk416d145_m320",
"rhs_weap_m4a1_blockII_M203",
"rhs_weap_m4a1_blockII_M203_bk",
"rhs_weap_mk18_m320",
"rhs_weap_m32",
"rhs_weap_m4_m203S",
"rhs_weap_m4a1_carryhandle_m203S",
"rhs_weap_m4a1_m203s",
"rhs_weap_m4a1_blockII_M203_d",
"rhs_weap_m4a1_blockII_M203_wd"
];
_MARKSMAN_WEAPONS = [
"rhs_weap_sr25",
"rhs_weap_sr25_ec",
"rhs_weap_sr25_wd",
"rhs_weap_sr25_ec_wd",
"rhs_weap_sr25_d",
"rhs_weap_sr25_ec_d",
"rhs_weap_XM2010",
"rhs_weap_XM2010_d",
"rhs_weap_XM2010_wd",
"rhs_weap_XM2010_sa",
"rhs_weap_m24sws",
"rhs_weap_m24sws_blk",
"rhs_weap_m24sws_ghillie"
];
_AUTORIFLEMAN_WEAPONS = [
"LMG_03_F",
"rhs_weap_m249_pip_S",
"rhs_weap_m249_pip_S_para",
"rhs_weap_m249_pip_S_vfg",
"rhs_weap_m249_pip_L",
"rhs_weap_m249_pip_L_para",
"rhs_weap_m249_pip_L_vfg"
];
_MMG_WEAPONS = [
"rhs_weap_m240B",
"rhs_weap_m240B_CAP",
"rhs_weap_m240G"
];
_FSG_WEAPONS = [
""
];
_FSG_BACKPACKS = [
"RHS_M2_Gun_Bag",
"RHS_M2_Tripod_Bag",
"rhs_M252_Gun_Bag",
"rhs_M252_Bipod_Bag",
"RHS_M2_MiniTripod_Bag",
"RHS_Mk19_Gun_Bag",
"RHS_Mk19_Tripod_Bag",
"rhs_Tow_Gun_Bag",
"rhs_TOW_Tripod_Bag"
];
_FSG_Launchers = [
"rhs_weap_fgm148",
"rhs_weap_fim92"
];
_AT4 = [
"rhs_weap_M136",
"rhs_weap_M136_hedp",
"rhs_weap_M136_hp"
];
_MAT_LAUNCHERS = [
"rhs_weap_smaw_green"
];
_MEDIC_ITEMS = [
"ACE_bloodIV_500",
"ACE_bloodIV_250",
"ACE_epinephrine",
"ACE_morphine",
"ACE_personalAidKit",
"ACE_plasmaIV",
"ACE_plasmaIV_500",
"ACE_plasmaIV_250",
"ACE_salineIV",
"ACE_salineIV_500",
"ACE_salineIV_250",
"ACE_surgicalKit"
];


_class = player getVariable "class";
switch (_class) do {

    case "leader": {
      [lim_box,_STANDARD_WEAPONS + _GRENADIER_WEAPONS + _AT4,false] call xla_fnc_addVirtualWeaponCargo;
      [lim_box,_STANDARD_AMMO,false] call xla_fnc_addVirtualMagazineCargo;
      [lim_box,_STANDARD_BACKPACKS,false] call xla_fnc_addVirtualBackpackCargo;
      [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS,false] call xla_fnc_addVirtualItemCargo;
      ["Preload"] call xla_fnc_arsenal;
      //:::::::::General Gear+Rolespecific Radio

      player addItemToUniform "ACE_EarPlugs";
      player addItemToUniform "ACE_IR_Strobe_Item";
      player addItemToUniform "ACE_Flashlight_MX991";

    };
    case "medic": {
      [lim_box,_STANDARD_WEAPONS,false] call xla_fnc_addVirtualWeaponCargo;
      [lim_box,_STANDARD_AMMO,false] call xla_fnc_addVirtualMagazineCargo;
      [lim_box,_STANDARD_BACKPACKS,false] call xla_fnc_addVirtualBackpackCargo;
      [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS + _MEDIC_ITEMS,false] call xla_fnc_addVirtualItemCargo;
      ["Preload"] call xla_fnc_arsenal;
      //:::::::::General Gear+Rolespecific Radio

      player addItemToUniform "ACE_EarPlugs";
      player addItemToUniform "ACE_IR_Strobe_Item";
      player addItemToUniform "ACE_Flashlight_MX991";
    };
    case "grenadier": {
      [lim_box,_STANDARD_WEAPONS + _GRENADIER_WEAPONS,false] call xla_fnc_addVirtualWeaponCargo;
      [lim_box,_STANDARD_AMMO,false] call xla_fnc_addVirtualMagazineCargo;
      [lim_box,_STANDARD_BACKPACKS,false] call xla_fnc_addVirtualBackpackCargo;
      [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS,false] call xla_fnc_addVirtualItemCargo;
      ["Preload"] call xla_fnc_arsenal;

      player addItemToUniform "ACE_EarPlugs";
      player addItemToUniform "ACE_IR_Strobe_Item";
      player addItemToUniform "ACE_Flashlight_MX991";
    };
    case "marksman": {
      [lim_box,_STANDARD_WEAPONS + _MARKSMAN_WEAPONS,false] call xla_fnc_addVirtualWeaponCargo;
      [lim_box,_STANDARD_AMMO,false] call xla_fnc_addVirtualMagazineCargo;
      [lim_box,_STANDARD_BACKPACKS,false] call xla_fnc_addVirtualBackpackCargo;
      [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS,false] call xla_fnc_addVirtualItemCargo;
      ["Preload"] call xla_fnc_arsenal;

      player addItemToUniform "ACE_EarPlugs";
      player addItemToUniform "ACE_IR_Strobe_Item";
      player addItemToUniform "ACE_Flashlight_MX991";
    };
    case "autorifleman": {
      [lim_box,_AUTORIFLEMAN_WEAPONS,false] call xla_fnc_addVirtualWeaponCargo;
      [lim_box,_STANDARD_AMMO,false] call xla_fnc_addVirtualMagazineCargo;
      [lim_box,_STANDARD_BACKPACKS,false] call xla_fnc_addVirtualBackpackCargo;
      [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS,false] call xla_fnc_addVirtualItemCargo;
      ["Preload"] call xla_fnc_arsenal;

      player addItemToUniform "ACE_EarPlugs";
      player addItemToUniform "ACE_IR_Strobe_Item";
      player addItemToUniform "ACE_Flashlight_MX991";
    };
    case "mmg_gunner": {
      [lim_box,_MMG_WEAPONS,false] call xla_fnc_addVirtualWeaponCargo;
      [lim_box,_STANDARD_AMMO,false] call xla_fnc_addVirtualMagazineCargo;
      [lim_box,_STANDARD_BACKPACKS,false] call xla_fnc_addVirtualBackpackCargo;
      [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS,false] call xla_fnc_addVirtualItemCargo;
      ["Preload"] call xla_fnc_arsenal;

      player addItemToUniform "ACE_EarPlugs";
      player addItemToUniform "ACE_IR_Strobe_Item";
      player addItemToUniform "ACE_Flashlight_MX991";
    };
    case "pilot": {
      [lim_box,_STANDARD_WEAPONS,false] call xla_fnc_addVirtualWeaponCargo;
      [lim_box,_STANDARD_AMMO,false] call xla_fnc_addVirtualMagazineCargo;
      [lim_box,_STANDARD_BACKPACKS,false] call xla_fnc_addVirtualBackpackCargo;
      [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS,false] call xla_fnc_addVirtualItemCargo;
      ["Preload"] call xla_fnc_arsenal;

      player addItemToUniform "ACE_EarPlugs";
      player addItemToUniform "ACE_IR_Strobe_Item";
      player addItemToUniform "ACE_Flashlight_MX991";
    };
    case "mat_gunner": {
      [lim_box,_PILOT_WEAPONS,false] call xla_fnc_addVirtualWeaponCargo;
      [lim_box,_STANDARD_AMMO,false] call xla_fnc_addVirtualMagazineCargo;
      [lim_box,_STANDARD_BACKPACKS,false] call xla_fnc_addVirtualBackpackCargo;
      [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS + _MAT_LAUNCHERS,false] call xla_fnc_addVirtualItemCargo;
      ["Preload"] call xla_fnc_arsenal;

      player addItemToUniform "ACE_EarPlugs";
      player addItemToUniform "ACE_IR_Strobe_Item";
      player addItemToUniform "ACE_Flashlight_MX991";
    };
    case "rifleman": {
        [lim_box,_STANDARD_WEAPONS + _AT4,false] call xla_fnc_addVirtualWeaponCargo;
        [lim_box,_STANDARD_AMMO,false] call xla_fnc_addVirtualMagazineCargo;
        [lim_box,_STANDARD_BACKPACKS,false] call xla_fnc_addVirtualBackpackCargo;
        [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS,false] call xla_fnc_addVirtualItemCargo;
        ["Preload"] call xla_fnc_arsenal;

        player addItemToUniform "ACE_EarPlugs";
        player addItemToUniform "ACE_IR_Strobe_Item";
        player addItemToUniform "ACE_Flashlight_MX991";
        };
    case "FSG": {
      [lim_box,_STANDARD_WEAPONS,false] call xla_fnc_addVirtualWeaponCargo;
      [lim_box,_STANDARD_AMMO,false] call xla_fnc_addVirtualMagazineCargo;
      [lim_box,_STANDARD_BACKPACKS,false] call xla_fnc_addVirtualBackpackCargo;
      [lim_box,_STANDARD_ITEMS + _STANDARD_VESTS + _STANDARD_UNIFORMS + _STANDARD_HELMETS + _FSG_Launchers,false] call xla_fnc_addVirtualItemCargo;
      ["Preload"] call xla_fnc_arsenal;

      player addItemToUniform "ACE_EarPlugs";
      player addItemToUniform "ACE_IR_Strobe_Item";
      player addItemToUniform "ACE_Flashlight_MX991";
    };

};
_arsenalC = true;
_arsenalC
