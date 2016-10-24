/*
 * Author: Pfc.Christiansen
 * Cache spawner and placer in town.
 *
 * Arguments:
 * 0: Argument Name <TYPE>
 *
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * [townLocation,"Box_FIA_Wps_F",5,500] call AW_fnc_cachePlacer;
 *
 * Public: [Yes/No]
 "Box_FIA_Wps_F"
 */

//Move this to params when test succ.
/*
 * Author: Pfc.Christiansen
 * Cache spawner and placer in town.
 *
 * Arguments:
 * 0: TownPos
 * 1: Classname for box i.e Box_FIA_Wps_F
 * 2: Number of Caches
 * 3: Radius to place them.
 * Return Value:
 * Return Name <TYPE>
 *
 * Example:
 * ["example"] call ace_[module]_fnc_[functionName]
 *
 * Public: [Yes/No]
 */

//Move this to params when test succ.
placecache = {


	_box     = _this select 0;
	_pos     = _this select 1;
	_index   = _this select 2;


	_unit = createVehicle [_box, _pos,[],0,"NONE"];

	_name = format["cache%1",_index];
	_unit setVehicleVarName _name;
	_unit setVariable ["INDEX",_index,true];
	_unit setVariable ["PLANTER",0,true];
	_unit Call Compile Format["%1=_This ; PublicVariable ""%1""",_name];
	_unit addEventHandler ["killed", {NCACHESCREATED = NCACHESCREATED - 1}];
	clearWeaponCargoGlobal _unit;
	clearMagazineCargoGlobal _unit;
	clearItemCargoGlobal _unit;
	clearBackpackCargoGlobal _unit;

	_unit setPosATL _pos;
	_unit setdir random 360;

};


_town = _this select 0;
_boxClass = _this select 1;
_nCaches = _this select 2;
_radius = _this select 3;


_center = locationPosition _town;
_houselist = nearestObjects [_center,["house"],_radius];
_nhouses   = count _houselist;
_cachePositions = [];
NCACHESCREATED = 0;
for [{_i=0}, {_i<_nCaches}, {_i=_i+1}] do{

  _moveOn = false;
  while{!_moveOn} do{
    _ran       = floor random _nhouses;
    _house     = _houselist select _ran;
    _housepos  = [_house] call BIS_fnc_buildingPositions;
    _nhousepos = count _housepos;
    if(_nhousepos > 0) then{
      _ranpos = floor random _nhousepos;
      _pos    = _housepos select _ranpos;

      _minDistance = 1500;
      {
        _dist = _x distance _pos;
        if(_dist < _minDistance) then{_minDistance = _dist;};
      }forEach _cachePositions;

      if(_minDistance > 100) then{
        //player sidechat format["placing cache at %1",_pos];
        [_boxClass,_pos,_i] spawn placecache;
        _moveOn = true;
        NCACHESCREATED = NCACHESCREATED + 1;
        _cachePositions = _cachePositions + [_pos];
      };
      _houselist set [_ran,-1];
      _houselist = _houselist - [-1];
      _nhouses   = _nhouses - 1;
    };
  };
	if (NCACHESCREATED == _nCaches) then {
	    _moveOn = true;
	};
};
NCACHESCREATED
