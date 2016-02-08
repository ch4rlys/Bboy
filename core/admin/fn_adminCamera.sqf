#include <macro.h>
sleep 0.1;
if(FETCH_CONST(life_adminlevel) < 9) exitWith { closeDialog 0; hint localize "STR_ANOTF_ErrorLevel"; };
[] spawn
{
	while {dialog} do
	{
		closeDialog 0;
		sleep 0.1;
	};
	[] call bis_fnc_camera;
};
