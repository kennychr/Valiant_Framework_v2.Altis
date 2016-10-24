/*
| Author: 
|
|	Pfc.Christiansen
|_____
|
|   Description: Init for server
|	
|	Created: 11/10 - 2015
|	Last modified:  By: 
|	Made for AhoyWorld.
*/

_mapSize = call BIS_fnc_mapSize;
_mapHalf = _mapSize / 2;
mapCent = [_mapHalf,_mapHalf,0];
publicVariable "mapCent";
