/*
    File: fn_equipGear.sqf
    Author: John "Paratus" VanderZwet
    
    Description:
    Initializes custom gear textures
*/

if (playerSide == west) then {
    if ((uniform player) == "U_B_SpecopsUniform_sgg") then
    {
        player setObjectTextureGlobal [0, "textures\Uniforme\Gendarmerie.jpg"];
        // [[player,"textures\Uniforme\Gendarmerie.jpg"], "life_fnc_setUniform", true, true] spawn life_fnc_MP;
    };
    if ((uniform player) == "U_B_CombatUniform_mcam") then
    {
        player setObjectTextureGlobal [0, "textures\cop2.jpg"];
        // [[player,"textures\cop2.jpg"], "life_fnc_setUniform", true, true] spawn life_fnc_MP;
    };
    if ((uniform player) == "U_B_CombatUniform_mcam_vest") then
    {
        player setObjectTextureGlobal [0, "textures\cop3.jpg"];
        // [[player,"textures\cop3.jpg"], "life_fnc_setUniform", true, true] spawn life_fnc_MP;
    };
}
else
{
    if(player getVariable["life_medic",false]) then {
        if ((uniform player) == "U_Rangemaster") then
        {
        player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"];
        // [[player,"textures\medic_uniform.jpg"], "life_fnc_setUniform", true, true] spawn life_fnc_MP;
        };
    };
};