#include <macro.h>

player SVAR ["surrender", true, true];

while { player GVAR ["surrender", false] } do
{ 
	player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon";
	if (!alive player) then
	{
		player SVAR ["surrender", false, true];
	};
};
player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon";