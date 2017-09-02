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
        player addVest "V_LIB_US_Vest_Carbine";
        player addHeadgear "H_LIB_US_Helmet_Net_os";
        player addBackpack "fow_b_us_rocket_bag";

        player addItemToVest "LIB_15Rnd_762x33"; //Preload Magazine
        player addItemToBackpack "fow_1Rnd_m6a1"; //Preload Rocket
        player addWeapon "LIB_M1_Carbine";
        player addWeapon "fow_w_m1a1_bazooka";
        "_i" from 1 to 3 do {player addItemToBackpack "fow_1Rnd_m6a1";};
        for "_i" from 1 to 2 do {player addItemToVest "LIB_US_Mk_2";};
        for "_i" from 1 to 12 do {player addItemToVest "LIB_15Rnd_762x33";};
    };
    case 1:{//"US Airborne 42"
        player forceAddUniform "U_LIB_US_AB_Uniform_M42";
        player addVest "V_LIB_US_AB_Vest_Carbine";
        player addHeadgear "H_LIB_US_AB_Helmet_2";
        player addBackpack "fow_b_us_rocket_bag";

        player addItemToVest "LIB_15Rnd_762x33"; //Preload Magazine
        player addItemToBackpack "fow_1Rnd_m6a1"; //Preload Rocket
        player addWeapon "LIB_M1A1_Carbine";
        player addWeapon "fow_w_m1a1_bazooka";
        "_i" from 1 to 3 do {player addItemToBackpack "fow_1Rnd_m6a1";};
        for "_i" from 1 to 2 do {player addItemToVest "LIB_US_Mk_2";};
        for "_i" from 1 to 12 do {player addItemToVest "LIB_15Rnd_762x33";};
    };
    case 1:{//"UK Army"
        player forceAddUniform "fow_u_uk_bd40_private";
        player addVest "fow_v_uk_sten_green";
        player addHeadgear "fow_h_uk_mk2";
        player addBackpack "fow_b_uk_piat";

        player addItemToVest "fow_32Rnd_9x19_sten"; //Preload Magazine
        player addItemToBackpack "fow_1Rnd_piat"; //Preload Magazine
        player addWeapon "fow_w_sten_mk2";
        player addWeapon "fow_w_piat";
        for "_i" from 1 to 2 do {player addItemToVest "fow_e_no36mk1";};
        for "_i" from 1 to 8 do {player addItemToVest "fow_32Rnd_9x19_sten";};
        for "_i" from 1 to 2 do {player addItemToBackpack "fow_1Rnd_piat";};
        player addItemToBackpack "fow_1Rnd_piat_HE";
    };
};

comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";