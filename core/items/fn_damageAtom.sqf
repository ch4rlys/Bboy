/*
	[] spawn 
	{
		destruction_zone = 200;
		dead_zone = 100;
		if(destruction_zone > 0) then
		{
			sleep 24; //always inferior than the sleep deleteVehicle bboyPos; (fn_effectsAtom.sqf, line 74).
			{
				_dist=_x distance (getPos bboyPos);
				_damage = (1-(_dist-dead_zone)/(destruction_zone-dead_zone))+(damage _x);
				if(_damage > 1) then {_damage = 1;};
				_x setdamage _damage;
			}
			forEach (nearestObjects [(getpos bboyPos),[],destruction_zone]);
		};
	};
*/