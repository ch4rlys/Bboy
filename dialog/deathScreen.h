class DeathScreen
{
	idd = 7300;
	name = "Life_Death_Screen";
	movingEnabled = false;
	enableSimulation = true;
	class controlsBackground {};
	class Controls
	{
		class RespawnBtn : Life_RscButtonMenu
		{
			idc = 7302;
			x = 0.9 * safezoneW + safezoneX;
			y = 0.00500001 * safezoneH + safezoneY;
			w = (9 / 40);
			h = (1 / 25);
			text = "Respawn";
			onButtonClick = "closeDialog 0; life_respawned = true; [] call life_fnc_spawnMenu;";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
			class Attributes 
			{
				align = "center";
			};
		};
		class respawnTime : Life_RscText
		{
			idc = 7301;
			colorBackground[] = {0,0,0,0};
			text = "";
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.918 * safezoneH + safezoneY;
			w = 0.8;
			h = (1 / 25);
		};
	};
};