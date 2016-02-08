#include <macro.h>
if(FETCH_CONST(life_adminlevel) < 9) exitWith { closeDialog 0; hint localize "STR_ANOTF_ErrorLevel"; };