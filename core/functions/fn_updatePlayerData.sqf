#include <macro.h>
private["_mode","_variable","_value"];
_mode = param [0,false];
_var = param [1,false];
_value = param [2,0];

//TBC: Ajouter token d'authentification pour ce pédé de script kiddie... (Essaie de faire des choses constructives !)

switch(_mode) do
{
	case 0:
	{
		life_cash=_value;
	};
	case 1:
	{
		life_atmbank=_value;
	};
	case 2: //Licences
	{
		missionNamespace setVariable [_var,_value];
	};
};