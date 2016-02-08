#include <macro.h>
#define SPY "spy_log"
life_session_tries = life_session_tries + 1;
if(life_session_completed) exitWith {};
if(life_session_tries > 3) exitWith {cutText[localize "STR_Session_Error","BLACK FADED"]; 0 cutFadeOut 999999999;};
0 cutText [localize "STR_Session_Received","BLACK FADED"];
0 cutFadeOut 9999999;
if(isNil "_this") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(EQUAL(typeName _this,"STRING")) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(EQUAL(count _this,0)) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(EQUAL(SEL(_this,0),"Error")) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(!(EQUAL(steamid,SEL(_this,0)))) exitWith {[] call SOCK_fnc_dataQuery;};
if(!isServer && (!isNil "life_coplevel")) exitWith
{
	[[profileName,getPlayerUID player,"VariablesAlreadySet"],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
	[[SPY,["VariablesAlreadySet"],profileName,steamid],"TON_fnc_logIt",false,false] call life_fnc_MP;
	[[profileName,format["Variables set before client initialization...\nlife_adminlevel: %1\nlife_coplevel: %2",life_adminlevel,life_coplevel]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
	sleep 0.9;
	failMission "SpyGlass";
};
CASH = parseNumber (SEL(_this,2));
BANK = parseNumber (SEL(_this,3));
CONST(life_adminlevel,parseNumber (SEL(_this,4)));
if(count (SEL(_this,6)) > 0) then
{
	{SVAR_MNS [SEL(_x,0),SEL(_x,1)];} foreach (SEL(_this,6));
};
life_gear = SEL(_this,8);
[true] call life_fnc_loadGear;
switch(playerSide) do
{
	case west:
	{
		CONST(life_coplevel, parseNumber(SEL(_this,7)));
		life_blacklisted = SEL(_this,9);
	};
	case civilian:
	{
		life_is_arrested = SEL(_this,7);
		CONST(life_coplevel, 0);
		life_houses = SEL(_this,9);
		{
			_house = nearestBuilding (call compile format["%1", SEL(_x,0)]);
			life_vehicles pushBack _house;
		}
		foreach life_houses;
		life_gangData = SEL(_this,10);
		if(!(EQUAL(count life_gangData,0))) then
		{
			[] spawn life_fnc_initGang;
		};
		[] spawn life_fnc_initHouses;
	};
};
if(count (SEL(_this,12)) > 0) then
{
	{life_vehicles pushBack _x;} foreach (SEL(_this,12));
};
life_session_completed = true;