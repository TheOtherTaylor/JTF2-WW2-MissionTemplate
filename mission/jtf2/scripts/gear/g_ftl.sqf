comment "Add containers";
_uniform = "jtf2_param_indep_uniform_setting" call BIS_fnc_getParamValue;
switch (_uniform) do{
    case 0:{ //"US Army"
        player forceAddUniform "U_LIB_US_Sergant";
        player addVest "V_LIB_US_Vest_Thompson";
        player addHeadgear "H_LIB_US_Helmet_Net_ns";

        player addItemToVest "LIB_30Rnd_45ACP"; //Preload Magazine
        player addWeapon "LIB_M1A1_Thompson";
        for "_i" from 1 to 2 do {player addItemToVest "LIB_US_Mk_2";};
        for "_i" from 1 to 5 do {player addItemToVest "LIB_30Rnd_45ACP";};
    };
    case 1:{//"US Airborne 42"
        player forceAddUniform "U_LIB_US_AB_Uniform_M42_NCO";
        player addVest "V_LIB_US_AB_Vest_Thompson";
        player addHeadgear "H_LIB_US_AB_Helmet_NCO_1";

        player addItemToVest "LIB_30Rnd_45ACP"; //Preload Magazine
        player addWeapon "LIB_M1A1_Thompson";
        for "_i" from 1 to 2 do {player addItemToVest "LIB_US_Mk_2";};
        for "_i" from 1 to 8 do {player addItemToVest "LIB_30Rnd_45ACP";};
    };
    case 1:{//"UK Army"
        player forceAddUniform "fow_u_uk_bd40_sergeant";
        player addVest "fow_v_uk_sten_green";
        player addHeadgear "fow_h_uk_mk2";

        player addItemToVest "fow_32Rnd_9x19_sten"; //Preload Magazine
        player addWeapon "fow_w_sten_mk2";
        for "_i" from 1 to 2 do {player addItemToVest "fow_e_no36mk1";};
        for "_i" from 1 to 8 do {player addItemToVest "fow_32Rnd_9x19_sten";};
    };
};

comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";