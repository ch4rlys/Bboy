#include <macro.h>
sleep 0.1;
if(FETCH_CONST(life_adminlevel) < 1) exitWith { closeDialog 0; hint localize "STR_ANOTF_ErrorLevel"; };
[] spawn
{
	while {dialog} do
	{
		closeDialog 0;
		sleep 0.1;
	};
};
if(player GVAR ["restrained",false]) then
{
	player setVariable ["restrained",false,true];
	detach player;
	//life_inv_handcuffs = life_inv_handcuffs +1;
	hint "You're free...";
}
else
{
	hint "You're already unrestrain fool !";
};