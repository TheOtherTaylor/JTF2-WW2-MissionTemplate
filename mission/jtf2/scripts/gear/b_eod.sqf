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
        player addVest "V_LIB_GER_PioneerVest";
        player addHeadgear "H_LIB_GER_Helmet";
        player addBackpack "B_LIB_GER_SapperBackpack_empty";
    };
    case 1:{//"Afrika Korps"
        player forceAddUniform "U_LIB_DAK_Sentry";
        player addVest "V_LIB_GER_PioneerVest";
        player addHeadgear "H_LIB_DAK_Helmet";
        player addBackpack "B_LIB_GER_SapperBackpack_empty";
    };
    case 2:{//"SS - Camo"
        player forceAddUniform "U_LIB_GER_Soldier_camo4";
        player addVest "V_LIB_GER_PioneerVest";
        player addHeadgear "H_LIB_GER_HelmetCamo";
        player addBackpack "B_LIB_GER_SapperBackpack_empty";
    };
};

comment "Add weapons";
player addItemToVest "LIB_5Rnd_792x57";//Preload
player addWeapon "LIB_K98";
player addWeapon "LIB_Binocular_GER";

comment"Add Ammo";
for "_i" from 1 to 10 do {player addItemToVest "LIB_5Rnd_792x57";};
for "_i" from 1 to 2 do {player addItemToVest "LIB_Ladung_Small_MINE_mag";};
player addItemToBackpack "LIB_ToolKit";
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_LIB_LadungPM";
player addItemToBackpack "ACE_LIB_FireCord";
player addItemToBackpack "LIB_TM44_MINE_mag";
 
comment "Add items";
player addItemToVest "ACE_EntrenchingTool";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player unlinkItem "ItemRadio";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";