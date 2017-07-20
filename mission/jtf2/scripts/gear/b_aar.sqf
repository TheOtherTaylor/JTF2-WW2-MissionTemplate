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
        player forceAddUniform "U_LIB_GER_Schutze";
        player addVest "V_LIB_GER_VestKar98";
        player addHeadgear "H_LIB_GER_Helmet";
        player addBackpack "B_LIB_GER_A_frame";
        for "_i" from 1 to 2 do {player addItemToVest "LIB_75Rnd_792x57";};
        player addItemToBackpack "LIB_75Rnd_792x57";
    };
    case 1:{//"Afrika Korps"
        player forceAddUniform "U_LIB_DAK_Sentry";
        player addVest "V_LIB_DAK_VestKar98";
        player addHeadgear "H_LIB_DAK_Helmet";
        player addBackpack "B_LIB_GER_A_frame";
        for "_i" from 1 to 2 do {player addItemToVest "LIB_75Rnd_792x57";};
        player addItemToBackpack "LIB_75Rnd_792x57";
    };
    case 2:{//"SS - Camo"
        player forceAddUniform "U_LIB_GER_Soldier_camo4";
        player addVest "V_LIB_GER_VestKar98";
        player addHeadgear "H_LIB_GER_HelmetCamo";
        player addBackpack "B_LIB_GER_A_frame";
        for "_i" from 1 to 2 do {player addItemToVest "LIB_50Rnd_792x57";};
        for "_i" from 1 to 2 do {player addItemToBackpack "LIB_50Rnd_792x57";};
    };
};

comment "Add weapons";
player addWeapon "LIB_Binocular_GER";
player addItemToVest "LIB_5Rnd_792x57";//Preload
player addWeapon "LIB_K98";

comment"Add Ammo";
for "_i" from 1 to 8 do {player addItemToVest "LIB_5Rnd_792x57";};
for "_i" from 1 to 4 do {player addItemToBackpack "LIB_5Rnd_792x57";};

comment "Add items";
player addItemToVest "ACE_EntrenchingTool";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player unlinkItem "ItemRadio";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";