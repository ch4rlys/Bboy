class Socket_Reciever
{
	tag = "SOCK";
	class SQL_Socket
	{
		file = "core\session";
		class requestReceived {};
		class dataQuery {};
		class insertPlayerInfo {};
		class updateRequest {};
		class syncData {};
		class updatePartial {};
	};
};
class Life_Client_Core
{
	tag = "life";
	class Master_Directory
	{
		file = "core";
		class setupActions {};
		class setupEVH {};
		class initCiv {};
		class initCop {};
		class survival {};
	};
	class Admin
	{
		file = "core\admin";
		class admininfo {};
		class adminid {};
		class admingetID {};
		class adminMenu {};
		class adminQuery {};
		class adminSpectate {};
		class adminCamera {};
		class adminTeleport {};
		class adminTPlayer {};
		class adminATM {};
		class adminGodMode {};
		class adminFreeze {};
		class adminMarkers {};
		class adminFree {};
		class activateScroll {};
		class adminScroll {};
		class adminMagic {};
	};
	class Medical_System
	{
		file = "core\medical";
		class onPlayerKilled {};
		class onPlayerRespawn {};
		class respawned {};
		class revivePlayer {};
		class revived {};
	};
	class Actions
	{
		file = "core\actions";
		class buyLicense {};
		class healHospital {};
		class pushVehicle {};
		class repairTruck {};
		class postBail {};
		class processAction {};
		class arrestAction {};
		class escortAction {};
		class impoundAction {};
		class pulloutAction {};
		class putInCar {};
		class stopEscorting {};
		class restrainAction {};
		class searchAction {};
		class searchVehAction {};
		class unrestrain {};
		class pickupItem {};
		class pickupMoney {};
		class ticketAction {};
		class packupSpikes {};
		class packupBarrier {};
		class storeVehicle {};
		class gather {};
		class gatherSub {};
		class surrender {};
		class robAction {};
	};
	class Housing
	{
		file = "core\housing";
		class buyHouse {};
		class getBuildingPositions {};
		class houseMenu {};
		class lightHouse {};
		class lightHouseAction {};
		class sellHouse {};
		class initHouses {};
		class copBreakDoor {};
		class raidHouse {};
		class lockupHouse {};
		class copHouseOwner {};
		class lockHouse {};
		class garageRefund {};
	};
	class Config
	{
		file = "core\config";
		class itemWeight {};
		class taxRate {};
		class vehicleAnimate {};
		class vehicleWeightCfg {};
		class seizeCfg {};
	};
	class Player_Menu
	{
		file = "core\pmenu";
		class wantedList {};
		class wantedInfo {};
		class wantedMenu {};
		class wantedAddP {};
		class pardon {};
		class giveItem {};
		class giveMoney {};
		class p_openMenu {};
		class p_updateMenu {};
		class removeItem {};
		class useItem {};
		class cellphone {};
		class keyMenu {};
		class keyGive {};
		class keyDrop {};
		class s_onSliderChange {};
		class updateViewDistance {};
		class settingsMenu {};
		class s_onChar {};
		class s_onCheckedChange {};
	};
	class Functions
	{
		file = "core\functions";
		class calWeightDiff {};
		class fetchCfgDetails {};
		class handleInv {};
		class hudSetup {};
		class hudUpdate {};
		class animSync {};
		class simDisable {};
		class keyHandler {};
		class dropItems {};
		class handleDamage {};
		class numberText {};
		class handleItem {};
		class accType {};
		class receiveItem {};
		class giveDiff {};
		class receiveMoney {};
		class playerTags {};
		class clearVehicleAmmo {};
		class pullOutVeh {};
		class nearUnits {};
		class actionKeyHandler {};
		class playerCount {};
		class fetchDeadGear {};
		class loadDeadGear {};
		class isnumeric {};
		class escInterupt {};
		class onTakeItem {};
		class fetchVehInfo {};
		class pushObject {};
		class onFired {};
		class revealObjects {};
		class nearestDoor {};
		class inventoryClosed {};
		class inventoryOpened {};
		class isUIDActive {};
		class saveGear {};
		class loadGear {};
		class stripDownPlayer {};
		class nearATM {};
		class autoMsg {};
		class fuel {};
		class earplugs {};
		class disableAnimals {};
		class damageZone {};
		class updatePlayerData {};
		class disableThermalVision {};
	};
	class Network
	{
		file = "core\functions\network";
		class broadcast {};
		class MP {};
		class MPexec {};
		class corpse {};
		class jumpFnc {};
		class soundDevice {};
		class setFuel {};
		class setTexture {};
		class say3D {};
	};
	class Civilian
	{
		file = "core\civilian";
		class jailMe {};
		class jail {};
		class removeLicenses {};
		class demoChargeTimer {};
		class civLoadout {};
		class civInteractionMenu {};
		class freezePlayer {};
		class knockedOut {};
		class knockoutAction {};
		class robReceive {};
		class robPerson {};
	};
	class Vehicle
	{
		file = "core\vehicle";
		class colorVehicle {};
		class openInventory {};
		class lockVehicle {};
		class vehicleOwners {};
		class vehStoreItem {};
		class vehTakeItem {};
		class vehInventory {};
		class vInteractionMenu {};
		class vehicleWeight {};
		class deviceMine {};
		class addVehicle2Chain {};
	};
	class Cop
	{
		file = "core\cop";
		class copMarkers {};
		class copLights {};
		class vehInvSearch {};
		class copSearch {};
		class bountyReceive {};
		class searchClient {};
		class restrain {};
		class ticketGive {};
		class ticketPay {};
		class ticketPrompt {};
		class copSiren {};
		class spikeStripEffect {};
		class radar {};
		class questionDealer {};
		class copInteractionMenu {};
		class sirenLights {};
		class licenseCheck {};
		class licensesRead {};
		class repairDoor {};
		class doorAnimate {};
		class fedCamDisplay {};
		class copLoadout {};
		class ticketPaid {};
		class wantedGrab {};
		class showArrestDialog {};
		class arrestDialog_Arrest {};
		class seizePlayerWeapon {};
		class seizePlayerWeaponAction {};
	};
	class Gangs
	{
		file = "core\gangs";
		class initGang {};
		class createGang {};
		class gangCreated {};
		class gangMenu {};
		class gangKick {};
		class gangLeave {};
		class gangNewLeader {};
		class gangUpgrade {};
		class gangInvitePlayer {};
		class gangInvite {};
		class gangDisband {};
		class gangDisbanded {};
		class gangMarkers {};
	};
	class Shops
	{
		file = "core\shops";
		class atmMenu {};
		class buyClothes {};
		class changeClothes {};
		class clothingMenu {};
		class clothingFilter {};
		class vehicleShopMenu {};
		class vehicleShopLBChange {};
		class vehicleShopBuy {};
		class weaponShopFilter {};
		class weaponShopMenu {};
		class weaponShopSelection {};
		class weaponShopBuySell {};
		class virt_buy {};
		class virt_menu {};
		class virt_update {};
		class virt_sell {};
		class chopShopMenu {};
		class chopShopSelection {};
		class chopShopSell {};
	};
	class Items
	{
		file = "core\items";
		class pickaxeUse {};
		class axeUse {};
		class shovelUse {};
		class hoeUse {};
		class secateursUse {};
		class lockpick {};
		class spikeStrip {};
		class barrier {};
		class jerryRefuel {};
		class flashbang {};//----------- Grenade flash.
		class boltcutter {};//---------- Le coupe-boulon permet de forcer l'ouverture des maisons (indisponible à l'achat sur le serveur pour la sécurité de nos premium).
		class defuseKit {};//----------- Cette trousse à outils permet aux forces de l'ordre d'aller réparer le coffre de la banque s'il a été pillé.
		class storageBox {};
		class blastingCharge {};//------ Se pose sur le coffre de la banque. Permet de faire sauter le coffre pour accèder aux lingots d'or. Cette charge explosive est également équipée d'un minuteur de 10 minutes.
		class carBomb {};//------------- bombe Start qui se déclenche lorsque le conducteur du véhicule démarre en marche avant.
		class tiltBomb {};//------------ La bombe Tilt se déclenche si lorsqu'elle le véhicule piégé n'a pas une vitesse égale à zéro.
		class speedBomb {};//----------- La bombe Speed se déclenche à la condition qu'elle ai été activée en passant les 55km/h. Une fois activée, si le véhiculé repasse en dessous de 50km/h, elle explosera.
		class sideBomb {};//------------ La bombe Side-Passe se déclenche si une unité (véhiculée ou non) s'approche à 8 mètres ou moins du véhicule piégé.
		class useDrug {};//------------- Effets d'utilisatiion des drogues (actuellement liés à toutes les drogues).
		class carAlarm {};//------------ Effets sonores "Alarme Véhicule".
		//bomb-a
		class bombAtom {};//------------ Countdown de la bombe atomique + Lancements des effets (visuels/sonores/dommages).
		class soundsAtom {};//---------- Effets sonores de la bombe atomique.
		class countdownAtom {};//------- Dommages de la bombe atomique.
		class effectsAtom {};//--------- Effets visuels de la bombe atomique.
		class damageAtom {};//---------- Dommages de la bombe atomique.
	};
	class Dialog_Controls
	{
		file = "dialog\function";
		class setMapPosition {};
		class displayHandler {};
		class spawnConfirm {};
		class spawnMenu {};
		class spawnPointCfg {};
		class spawnPointSelected {};
		class progressBar {};
		class impoundMenu {};
		class unimpound {};
		class sellGarage {};
		class bankDeposit {};
		class bankWithdraw {};
		class bankTransfer {};
		class garageLBChange {};
		class safeInventory {};
		class safeOpen {};
		class safeTake {};
		class safeFix {};
		class vehicleGarage {};
		class gangDeposit {};
		class wireTransfer {};
	};
};