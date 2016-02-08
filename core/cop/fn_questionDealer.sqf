#include <macro.h>

private["_sellers","_names"];
_sellers = (_this select 0) getVariable["sellers",[]];
if(EQUAL(count _sellers,0)) exitWith {hint localize "STR_Cop_DealerQuestion"};
life_action_inUse = true;

_names = "";
{
	if(SEL(_x,2) > 150000) then
	{
		_val = round((SEL(_x,2)) / 16);
	};
	[[SEL(_x,0),SEL(_x,1),"483",_val],"life_fnc_wantedAdd",false,false] call life_fnc_MP;
	ADD(_names,format["%1<br/>",SEL(_x,1)]);
}
foreach _sellers;

hint parseText format[(localize "STR_Cop_DealerMSG")+ "<br/><br/>%1",_names];
SEL(_this,0) SVAR ["sellers",[],true];
life_action_inUse = false;