#include <macro.h>

private["_state"];
_state = [_this,0,1,[0]] call BIS_fnc_param;

switch (_state) do
{
	case 0: {};
	case 1:
	{
		SVAR_MNS [LICENSE_VARNAME("gun","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("heroin","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("heroin2","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("opium","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("marijuana","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("hashish","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("coke","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("crack","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("diamond2","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("uranium","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("uranium2","civ"),false];
		SVAR_MNS [LICENSE_VARNAME("rebelT","civ"),false];
	};
	case 2: {};
	case 3: {};
};