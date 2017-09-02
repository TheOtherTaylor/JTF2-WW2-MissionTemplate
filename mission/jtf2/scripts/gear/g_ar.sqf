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
_uniform = "jtf2_param_indep_uniform_setting" call BIS_fnc_getParamValue;
switch (_uniform) do{
    case 0:{ //"US Army"
        player forceAddUniform "U_LIB_US_Private_1st";
        player addVest "V_LIB_US_Vest_Bar";
        player addHeadgear "H_LIB_US_Helmet";

        player addItemToVest "LIB_20Rnd_762x63"; //Preload Magazine
        player addWeapon "LIB_M1918A2_BAR";
        for "_i" from 1 to 2 do {player addItemToVest "LIB_US_Mk_2";};
        for "_i" from 1 to 12 do {player addItemToVest "LIB_20Rnd_762x63";};
    };
    case 1:{//"US Airborne 42"
        player forceAddUniform "U_LIB_US_AB_Uniform_M42";
        player addVest "V_LIB_US_AB_Vest_Bar";
        player addHeadgear "H_LIB_US_AB_Helmet_2";

        player addItemToVest "LIB_20Rnd_762x63"; //Preload Magazine
        player addWeapon "LIB_M1918A2_BAR";
        for "_i" from 1 to 2 do {player addItemToVest "LIB_US_Mk_2";};
        for "_i" from 1 to 10 do {player addItemToVest "LIB_20Rnd_762x63";};
    };
    case 1:{//"UK Army"
        player forceAddUniform "fow_u_uk_bd40_private";
        player addVest "fow_v_uk_bren_green";
        player addHeadgear "fow_h_uk_mk2";

        player addItemToVest "fow_30Rnd_303_bren"; //Preload Magazine
        player addWeapon "fow_w_bren";
        for "_i" from 1 to 2 do {player addItemToVest "fow_e_no36mk1";};
        for "_i" from 1 to 8 do {player addItemToVest "fow_30Rnd_303_bren";};
    };
};

comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";