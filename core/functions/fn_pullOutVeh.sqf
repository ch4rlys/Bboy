if(vehicle player == player) exitWith {};
if(player getVariable "restrained") then {
	detach player;
	player setVariable["Escorting",false,true];
	player setVariable["transporting",false,true];
};

player action ["Eject", vehicle player];
titleText[localize "STR_NOTF_PulledOut","PLAIN"];
titleFadeOut 4;

/*
	if(vehicle player getVariable "UNLOCKED") then
	{

		player action["Eject",vehicle player];
		titleText[localize "STR_NOTF_PulledOut","PLAIN"];
		titleFadeOut 4;
	}
	else
	{
		systemChat "The vehicle is locked.";
	};
*/