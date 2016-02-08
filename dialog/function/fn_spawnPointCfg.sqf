private ["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;
switch (_side) do
{
	case west:
	{
		_return =
		[
			["cop_spawn_1","Kavala","icons\spawnCfg\fa.paa"],
			["cop_spawn_2","Pyrgos","icons\spawnCfg\fa.paa"],
			["cop_spawn_3","Prison","icons\spawnCfg\fa.paa"],
			["cop_spawn_4","Base Aérienne","icons\spawnCfg\fa.paa"],
			["cop_spawn_5","Base Militaire","icons\spawnCfg\fa.paa"]
		];
	};
	case civilian:
	{
		_return =
		[
			["civ_spawn_1","Kavala","icons\spawnCfg\civilian.paa"],
		//	["civ_spawn_2","Agios D.","icons\spawnCfg\civilian.paa"],
			["civ_spawn_3","Athira","icons\spawnCfg\civilian.paa"],
			["civ_spawn_4","Pyrgos","icons\spawnCfg\civilian.paa"],
			["civ_spawn_5","Paros","icons\spawnCfg\civilian.paa"],
			["civ_spawn_6","Sofia","icons\spawnCfg\civilian.paa"],
			["civ_spawn_7","Oreokastro","icons\spawnCfg\civilian.paa"]
		];
		if(license_civ_rebel) then
		{
			_return set[count _return,["civ_spawn_2","Agios D.","icons\spawnCfg\rebel.paa"]];
			_return set[count _return,["reb_spawn_3","Aérodrome","icons\spawnCfg\rebel.paa"]];
			_return set[count _return,["reb_spawn_1","Manoir","icons\spawnCfg\rebel.paa"]];
			_return set[count _return,["reb_spawn_2","Quartier G.","icons\spawnCfg\rebel.paa"]];
		};
		if(count life_houses > 0) then
		{
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				_return pushBack[format["house_%1",_house getVariable "uid"],_houseName,""];
			}
			foreach life_houses;
		};	
	};
};
_return;