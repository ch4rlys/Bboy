enableSaving[false,false];

/*
	smoothest, less lag			50
	default in multiplayer		25
	default in singleplayer		12.5
	bumpiest, higher lag		3.125
	
	Value 12.5 corresponds to selecting Terrain Detail Normal in
	Video options, 50 to Very Low, 3.125 to Very High.
*/

setTerrainGrid 50;
setViewDistance 900;
setObjectViewDistance [790,50];

StartProgress = false;
life_versionInfo = "[FR] BBoy Gaming";

[] execVM "KRON_Strings.sqf";
[] spawn life_fnc_autoMsg;
[] spawn life_fnc_disableThermalVision;

StartProgress = true;