sleep 0.1;
_pathtotools = "core\admin\";
_EXECscript = 'player execVM "'+_pathtotools+'%1"';
adminScroll = [
	"76561198191769849",	//bboygm
	"76561198130128641"		//yuri
];
if((getPlayerUID player) in adminScroll) then {
	adminmenu = [
		["MANAGEMENT",true],
	["ME TP",		[],"",-5,[["expression",format[_EXECscript,"fn_adminTeleport.sqf"]]],"1","1"],
	["ME LIBERER",	[],"",-5,[["expression",format[_EXECscript,"fn_adminFree.sqf"]]],"1","1"],
	["MARQUEURS",	[],"",-5,[["expression",format[_EXECscript,"fn_adminMarkers.sqf"]]],"1","1"],
	["ATM",			[],"",-5,[["expression",format[_EXECscript,"fn_adminATM.sqf"]]],"1","1"],
	["MODE DIEU",	[],"",-5,[["expression",format[_EXECscript,"fn_adminGodMode.sqf"]]],"1","1"],
	["CAMERA",		[],"",-5,[["expression",format[_EXECscript,"fn_adminCamera.sqf"]]],"1","1"],
		["EXIT",[],"",-5,[["expression", "pselect5 = 'exit';"]],"1","1"]
	];
};
showCommandingMenu "#USER:adminmenu";