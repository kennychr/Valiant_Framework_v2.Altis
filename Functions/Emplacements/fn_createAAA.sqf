/*
usage:
0:position to spawn
*/
_unitCfg = AW_UNITS;

_pos = _this select 0;
_safePos = [_pos,0,200,25,0,1,0] call BIS_fnc_findSafePos;
_Shilka_Emplacement = [

	["Land_BagFence_Long_F",[2.21851,-8.20117,-0.00243855],180,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-3.65283,-8.14844,-0.00243855],180,1,0,[0,0],"","",true,false],
	["CamoNet_OPFOR_Curator_F",[-0.77832,-9.09961,-0.00143862],179,1,0,[0,-0],"","",true,false],
	["Land_BagFence_Long_F",[5.04175,-8.2124,-0.00243855],180,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-6.58667,-8.11084,-0.00243855],180,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-0.705566,-10.52,-0.00243855],180,1,0,[0,0],"","",true,false],
	["CamoNet_OPFOR_Curator_F",[8.1145,7.68115,-0.00143862],42,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[7.14673,8.82422,-0.00243855],222,1,0,[0,0],"","",true,false],
	["CamoNet_OPFOR_Curator_F",[-8.6626,7.74707,-0.00143862],311,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[9.29297,6.8252,-0.00243855],222,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[9.64746,-6.92627,-0.00243855],140,1,0,[0,-0],"","",true,false],
	["Land_BagFence_Long_F",[5.00073,10.8315,-0.00243855],222,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-8.63696,8.61377,-0.00243855],134,1,0,[0,-0],"","",true,false],
	["Land_BagFence_Long_F",[11.3665,4.90869,-0.00243855],222,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-6.55786,10.6904,-0.00243855],134,1,0,[0,-0],"","",true,false],
	["Land_BagFence_Long_F",[-10.7188,6.5459,-0.00243855],134,1,0,[0,-0],"","",true,false],
	["Land_BagFence_Long_F",[11.9497,-5.00586,-0.00243855],140,1,0,[0,-0],"","",true,false],
	["Land_BagFence_Long_F",[2.86353,12.8418,-0.00243855],222,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-11.48,-6.60059,-0.00243855],43,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-4.48779,12.7681,-0.00243855],135,1,0,[0,-0],"","",true,false],
	["Land_BagFence_Long_F",[-12.8298,4.41846,-0.00243855],134,1,0,[0,-0],"","",true,false],
	["Land_BagFence_Round_F",[8.65479,-10.8931,-0.00273943],335,1,0,[0,0],"","",true,false],
	["Land_BagBunker_Small_F",[14.8411,-0.0332031,-0.00143862],270,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-13.6716,-4.55518,-0.00243855],43,1,0,[0,0],"","",true,false],
	["Land_BagFence_Round_F",[-10.0149,-10.9741,-0.00273943],13,1,0,[0,0],"","",true,false],
	["Land_BagBunker_Small_F",[-17.0337,0.375,-0.00143862],90,1,0,[0,-0],"","",true,false],
	["Land_BagBunker_Small_F",[-0.769287,18.0195,-0.00143862],179,1,0,[0,-0],"","",true,false]
];
_aaaSide = createGroup east;
[_safePos,0,_Shilka_Emplacement] call BIS_fnc_ObjectsMapper;
    _shilka = "rhs_zsu234_aa" createVehicle _safePos;
    _shilka setFuel 0;
    _crewShilka =	[_shilka,_aaaSide] call BIS_fnc_spawnCrew;
