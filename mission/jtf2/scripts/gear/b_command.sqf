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
        player forceAddUniform "U_LIB_GER_Leutnant";
        player addVest "V_LIB_GER_OfficerVest";
        player addHeadgear "H_LIB_GER_OfficerCap";
    };
    case 1:{//"Afrika Korps"
        player forceAddUniform "U_LIB_DAK_lieutenant";
        player addVest "V_LIB_GER_OfficerVest";
        player addHeadgear "H_LIB_DAK_OfficerCap";
    };
    case 2:{//"SS - Camo"
        player forceAddUniform "U_LIB_GER_Officer_camo";
        player addVest "V_LIB_GER_OfficerVest";
        player addHeadgear "fow_h_ger_officer_cap_ss";
    };
};

comment "Add weapons";
player addWeapon "LIB_Binocular_GER";
player addItemToVest "LIB_8Rnd_9x19_P08";//Preload
player addWeapon "LIB_P08";

comment"Add Ammo";
for "_i" from 1 to 3 do {player addItemToVest "LIB_8Rnd_9x19_P08";};
 
comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "fow_i_whistle";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player unlinkItem "ItemRadio";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";