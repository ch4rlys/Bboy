
//effets uranium
[] spawn
{
	while {true} do
	{
		sleep 0.1;
		if((life_inv_uraniumU > 0) || (life_inv_uraniumP > 0) || (life_inv_uraniumP2 > 0) || (life_inv_abomb > 0)) then
		{
			player forceWalk true;
			player setFatigue 1;
		}
		else
		{
			if(isForcedWalk player) then
			{
				player forceWalk false;
				player setFatigue 0;
			};
		};
	};
};

//mine uranium (nord-ouest)
[] spawn
{
	while {true} do
	{
		private["_damage"];
		sleep 1;
		while {((player distance (getMarkerPos "uranium_1") < 50) && (player getVariable["Revive",TRUE]))} do
		{
			if((uniform player == "U_C_Scientist") && (headgear player == "H_PilotHelmetFighter_O") && (vest player == "V_RebreatherIR")) then
			{
				hint "Vous êtes protégé contre la radioactivité.";
				sleep 4;
			}
			else
			{
				hint "!!! ZONE RADIOACTIVE !!!";
				_damage = damage player;
				_damage = _damage + 0.01;
				player setDamage (_damage);
				sleep 0.2;
			};
		};
	};
};

//zones radioactives
[] spawn
{
	while {true} do
	{
		private["_damage"];
		sleep 1;
		while {((player distance (getMarkerPos "atom_MK") < 650) || (player distance (getMarkerPos "atom_MK_1") < 325) || (player distance (getMarkerPos "atom_MK_2") < 325) && (player getVariable["Revive",TRUE]))} do
		{
			if((uniform player == "U_C_Scientist") && (headgear player == "H_PilotHelmetFighter_O") && (vest player == "V_RebreatherIR")) then
			{
				hint "Vous êtes protégé contre la radioactivité.";
				sleep 4;
			}
			else
			{
				hint "!!! ZONE RADIOACTIVE !!!";
				_damage = damage player;
				_damage = _damage + 0.01;
				player setDamage (_damage);
				sleep 0.4;
			};
		};
	};
};
//kavala godmode
[] spawn
{
	while {true} do
	{
		private["_damage"];
		sleep 1;
		if((player distance (getMarkerPos "godMode_MK") < 80)) && (player getVariable["Revive",TRUE])) then { player allowDamage false; }
		else { player allowDamage true; };
	};
};