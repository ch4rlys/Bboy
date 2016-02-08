#include <macro.h>

private["_ui","_units"];
#define iconID 78000
#define scale 0.8

if(visibleMap OR {!alive player} OR {dialog}) exitWith
{
	500 cutText["","PLAIN"];
};

_ui = GVAR_UINS ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then
{
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = GVAR_UINS ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F"],50];

SUB(_units,[player]);

{
	private "_text";
	_idc = _ui displayCtrl (iconID + _forEachIndex);
	if(!(lineIntersects [eyePos player, eyePos _x, player, _x]) && {!isNil {_x GVAR "realname"}}) then
	{
		_pos = switch(typeOf _x) do
		{
			case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
			default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
		};
		_sPos = worldToScreen _pos;
		_distance = _pos distance player;
		if(count _sPos > 1 && {_distance < 15}) then
		{
			_text = switch (true) do
			{
				case (_x in (units grpPlayer) && playerSide == civilian): {format["<t color='#00FF00'>%1</t>",(_x GVAR ["realname",name _x])];};
				case (!isNil {(_x GVAR "rank")}): {format["<img image='%1' size='1'></img> %2",switch ((_x GVAR "rank")) do
				{
					case 1: {"icons\ranks\01.paa"}; 
					case 2: {"icons\ranks\02.paa"};
					case 3: {"icons\ranks\03.paa"};
					case 4: {"icons\ranks\04.paa"};
					case 5: {"icons\ranks\05.paa"};
					case 6: {"icons\ranks\06.paa"};
					case 7: {"icons\ranks\07.paa"};
					case 8: {"icons\ranks\08.paa"};
					case 9: {"icons\ranks\09.paa"};
					case 10: {"icons\ranks\10.paa"};
					case 11: {"icons\ranks\11.paa"};
					case 12: {"icons\ranks\12.paa"};
					case 13: {"icons\ranks\13.paa"};
					case 14: {"icons\ranks\14.paa"};
					case 15: {"icons\ranks\15.paa"};
					case 16: {"icons\ranks\16.paa"};
					default {"\a3\ui_f\data\gui\cfg\Ranks\private_gs.paa"};
				},_x GVAR ["realname",name _x]]};
				default
				{
					if(!isNil {(group _x) GVAR "gang_name"}) then
					{
						format["%1<br/><t size='0.8' color='#B6B6B6'>%2</t>",_x GVAR ["realname",name _x],(group _x) GVAR ["gang_name",""]];
					}
					else
					{
						_x GVAR ["realname",name _x];
					};
				};
			};
			_idc ctrlSetStructuredText parseText _text;
			_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
			_idc ctrlSetScale scale;
			_idc ctrlSetFade 0;
			_idc ctrlCommit 0;
			_idc ctrlShow true;
		}
		else
		{
			_idc ctrlShow false;
		};
	}
	else
	{
		_idc ctrlShow false;
	};
}
foreach _units;