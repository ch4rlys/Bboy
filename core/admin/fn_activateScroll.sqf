sleep 0.1;
waitUntil { alive player };
if((getPlayerUID player) in [
	"76561198191769849",	//bboygm
	"76561198130128641"		//yuri
]) then {
	player addaction [("<t color=""#FF4400"">" + ("Quick Management") + "</t>"),"core\admin\fn_adminScroll.sqf","",-5,false,true,"",""];
};