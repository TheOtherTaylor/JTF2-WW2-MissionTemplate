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
        player addVest "V_LIB_GER_SniperBelt";
        player addHeadgear "H_LIB_GER_Helmet_ns_painted";
    };
    case 1:{//"Afrika Korps"
        player forceAddUniform "U_LIB_DAK_Soldier_3";
        player addVest "V_LIB_DAK_SniperBelt";
        player addHeadgear "H_LIB_DAK_Helmet_ns_2";
    };
    case 2:{//"SS - Camo"
        player forceAddUniform "U_LIB_GER_Scharfschutze";
        player addVest "V_LIB_DAK_SniperBelt";
        player addHeadgear "H_LIB_GER_HelmetCamo2";
    };
};

comment "Add weapons";
player addItemToVest "LIB_5Rnd_792x57";//Preload
player addItemToVest "LIB_8Rnd_9x19";//Preload
this addWeapon "LIB_K98ZF39";
this addWeapon "LIB_P38";
this addWeapon "LIB_Binocular_GER";

comment"Add Ammo";
player addItemToVest "LIB_PMD6_MINE_mag";
for "_i" from 1 to 12 do {player addItemToVest "LIB_5Rnd_792x57";};
for "_i" from 1 to 3 do {player addItemToVest "LIB_8Rnd_9x19";};
 
comment "Add items";
player addItemToVest "ACE_EntrenchingTool";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player unlinkItem "ItemRadio";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";