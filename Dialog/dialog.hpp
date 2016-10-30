class playerRoster
{
	idd = 1799;
	movingEnable = false;
	fadeIn = 0.5;
	fadeOut = 0.5;
	onLoad = "uiNamespace setVariable ['rosterDialog', (_this select 0)]";
		
	class controls
	{
		class rosterFrame
		{
			access = 0;
			idc = 1800;
			x = 0.2375 * safezoneW + safezoneX;
			y = 0.15 * safezoneH + safezoneY;
			w = 0.525 * safezoneW;
			h = 0.7 * safezoneH;
			type = 0;
			style = "0x40";
			linespacing = 1;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,1,1};
			colorShadow[] = {0,0,0,0.5};
			text = "";
			shadow = 2;
			font = "PuristaLight";
			sizeEx = 0.03;
			fixedWidth = 0;
		};
		class rosterFrameInfil: rosterFrame
		{
			access = 0;
			idc = 1801;
			style = "0x00";
			colorText[] = {0,0,0,0};
			colorBackground[] = {0,0,0,0.5};
		};
		class rosterTitle
		{
			access = 0;
			idc = 1810;
			type = 0;
			style = "0x00";
			linespacing = 1;
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			colorShadow[] = {0,0,0,0.5};
    		shadow = 2;
			font = "PuristaLight";
			fixedWidth = 0;
			
			x = 0.414687 * safezoneW + safezoneX;
			y = 0.15 * safezoneH + safezoneY;
			w = 0.2 * safezoneW;
			h = 0.056 * safezoneH;
			sizeEx = 1.8 * GUI_GRID_H;
			
			text = "PLAYER ROSTER";
		};
		class rosterCloseText
		{	access = 0;
			idc = 1811;
			type = 0;
			style = "0x00";
			linespacing = 1;
			colorBackground[] = {1,1,1,1};
			colorText[] = {0,0,0,1};
			colorShadow[] = {0,0,0,0.5};
    		shadow = 0;
			font = "PuristaLight";
			fixedWidth = 0;
			
			x = 0.63125 * safezoneW + safezoneX;
			y = 0.794 * safezoneH + safezoneY;
			w = 0.119 * safezoneW;
			h = 0.036 * safezoneH;
			sizeEx = 1 * GUI_GRID_H;
			
			text = "Press ESC to close";
		};
		class rosterMainText01
		{
			idc = 1812;
		    type = 13;
			style = "0x00";
			linespacing = 1;
			colorBackground[] = {0,0,0,0.2};
			colorText[] = {1,1,1,1};
			colorShadow[] = {0,0,0,0.5};
			shadow = 0;
			font = "PuristaLight";
			fixedWidth = 0;
			text = "";
			
			size = 0.018;
			
			x = 0.250625 * safezoneW + safezoneX;
			y = 0.206 * safezoneH + safezoneY;
			w = 0.23625 * safezoneW;
			h = 0.58 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};
		class rosterMainText02
		{
			idc = 1813;
		    type = 13;
			style = "0x00";
			linespacing = 1;
			colorBackground[] = {0,0,0,0.2};
			colorText[] = {1,1,1,1};
			colorShadow[] = {0,0,0,0.5};
			shadow = 0;
			font = "PuristaLight";
			fixedWidth = 0;
			text = "";
			
			size = 0.018;
			
			x = 0.513125 * safezoneW + safezoneX;
			y = 0.206 * safezoneH + safezoneY;
			w = 0.23625 * safezoneW;
			h = 0.58 * safezoneH;
			sizeEx = 0.7 * GUI_GRID_H;
		};

	};
};

/*
		class playerRosterGroupList
		{
			idc = 1814;
			type = 5;
			style = 0;
			x = 0.250625 * safezoneW + safezoneX;
			y = 0.808 * safezoneH + safezoneY;
			w = 0.223125 * safezoneW;
			h = 0.028 * safezoneH;
			
			font = "PuristaLight";
			sizeEx = 0.04;
			rowHeight = 0;
			colorText[] = {1,1,1,1};
			colorScrollbar[] = {1,1,1,1};
			colorDisabled[] = {1,1,1,0.5}; // Disabled text color
			colorSelect[] = {1,1,1,1}; // Text selection color
			colorSelect2[] = {1,1,1,1}; // Text selection color (oscillates between this and colorSelect)
			colorShadow[] = {0,0,0,0.5}; // Text shadow color (used only when shadow is 1)
			colorSelectBackground[] = {0.6,0.6,0.6,1};
			colorSelectBackground2[] = {0.2,0.2,0.2,1};
			colorBackground[] = {0,0,0,1};
			maxHistoryDelay = 1.0;
			soundSelect[] = {"",0.1,1};
			period = 1;
			autoScrollSpeed = -1;
			autoScrollDelay = 5;
			autoScrollRewind = 0;
			arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
			arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
			shadow = 0;
			class ListScrollBar //In older games this class is "ScrollBar"
			{
				width = 0; // width of ListScrollBar
				height = 0; // height of ListScrollBar
				scrollSpeed = 0.01; // scroll speed of ListScrollBar

				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa"; // Arrow
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa"; // Arrow when clicked on
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa"; // Slider background (stretched vertically)
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"; // Dragging element (stretched vertically)

				color[] = {1,1,1,1}; // Scrollbar color
			};
		};
		class playerRosterJoinButton
		{
			idc = 1815;
			access = 0;
			type = 1;
			text = "COMMIT";
			x = 0.480312 * safezoneW + safezoneX;
			y = 0.808 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {0,0,0,1};
			colorBackground[] = {0.2,0.2,0.2,1};
			colorDisabled[] = {1,1,1,0.5}; // Disabled text color
			tooltip = "Click to join the selected group.";
			soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
			soundPush[] = {"\ca\ui\data\sound\new1",0,0};
			soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
			soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
			style = 2;
			font = "PuristaLight";
			sizeEx = 0.03921;
			offsetX = 0.003;
			offsetY = 0.003;
			offsetPressedX = 0.002;
			offsetPressedY = 0.002;
			borderSize = 1;
			
			action = "[] spawn {execVM 'scripts\misc\groupJoin.sqf';};";
		};
*/