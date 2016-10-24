/*
| Author: Pfc.Christiansen
|
|	
|_____
|
|   Description: 
|	
|	Created: 25.10-2015
|	Last modified: 
|	Made for AhoyWorld.
*/

/*
Usage
0 = task description i.e : We take this hill and etc..
1 = task name i.e : attack hill 
2 = markerName doesnt need to be unique
3 = location of task, either marker or object.
4 = taskIcon type, read further down.

Explanations of #4:
There are currently these 8 archetype task types defined:

Default
Attack
Defend
Destroy
Interact
Move
Search
Support
And there is a pre-defined task type for every capital letter in latin alphabet.(A-Z)

When using taskFnc in a script:
_taskHandle = ["We are going to make a task","Use the Tasksys","MARKERNAME","_missionPos","Interact"] call AW_fnc_makeTask;
This will return the taskID to the local var _taskHandle, you can then update the state of the task when succeeded or failed via BIS_fnc_setTask state : [_taskID,"SUCCEEDED"] call BIS_fnc_taskSetState;

*/
i_blu = i_blu + 1 ;
_TASK_ID = Format ["Task_BLU%1", i_blu]; 
private  ["_TASK_ID","_description","_taskName","_taskMarkername","_taskLocation","_taskIcon"];
_description = _this select 0;
_taskName = _this select 1;
_taskMarkername = _this select 2;
_taskLocation = _this select 3;
_taskIcon = _this select 4;
[west,
[_TASK_ID],
[
_description,
_taskName,
_taskMarkername
],
_taskLocation,
0,
1,
true,
_taskIcon,
true] call BIS_fnc_taskCreate;
//return taskID so that you can call it easier when using multiple tasks.
_TASK_ID