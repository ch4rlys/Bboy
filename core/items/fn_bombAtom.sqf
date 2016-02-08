closeDialog 0;

hintSilent parseText "<t color=""#FF3300"" size='1.3'>Nuclear Suitcase Initialization</t><br/><t size='1'>Loading 25%</t>";
sleep 1;
hintSilent parseText "<t color=""#FF3300"" size='1.3'>Nuclear Suitcase Initialization</t><br/><t size='1'>Please wait...</t>";
sleep 1;
hintSilent parseText "<t color=""#FF3300"" size='1.3'>Nuclear Suitcase Initialization</t><br/><t size='1'>Loading 50%</t>";
sleep 1;
hintSilent parseText "<t color=""#FF3300"" size='1.3'>Nuclear Suitcase Initialization</t><br/><t size='1'>Please wait...</t>";
sleep 1;
hintSilent parseText "<t color=""#FF3300"" size='1.3'>Nuclear Suitcase Initialization</t><br/><t size='1'>Loading 75%</t>";
sleep 1;
hintSilent parseText "<t color=""#FF3300"" size='1.3'>Nuclear Suitcase Initialization</t><br/><t size='1'>Please wait...</t>";
sleep 1;
hintSilent parseText "<t color=""#FF3300"" size='1.3'>Nuclear Suitcase Initialization</t><br/><t size='1.5'>Initialized !</t>";
sleep 1;
hint "";

bombAtom =
{
	_pos = _this select 0;
	[[_pos],"life_fnc_soundsAtom",true,false] call life_fnc_MP;
	[[_pos],"life_fnc_countdownAtom",true,false] call life_fnc_MP;
	bboyPos = "Sign_Arrow_F" createVehicleLocal _pos;
	sleep 60; //délais identique au compte à rebours
	[[_pos],"life_fnc_effectsAtom",true,false] call life_fnc_MP;
	[[_pos],"life_fnc_damageAtom",true,false] call life_fnc_MP;
};

openMap [true,false];
onMapSingleClick '[_pos] spawn bombAtom; openMap [false,false]; onMapSingleClick "";';