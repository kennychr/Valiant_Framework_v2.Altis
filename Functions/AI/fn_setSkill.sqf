/*
 * Author: Pfc. Christiansen
 * Set skill level of units based on config value
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

params ["_u"]; //Vars passed to fnc.
_skillType = ["aimingspeed", "aimingaccuracy","aimingshake","spotdistance","spottime","commanding","courage","endurance","reloadSpeed","general"];
{
_skill = AW_skill select _x;
_u setSkill [_skillType select _x,_skill];
} forEach [0,1,2,3,4,5,6,7,8,9];
