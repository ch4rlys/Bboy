_countdown = 60; //défaut 60
while { _countdown > 0 } do
{
	hintSilent parseText format
	[
		"
			<t size='2'>BOMB-A 15KT</t>
			<br/>
			<t size='1'>Countdown :</t>
			<br/>
			<t color=""#FF3300"" size='6'>%1</t>
		",
		_countdown
	];
	sleep 1;
	_countdown = _countdown -1;
};
hintSilent "";