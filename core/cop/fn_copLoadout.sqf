private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player addUniform "U_B_CombatUniform_mcam";

player addItem "ItemGPS";
player assignItem "ItemGPS";

player unassignItem "B_UavTerminal";
player removeItem "B_UavTerminal";

player unassignItem "ItemRadio";
player removeItem "ItemRadio";

[] call life_fnc_saveGear;