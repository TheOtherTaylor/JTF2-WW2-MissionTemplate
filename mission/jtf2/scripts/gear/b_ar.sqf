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
        player forceAddUniform "U_LIB_GER_Gefreiter";
        player addVest "V_LIB_GER_VestMG";
        player addHeadgear "H_LIB_GER_Helmet_ns";
        
        comment "Add weapons";
        player addItemToVest "LIB_75Rnd_792x57";
        player addItemToVest "LIB_8Rnd_9x19";
        player addWeapon "LIB_MG34_PT";
        player addWeapon "LIB_P38";
        for "_i" from 1 to 2 do {player addItemToVest "LIB_75Rnd_792x57";};
        for "_i" from 1 to 3 do {player addItemToVest "LIB_8Rnd_9x19";};
    };
    case 1:{//"Afrika Korps"
        player forceAddUniform "U_LIB_DAK_Soldier_3";
        player addVest "V_LIB_DAK_VestMG";
        player addHeadgear "H_LIB_DAK_Helmet";

        comment "Add weapons";
        player addItemToVest "LIB_75Rnd_792x57";
        player addItemToVest "LIB_8Rnd_9x19";
        player addWeapon "LIB_MG34_PT";
        player addWeapon "LIB_P38";
        for "_i" from 1 to 2 do {player addItemToVest "LIB_75Rnd_792x57";};
        for "_i" from 1 to 3 do {player addItemToVest "LIB_8Rnd_9x19";};
    };
    case 2:{//"SS - Camo"
        player forceAddUniform "U_LIB_GER_Soldier_camo3";
        player addVest "V_LIB_GER_VestMG";
        player addHeadgear "H_LIB_GER_HelmetCamo";

        comment "Add weapons";
        player addItemToVest "fow_50Rnd_792x57";
        player addItemToVest "LIB_8Rnd_9x19";
        player addWeapon "fow_w_mg42";
        player addWeapon "LIB_P38";
        for "_i" from 1 to 3 do {player addItemToVest "fow_50Rnd_792x57";};
        for "_i" from 1 to 3 do {player addItemToVest "LIB_8Rnd_9x19";};
    };
};

comment"Add Ammo";
for "_i" from 1 to 2 do {player addItemToVest "LIB_shg24";};
 
comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player unlinkItem "ItemRadio";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";