/*
 * Author: Pfc.Christiansen
 * [Description]
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



 _briefing ="
 <br/>
 <font size='18'>ADMIN SECTION</font><br/>
 This briefing section can only be seen by the current admin.
 <br/><br/>
 ";


 // Commands Section

 _briefing = _briefing + "
 <font size='18'>SAFE START CONTROL</font><br/>
 |- <execute expression=""AW_Safe_Timer = AW_Safe_Timer + 1; publicVariable 'AW_Safe_Timer'; hintsilent format ['Mission Timer: %1',AW_Safe_Timer];"">
 Increase Safe Start timer by 1 minute</execute><br/>

 |- <execute expression=""AW_Safe_Timer = AW_Safe_Timer - 1; publicVariable 'AW_Safe_Timer'; hintsilent format ['Mission Timer: %1',AW_Safe_Timer];"">
 Decrease Safe Start timer by 1 minute</execute><br/>



 |- <execute expression=""AW_Safe_Start_Admin = 0; publicVariable 'AW_Safe_Start_Admin'; hintsilent 'Safe Start ended' "">
 End Safe Start timer, Applies to both Countdown and Admin start timers!</execute><br/>

 |- <execute expression=""[true] remoteExecCall ['AW_fnc_safestart_player',0];
 hintsilent 'Safety on!' "">
 Force safety on for all players</execute><br/>

 |- <execute expression=""[false] remoteExecCall ['AW_fnc_safestart_player',0];
 hintsilent 'Safety off!' "">
 Force safety off for all players</execute><br/><br/>
 ";




player createDiaryRecord ["diary", ["AW Admin Menu",_briefing]];
