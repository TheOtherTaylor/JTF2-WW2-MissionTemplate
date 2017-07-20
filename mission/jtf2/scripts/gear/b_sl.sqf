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
        player forceAddUniform "U_LIB_GER_Unterofficer";
        player addVest "V_LIB_GER_VestUnterofficer";
        player addHeadgear "H_LIB_GER_Helmet_ns";
    };
    case 1:{//"Afrika Korps"
        player forceAddUniform "U_LIB_DAK_NCO";
        player addVest "V_LIB_DAK_VestUnterofficer";
        player addHeadgear "H_LIB_DAK_Helmet_ns";
    };
    case 2:{//"SS - Camo"
        player forceAddUniform "U_LIB_GER_Soldier_camo";
        player addVest "V_LIB_GER_VestUnterofficer";
        player addHeadgear "H_LIB_GER_HelmetCamo";
    };
};

comment "Add weapons";
player addWeapon "LIB_Binocular_GER";
player addItemToVest "fow_32Rnd_9x19_mp40";//Preload
player addItemToVest "LIB_8Rnd_9x19";//Preload
player addWeapon "fow_w_mp40";
player addWeapon "LIB_P38";

comment"Add Ammo";
for "_i" from 1 to 6 do {player addItemToVest "fow_32Rnd_9x19_mp40";};
for "_i" from 1 to 2 do {player addItemToVest "LIB_8Rnd_9x19";};
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
