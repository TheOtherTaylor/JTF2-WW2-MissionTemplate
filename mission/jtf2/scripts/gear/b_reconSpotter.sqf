comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
_uniform = "jtf2_param_blufor_uniform_setting" call BIS_fnc_getParamValue;
switch (_uniform) do{
    case 0:{ //"Heer"
        player forceAddUniform "U_LIB_GER_Soldier2";
        player addVest "V_LIB_GER_VestSTG";
        player addHeadgear "H_LIB_GER_Helmet_ns_painted";
    };
    case 1:{//"Afrika Korps"
        player forceAddUniform "U_LIB_DAK_Soldier_3";
        player addVest "V_LIB_DAK_VestSTG";
        player addHeadgear "H_LIB_DAK_Helmet_ns_2";
    };
    case 2:{//"SS - Camo"
        player forceAddUniform "U_LIB_GER_Scharfschutze";
        player addVest "V_LIB_GER_VestSTG";
        player addHeadgear "H_LIB_GER_HelmetCamo2";
    };
};

comment "Add weapons";
player addItemToVest "LIB_30Rnd_792x33";//Preload
this addWeapon "LIB_MP44";
this addWeapon "LIB_Binocular_GER";

comment"Add Ammo";
for "_i" from 1 to 6 do {player addItemToVest "LIB_30Rnd_792x33";};
for "_i" from 1 to 2 do {player addItemToVest "LIB_US_M18";};

comment "Add items";
player addItemToVest "ACE_EntrenchingTool";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player unlinkItem "ItemRadio";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";