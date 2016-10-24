/*
| Author:
|
|	Quiksilver.
|
| Modified last by: Pfc. Christiansen
|
|_____
|
| Description:
|
|	Created: 14/2/2015. Altered: 16/2/2015
|	Coded for AhoyWorld EU 3 to replace Patrol Ops with a perpetual mission with few scripts.
|	You may use and edit the code.
|	You may not remove any entries from Credits without first removing the relevant author's contributions,
|	or asking permission from the mission authors/contributors.
|	You may not remove the Credits tab, without consent of Ahoy World.
| 	Feel free to re-format or make it look better.
|_____
|
| Usage:
|
|	Search below for the diary entries you would like to edit.
|	DiarySubjects appear in descending order when player map is open.
|	DiaryRecords appear in ascending order when selected.
|_____
|
| Credit:
|
|	This Mission was created by Pfc.Christiansen and BACONMOP
|
|	Please be respectful and do not remove credit.
|______________________________________________________________*/

if (!hasInterface) exitWith {};

waitUntil {!isNull player};

player createDiarySubject ["rules", "Rules"];
player createDiarySubject ["teamspeak", "Teamspeak"];
player createDiarySubject ["faq", "FAQ"];
player createDiarySubject ["changelog", "Change Log"];
player createDiarySubject ["credits", "Credits"];

//-------------------------------------------------- Rules

player createDiaryRecord ["rules",
[
"Enforcement",
"
<br />The purpose of the above rules are to ensure a fun and relaxing environment for public players.
<br />
<br />Server rules are in place merely as a means to that end.
<br />
<br />Guideline for enforcement:
<br />
<br />-	Innocent rule violation and disruptive behavior:
<br />
<br />		= Verbal / Written request to cease, or warning.
<br />
<br />-	Minor or first-time rule violation:
<br />
<br />		= Kick, or 0 - 7 day ban.
<br />
<br />-	Serious or repetitive rule violation:
<br />
<br />		= 7 day to permanent ban.
<br />
<br />
<br />The above is subject to discretion.
"
]];

player createDiaryRecord ["rules",
[
"General",
"
PLACEHOLDER
"
]];



//-------------------------------------------------- Teamspeak

player createDiaryRecord ["teamspeak",
[
"TS3",
"
<br /> Teamspeak:<br /><br />
<br /> http://www.teamspeak.com/?page=downloads
"
]];

player createDiaryRecord ["teamspeak",
[
"AHOY WORLD",
"
<br /> Address: ts.ahoyworld.net
<br />
<br /> Visitors and guests welcome!
"
]];

//-------------------------------------------------- FAQ

player createDiaryRecord ["faq",
[
"Shots left in magazine",
"
<br /><font size='16'>Q:</font> How do I check the amount of rounds left in my magazine?<br />
<br /><font size='16'>A:</font>
<br /> 1. Press CTRL and press R.
<br /> 2. This will give you an indication of how heavy the magazine is and thus how many rounds are left.
<br /> Green = full or near full, Yellow = around half empty, Red = almost empty if you can reload now if your about to move onto the enemy
<br />
"
]];

player createDiaryRecord ["faq",
[
"ACE Interaction",
"

"
]];


player createDiaryRecord ["faq",
[
"ACE Weapon Safety",
"
<br /><font size='16'>Q:</font> How do I put my weapon on safe?<br />
<br /><font size='16'>A:</font>
<br /> 1. Press Left Control + ~ (tilde key - next to 1).
<br /> 2. A weapon and text should appear in top right corner saying: Put on Safety and your fire mode has no bar.
<br /> 3. Remove the safety by pressing same buttons again or by switching firing mode of your weapon. A text should say Remove safety and your fire mode should be visible.
<br />
"
]];



//-------------------------------------------------- Change Log


player createDiaryRecord ["changelog",
[
"V Alpha - ",
"
Initial TC tested on live server.
"
]];

//-------------------------------------------------- Credits

player createDiaryRecord ["credits",
[
"Valiant",
"
<br />Mission authors:<br /><br />

		- <font size='16'>Pfc.Christiansen<br /><br />


<br />Other:<br /><br />
		QS Vehicle Respawn and Cleanup<br />
		- Quicksilver<br />


"
]];
