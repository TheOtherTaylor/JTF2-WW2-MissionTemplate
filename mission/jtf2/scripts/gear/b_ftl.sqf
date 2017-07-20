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
        player addVest "V_LIB_GER_VestMP40";
        player addHeadgear "H_LIB_GER_Helmet_ns";
        
        comment "Add weapons";
        player addItemToVest "fow_32Rnd_9x19_mp40";
        player addWeapon "fow_w_mp40";
        for "_i" from 1 to 6 do {player addItemToVest "fow_32Rnd_9x19_mp40";};
    };
    case 1:{//"Afrika Korps"
        player forceAddUniform "U_LIB_DAK_Soldier";
        player addVest "V_LIB_DAK_VestMP40";
        player addHeadgear "H_LIB_DAK_Helmet_ns";

        comment "Add weapons";
        player addItemToVest "fow_32Rnd_9x19_mp40";
        player addWeapon "fow_w_mp40";
        for "_i" from 1 to 6 do {player addItemToVest "fow_32Rnd_9x19_mp40";};
    };
    case 2:{//"SS - Camo"
        player forceAddUniform "U_LIB_GER_Soldier_camo3";
        player addVest "V_LIB_GER_VestSTG";
        player addHeadgear "H_LIB_GER_HelmetCamo";

        comment "Add weapons";
        player addItemToVest "LIB_30Rnd_792x33";
        player addWeapon "LIB_MP44";
        for "_i" from 1 to 6 do {player addItemToVest "LIB_30Rnd_792x33";};
    };
};

comment"Add Ammo";
for "_i" from 1 to 2 do {player addItemToVest "LIB_shg24";};
 
comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "fow_i_whistle";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player unlinkItem "ItemRadio";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";