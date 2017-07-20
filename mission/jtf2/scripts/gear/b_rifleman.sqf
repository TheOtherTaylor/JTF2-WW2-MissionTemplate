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
    };
    case 1:{//"Afrika Korps"
        player forceAddUniform "U_LIB_DAK_Sentry";
        player addVest "V_LIB_DAK_VestKar98";
        player addHeadgear "H_LIB_DAK_Helmet";
    };
    case 2:{//"SS - Camo"
        player forceAddUniform "U_LIB_GER_Soldier_camo4";
        player addVest "V_LIB_GER_VestKar98";
        player addHeadgear "H_LIB_GER_HelmetCamo";
    };
};

comment "Add weapons";
player addItemToVest "LIB_5Rnd_792x57";//Preload
player addWeapon "LIB_K98";

comment"Add Ammo";
player addItemToVest "SmokeShell";
for "_i" from 1 to 12 do {player addItemToVest "LIB_5Rnd_792x57";};
for "_i" from 1 to 2 do {player addItemToVest "LIB_shg24";};
player addItemToVest "fow_e_m24_at";
 
comment "Add items";
player addItemToVest "ACE_EntrenchingTool";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player unlinkItem "ItemRadio";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";