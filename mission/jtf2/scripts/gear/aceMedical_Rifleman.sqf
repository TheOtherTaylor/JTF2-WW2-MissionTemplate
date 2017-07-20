_medicalLevel = "jtf2_param_ace_medical_level" call BIS_fnc_getParamValue;
if (_medicalLevel == 2) then{
    comment "Advanced Medical Gear";
    player addItemToUniform "ACE_morphine";
    player addItemToUniform "ACE_epinephrine";
    for "_i" from 1 to 6 do {player addItemToUniform "ACE_elasticBandage";};
    for "_i" from 1 to 6 do {player addItemToUniform "ACE_packingBandage";};
    for "_i" from 1 to 2 do {player addItemToUniform "ACE_fieldDressing";};
    for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
    player addItemToUniform "ACE_tourniquet";
    player addItemToVest "ACE_salineIV_500";
    for "_i" from 1 to 4 do {player addItemToUniform "ACE_fieldDressing";};
    for "_i" from 1 to 4 do {player addItemToUniform "ACE_quikclot";};
}else{
    comment "Basic Medical Gear";
    for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
    for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
    player addItemToUniform "ACE_epinephrine";
};