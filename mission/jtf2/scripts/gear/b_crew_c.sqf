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
        player forceAddUniform "U_LIB_GER_Spg_crew_private";
        player addVest "V_LIB_GER_TankPrivateBelt";
        player addHeadgear "H_LIB_GER_SPGPrivateCap";
    };
    case 1:{//"Afrika Korps"
        player forceAddUniform "U_LIB_GER_Spg_crew_private";
        player addVest "V_LIB_GER_TankPrivateBelt";
        player addHeadgear "H_LIB_GER_SPGPrivateCap";
    };
    case 2:{//"SS - Camo"
        player forceAddUniform "U_LIB_GER_Tank_crew_private";
        player addVest "V_LIB_GER_TankPrivateBelt";
        player addHeadgear "H_LIB_GER_TankPrivateCap";
    };
};

comment "Add weapons";
player addItemToVest "LIB_32Rnd_9x19";//Preload
player addItemToVest "LIB_8Rnd_9x19_P08";//Preload
player addWeapon "LIB_MP40";
player addWeapon "LIB_P08";

comment"Add Ammo";
player addItemToVest "SmokeShell";
for "_i" from 1 to 3 do {player addItemToVest "LIB_32Rnd_9x19";};
for "_i" from 1 to 3 do {player addItemToVest "LIB_8Rnd_9x19_P08";};

comment "Add items";
player addItemToVest "ACE_EntrenchingTool";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player unlinkItem "ItemRadio";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";