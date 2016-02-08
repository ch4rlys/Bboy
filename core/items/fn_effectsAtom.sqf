private["_pos"];
_pos = _this select 0;
bboyPos = "Sign_Arrow_F" createVehicleLocal _pos;

_light = "#lightpoint" createVehicleLocal
[
	((getpos bboyPos select 0)),(getpos bboyPos select 1),((getpos bboyPos select 2)+500)
];
_light setlightAmbient [1500,1200,1000];
_light setlightColor [1500,1200,1000];
_light setlightBrightness 4;
[_light] spawn
{
	_light = _this select 0;
	sleep 18;
	_bright=4;
	_pas=0.05;
	_acceleration=1.1;
	while{_bright > 0} do
	{
		sleep 0.04;
		_bright=_bright-_pas;
		_pas=_pas*_acceleration;
		_light setlightBrightness _bright;
	};
	deleteVehicle _light;
};

player spawn
{
	enableCamShake true;
	addCamShake [8,32,16];
};

_hat = "#particlesource" createVehicleLocal getpos bboyPos;		
_hat setParticleParams [["A3\Data_F\ParticleEffects\Universal\universal.p3d",16,7,48,1],"","Billboard",1,25,[0,0,0],[0,0,90],0,1.7,1,0,[80,60,150],[[1,1,1,0.4],[1,1,1,0.7],[1,1,1,0.7],[1,1,1,0.7],[1,1,1,0.7],[1,1,1,0.7],[1,1,1,0.7],[1,1,1,0]],[0.5,0.1],1,1,"","",bboyPos];
_hat setParticleRandom [0,[10,10,2],[20,20,10],0,0,[0,0,0,0],0,0,360];
_hat setDropInterval 0.0002;

_foot = "#particlesource" createVehicleLocal getpos bboyPos;		
_foot setParticleParams [["A3\Data_F\ParticleEffects\Universal\universal.p3d",16,3,48,0],"","Billboard",1,20,[0,0,0],[0,0,60],0,1.7,1,0,[50,20,100],[[1,1,1,-10],[1,1,1,-7],[1,1,1,-4],[1,1,1,-0.5],[1,1,1,0]],[0.05],1,1,"","",bboyPos];		
_foot setParticleRandom [0,[75,75,15],[5,5,50],0,0,[0,0,0,0],0,0,360];		
_foot setDropInterval 0.010;	

_footSmock = "#particlesource" createVehicleLocal getpos bboyPos;		
_footSmock setParticleParams [["A3\Data_F\ParticleEffects\Universal\universal.p3d",16,7,48,1],"","Billboard",1,25,[0,0,0],[0,0,60],0,1.7,1,0,[40,15,200],[[1,1,1,0.4],[1,1,1,0.7],[1,1,1,0.7],[1,1,1,0.7],[1,1,1,0.7],[1,1,1,0.7],[1,1,1,0.7],[1,1,1,0]],[0.5,0.1],1,1,"","",bboyPos];		
_footSmock setParticleRandom [0,[75,75,15],[5,5,50],0,0,[0,0,0,0],0,0,360];		
_footSmock setDropInterval 0.0010;

_wave = "#particlesource" createVehicleLocal getpos bboyPos;
_wave setParticleParams [["A3\Data_F\ParticleEffects\Universal\universal.p3d",16,7,48],"","Billboard",1,20,[0,0,0],[0,0,0],0,1.5,1,0,[50,100],[[0.1,0.1,0.1,0.5],[0.5,0.5,0.5,0.5],[1,1,1,0.3],[1,1,1,0]],[1,0.5],0.1,1,"","",bboyPos];
_wave setParticleRandom [2,[20,20,20],[5,5,0],0,0,[0,0,0,0.1],0,0];
_wave setParticleCircle [50,[-80,-80,2.5]];
_wave setDropInterval 0.0002;	

[] spawn
{
	"colorCorrections" ppEffectAdjust [2,60,0,[0.0,0.0,0.0,0.0],[0.8*2,0.5*2,0.0,0.7],[0.9,0.9,0.9,0.0]];
	"colorCorrections" ppEffectCommit 0;
	"colorCorrections" ppEffectAdjust [1,0.8,-0.001,[0.0,0.0,0.0,0.0],[0.8*2,0.5*2,0.0,0.7],[0.9,0.9,0.9,0.0]]; 
	"colorCorrections" ppEffectCommit 3;
	"colorCorrections" ppEffectEnable true;
	"filmGrain" ppEffectEnable true; 
	"filmGrain" ppEffectAdjust [0.02,1,1,0.1,1,false];
	"filmGrain" ppEffectCommit 5;
};

sleep 3; //effets visuels statiques (défaut: 3)
deleteVehicle _wave;
deleteVehicle _foot;
deleteVehicle _footSmock;
deleteVehicle _hat;

sleep 25; //always superior than the sleep damage (fn_damageAtom.sqf, line 7).
deleteVehicle bboyPos;

[] spawn
{
	sleep 10;
	"colorCorrections" ppEffectAdjust [1,1,0,[1,1,1,0.0],[1,1,1,1],[1,1,1,0.0]];
	"colorCorrections" ppEffectCommit 30;
	"filmGrain" ppEffectEnable false;
	"filmGrain" ppEffectCommit 0;
};