///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", localize "STR_NAPA_NAME"] call _fnc_saveToTemplate; 						

//////////////////////
//   Select Flag   //
////////////////////

switch (flagMode) do {
    case 1: {
        ["flag", "Flag_NZ_F"] call _fnc_saveToTemplate;
        flagX setFlagTexture "\nzflagpatch\flag_nz_co.paa";
        ["flagTexture", "\nzflagpatch\marker_nz_co.paa"] call _fnc_saveToTemplate;

        MyInsignia = "shvr_nz";
        publicVariable "MyInsignia";
        ["flagMarkerType", "flag_NZ"] call _fnc_saveToTemplate;
    };
    case 2: {
        ["flag", "Flag_UT_F"] call _fnc_saveToTemplate;
        flagX setFlagTexture "\nzflagpatch\flag_ut_co.paa";
        ["flagTexture", "\nzflagpatch\marker_ut_co.paa"] call _fnc_saveToTemplate;

        MyInsignia = "shvr_ut";
        publicVariable "MyInsignia";
        ["flagMarkerType", "flag_UT"] call _fnc_saveToTemplate;
    };
    case 3: {
        ["flag", "Flag_RP_F"] call _fnc_saveToTemplate;
        flagX setFlagTexture "\nzflagpatch\flag_rp_co.paa";
        ["flagTexture", "\nzflagpatch\marker_rp_co.paa"] call _fnc_saveToTemplate;

        MyInsignia = "shvr_rp";
        publicVariable "MyInsignia";			
        ["flagMarkerType", "flag_RP"] call _fnc_saveToTemplate;
    };
};

MENU_COMMS_1 =
[
[localize "STR_FLAGMODE_SELECT", false],
[localize "STR_FlagMode_NZ", [2], "", -5, [["expression",
        "flagX forceFlagTexture '\nzflagpatch\flag_nz_co.paa';
        A3A_faction_reb setVariable ['flag','Flag_NZ_F',true];
        A3A_faction_reb setVariable ['flagTexture','\nzflagpatch\flag_nz_co.paa',true];
        A3A_faction_reb setVariable ['flagMarkerType','flag_NZ', true];
        SDKFlag = A3A_faction_reb getVariable 'flag';
        SDKFlagTexture = A3A_faction_reb getVariable 'flagTexture';
        SDKFlagMarkerType = A3A_faction_reb getVariable 'flagMarkerType';
        publicVariable 'SDKFlag';
        publicVariable 'SDKFlagTexture';
        publicVariable 'SDKFlagMarkerType';
        {if (sidesX getVariable [_x,sideUnknown] == teamPlayer) then {[_x] call A3A_fnc_mrkUpdate};} forEach airportsX;
        MyInsignia = 'shvr_nz';
        publicVariable 'MyInsignia';
        {[_x,MyInsignia] call BIS_fnc_setUnitInsignia;} forEach (allUnits select {alive _x && side _x == teamPlayer});"
        ]], "1", "1", "\A3\ui_f\data\IGUI\Cfg\Cursors\iconcursorsupport_ca.paa"],
[localize "STR_FlagMode_UT",        [3], "", -5, [["expression",
        "flagX forceFlagTexture '\nzflagpatch\flag_ut_co.paa';
        A3A_faction_reb setVariable ['flag','Flag_UT_F',true];
        A3A_faction_reb setVariable ['flagTexture','\nzflagpatch\flag_ut_co.paa',true];
        A3A_faction_reb setVariable ['flagMarkerType','flag_UT', true];
        SDKFlag = A3A_faction_reb getVariable 'flag';
        SDKFlagTexture = A3A_faction_reb getVariable 'flagTexture';
        SDKFlagMarkerType = A3A_faction_reb getVariable 'flagMarkerType';
        publicVariable 'SDKFlag';
        publicVariable 'SDKFlagTexture';
        publicVariable 'SDKFlagMarkerType';
        {if (sidesX getVariable [_x,sideUnknown] == teamPlayer) then {[_x] call A3A_fnc_mrkUpdate};} forEach airportsX;
        MyInsignia = 'shvr_ut';
        publicVariable 'MyInsignia';
        {[_x,MyInsignia] call BIS_fnc_setUnitInsignia;} forEach (allUnits select {alive _x && side _x == teamPlayer});"
        ]], "1", "1", "\A3\ui_f\data\IGUI\Cfg\Cursors\iconcursorsupport_ca.paa"],
[localize "STR_FlagMode_RP",        [4], "", -5, [["expression",
		"flagX forceFlagTexture '\nzflagpatch\flag_rp_co.paa';
		A3A_faction_reb setVariable ['flag','Flag_RP_F',true];
		A3A_faction_reb setVariable ['flagTexture','\nzflagpatch\flag_rp_co.paa',true];
		A3A_faction_reb setVariable ['flagMarkerType','flag_RP', true];
		SDKFlag = A3A_faction_reb getVariable 'flag';
		SDKFlagTexture = A3A_faction_reb getVariable 'flagTexture';
		SDKFlagMarkerType = A3A_faction_reb getVariable 'flagMarkerType';
		publicVariable 'SDKFlag';
		publicVariable 'SDKFlagTexture';
		publicVariable 'SDKFlagMarkerType';
		{if (sidesX getVariable [_x,sideUnknown] == teamPlayer) then {[_x] call A3A_fnc_mrkUpdate};} forEach airportsX;
		MyInsignia = 'shvr_rp';
		publicVariable 'MyInsignia';
		{[_x,MyInsignia] call BIS_fnc_setUnitInsignia;} forEach (allUnits select {alive _x && side _x == teamPlayer});"
		]], "1", "1"]
];

publicVariable "MENU_COMMS_1";
//////////////////
//   vehicles   //
//////////////////

["vehicleBasic", "ncs_nzdf_rover"] call _fnc_saveToTemplate;
["vehicleLightUnarmed", "UK3CB_BAF_Husky_Passenger_HMG_Green_MTP"] call _fnc_saveToTemplate;
["vehicleLightArmed", "ncs_nzdf_hmt400"] call _fnc_saveToTemplate;
["vehicleTruck", "ncs_nzdf_hx58_covered"] call _fnc_saveToTemplate;
["vehicleAT", "ncs_nzdf_laviii"] call _fnc_saveToTemplate;
["vehicleAA", "RHS_Ural_Zu23_MSV_01"] call _fnc_saveToTemplate; 		

["vehicleBoat", "ncs_nzdf_rhib"] call _fnc_saveToTemplate; 	
["vehicleRepair", "ncs_nzdf_hx58_repair"] call _fnc_saveToTemplate; 			
["vehicleFuel", "ncs_nzdf_hx58_fuel"] call _fnc_saveToTemplate; 			

["vehiclePlane", "ncs_nzdf_c130lep"] call _fnc_saveToTemplate; 		
["vehiclePayloadPlane", "ncs_nzdf_t6c_1"] call _fnc_saveToTemplate;
["vehicleHeli", "not_supported"] call _fnc_saveToTemplate; 		

["vehicleCivCar", "RDS_Golf4_Civ_01"] call _fnc_saveToTemplate;
["vehicleCivTruck", "RHS_Ural_Open_Civ_03"] call _fnc_saveToTemplate;
["vehicleCivHeli", "RHS_Mi8t_civilian"] call _fnc_saveToTemplate;
["vehicleCivBoat", "C_Rubberboat"] call _fnc_saveToTemplate;
["vehicleCivSupply", "C_Van_01_box_F"] call _fnc_saveToTemplate;

["staticMG", "UK3CB_BAF_Static_L111A1_Deployed_Mid"] call _fnc_saveToTemplate; 					
["staticAT", "ncs_nzdf_m101"] call _fnc_saveToTemplate; 					
["staticAA", "rhsgref_nat_ZU23"] call _fnc_saveToTemplate; 					
["staticMortar", "ncs_nzdf_l16a2"] call _fnc_saveToTemplate; 				
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

//Static weapon definitions
["baggedMGs", [["RHS_DShkM_Gun_Bag","RHS_DShkM_TripodHigh_Bag"]]] call _fnc_saveToTemplate; 				
["baggedAT", [["RHS_SPG9_Gun_Bag","RHS_SPG9_Tripod_Bag"]]] call _fnc_saveToTemplate; 					
["baggedAA", [["not_supported"]]] call _fnc_saveToTemplate; 					
["baggedMortars", [["RHS_Podnos_Gun_Bag","RHS_Podnos_Bipod_Bag"]]] call _fnc_saveToTemplate; 			

["mineAT", [	
	"ATMine_Range_Mag",
	"rhs_mine_tm62m_mag",
	"rhs_mine_M19_mag",
	"rhs_mag_mine_ptm1",
	"SLAMDirectionalMine_Wire_Mag",
	"rhssaf_mine_tma4_mag",
	"rhs_mine_TM43_mag"
]] call _fnc_saveToTemplate;
["mineAPERS", [
	"rhs_mine_M7A2_mag",
	"APERSMine_Range_Mag",
	"rhs_mine_pmn2_mag",
	"APERSBoundingMine_Range_Mag",
	"rhs_mag_mine_pfm1",
	"rhsusf_mine_m14_mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"APERSTripMine_Wire_Mag",
	"rhssaf_tm100_mag",
	"rhssaf_tm200_mag",
	"rhssaf_tm500_mag",
	"rhssaf_mine_pma3_mag",
	"rhssaf_mine_mrud_a_mag",
	"rhssaf_mine_mrud_b_mag",
	"rhssaf_mine_mrud_c_mag",
	"rhssaf_mine_mrud_d_mag",
	"rhs_mine_smine35_press_mag",
	"rhs_mine_smine44_press_mag",
	"rhs_mine_stockmine43_2m_mag",
	"rhs_mine_stockmine43_4m_mag",
	"rhs_mine_M3_tripwire_mag",
	"rhs_mine_Mk2_tripwire_mag",
	"rhs_mine_mk2_pressure_mag",
	"rhs_mine_m3_pressure_mag",
	"rhs_mine_glasmine43_hz_mag",
	"rhs_mine_glasmine43_bz_mag",
	"rhs_mine_m2a3b_press_mag",
	"rhs_mine_m2a3b_trip_mag",
	"rhs_mine_a200_bz_mag",
	"rhs_mine_a200_dz35_mag",
	"rhs_mine_m2a3b_press_mag",
	"rhs_mine_m2a3b_trip_mag",
	"rhs_mine_smine35_trip_mag",
	"rhs_mine_smine44_trip_mag"
]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["rhs_ec75_mag", 2], ["rhs_ec75_sand_mag", 2], ["rhs_ec200_mag", 1], ["rhs_ec200_sand_mag", 1], ["rhsusf_m112_mag", 1], ["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["rhs_ec75_mag", 4], ["rhs_ec75_sand_mag", 4], ["rhs_ec200_mag", 2], ["rhs_ec200_sand_mag", 2], ["rhs_ec400_mag", 1], ["rhs_ec400_sand_mag", 1],["DemoCharge_Remote_Mag", 2], ["rhsusf_m112_mag", 2], ["rhsusf_m112x4_mag", 1], ["rhs_charge_M2tet_x2_mag", 1], ["SatchelCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////
//Vanilla + RHS Uniforms
["uniforms", [
    "u_ncs_nzdf_general_mc_uniform",
    "u_ncs_nzdf_uniform",
    "rhs_uniform_emr_patchless",
    "rhs_uniform_FROG01_wd",
    "rhs_uniform_g3_mc"
]] call _fnc_saveToTemplate;

["headgear", [
    "rhs_beanie_green",
    "H_Bandanna_khk",
    "H_Cap_blk",
    "H_Cap_oli",
    "H_Cap_headphones",
    "rhs_headband",
    "ncs_nzdf_arch_mc",
    "rhsusf_ach_helmet_headset_ess_ucp",
    "ncs_nzdf_cap"
]] call _fnc_saveToTemplate;

private _initialRebelEquipment = [
	"Binocular", "rhsusf_bino_m24", "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "rhs_1PN138", "optic_Hamr",
	"ncs_nzdf_marsl", "ncs_nzdf_lp", "ncs_nzdf_acog_1", "30Rnd_556x45_Stanag", "bipod_03_F_blk",
	"ncs_nzdf_maximi", "acc_pointer_IR" ,"ncs_nzdf_compm4s", "ncs_nzdf_200Rnd_762x51",
	"ncs_nzdf_marsl_gl", "acc_flashlight", "ncs_nzdf_acog", "30Rnd_556x45_Stanag", "1Rnd_HE_Grenade_shell",
	"ncs_nzdf_mrad", "muzzle_snds_B", "ncs_nzdf_sniperscope", "ncs_nzdf_10Rnd_mrad", "bipod_01_F_blk",
	"ncs_nzdf_m107", "ncs_nzdf_lp", "ncs_nzdf_sniperscope", "ncs_nzdf_10Rnd_127x99_m107",
	"ncs_nzdf_dmw", "muzzle_snds_M", "ncs_nzdf_lp", "optic_LRPS", "ncs_nzdf_20Rnd_762x51_DMW",
	"ncs_nzdf_mag58_1", "optic_AMS",
	"ncs_nzdf_steyr_a1_car", "muzzle_snds_m_khk_F", "ncs_nzdf_lp", "ncs_nzdf_30Rnd_556x45_Steyr",
	"ncs_nzdf_dmw", "optic_DMS", "ncs_nzdf_20Rnd_762x51_DMW",
	"ncs_nzdf_browning_hi_power", "muzzle_snds_L", "ncs_nzdf_13Rnd_9x19",
	"ncs_nzdf_glock17", "ncs_nzdf_17Rnd_9x19",
	"ncs_nzdf_carl_gustav", "ncs_nzdf_MAAWS_HEAT_M",
	"ncs_nzdf_vest_r_mc",
	"ncs_nzdf_vest_r",
    "ncs_nzdf_vest_mg",
    "ncs_nzdf_vest_mg_mc",
    "ncs_nzdf_vest_o",
    "ncs_nzdf_vest_o_mc",
    "ncs_nzdf_vest_med",
    "ncs_nzdf_vest_med_mc",
    "ncs_nzdf_vest_g",
    "ncs_nzdf_vest_g_mc",
    "ncs_nzdf_vest_c",
    "ncs_nzdf_vest_c_mc",
    "rhs_6b23_6sh116_flora",
    "ncs_nzdf_arch_mc",
    "rhsusf_ach_helmet_headset_ess_ucp",
    "ncs_nzdf_cap",
    "ncs_nzdf_mc_kitbag",
    "ncs_nzdf_kitbag",
    "ncs_nzdf_patrol",
    "ncs_nzdf_mc_f4m_backpack",
    "ncs_nzdf_f4m_backpack",
	"UK3CB_BAF_SmokeShell",
	"rhssaf_mag_br_m84",
	"rhs_mag_m67",
	"HandGrenade",
	"APERSMineDispenser_Mag",
	"IEDUrbanBig_Remote_Mag",
	"IEDLandBig_Remote_Mag",
	"rhsusf_m112_mag",
	"DemoCharge_Remote_Mag",
	"rhssaf_tm500_mag",
	"rhs_ec200_mag",
	"rhs_ec75_mag",
	"ncs_nzdf_launch_Javelin",
	"ncs_nzdf_Javelin_M",
	"rhs_ec400_mag",
	"rhssaf_tm200_mag",
	"rhssaf_tm100_mag",
	"rhs_mine_M7A2_mag",
	"APERSMine_Range_Mag",
	"rhs_mine_pmn2_mag",
	"APERSBoundingMine_Range_Mag",
	"rhs_mag_mine_pfm1",
	"rhsusf_mine_m14_mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"APERSTripMine_Wire_Mag",
	"rhssaf_tm100_mag",
	"rhssaf_tm200_mag",
	"rhssaf_tm500_mag",
	"rhssaf_mine_pma3_mag",
	"rhssaf_mine_mrud_a_mag",
	"rhssaf_mine_mrud_b_mag",
	"rhssaf_mine_mrud_c_mag",
	"rhssaf_mine_mrud_d_mag",
	"rhs_mine_smine35_press_mag",
	"rhs_mine_smine44_press_mag",
	"rhs_mine_stockmine43_2m_mag",
	"rhs_mine_stockmine43_4m_mag",
	"rhs_mine_M3_tripwire_mag",
	"rhs_mine_Mk2_tripwire_mag",
	"rhs_mine_mk2_pressure_mag",
	"rhs_mine_m3_pressure_mag",
	"rhs_mine_glasmine43_hz_mag",
	"rhs_mine_glasmine43_bz_mag",
	"rhs_mine_m2a3b_press_mag",
	"rhs_mine_m2a3b_trip_mag",
	"rhs_mine_a200_bz_mag",
	"rhs_mine_a200_dz35_mag",
	"rhs_mine_m2a3b_press_mag",
	"rhs_mine_m2a3b_trip_mag",
	"rhs_mine_smine35_trip_mag",
	"rhs_mine_smine44_trip_mag",
	"SatchelCharge_Remote_Mag",
	"rhs_acc_2dpZenit","Binocular","Laserbatteries"
];
if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment pushBack "tf_anprc155_coyote"};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment pushBack "TFAR_anprc155_coyote"};

["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	
]] call _fnc_saveToTemplate;

lootCrate = "Box_Syndicate_Ammo_F";
rallyPoint = "B_RadioBag_01_wdl_F";

//black market stuff
shop_UAV = ["rhs_pchela1t_vvs"];
shop_AA = ["rhsgref_cdf_zsu234", "rhsgref_cdf_zsu234", "I_LT_01_AA_F"];
shop_MRAP = ["rhsgref_BRDM2UM_ins_g", "rhsgref_BRDM2_ins_g", "rhsusf_M1117_O"];
shop_wheel_apc = ["rhsgref_ins_g_btr60", "rhsgref_nat_btr70", "rhs_btr80a_vmf"];
shop_track_apc = ["rhsgref_hidf_m113a3_m2", "rhsgref_cdf_bmd1k", "rhsgref_cdf_bmp2e"];
shop_heli = ["rhs_uh1h_hidf_gunship", "rhsgref_cdf_reg_Mi17Sh"];
shop_tank = ["rhsgref_ins_g_t72ba", "rhsgref_ins_g_t72bb", "rhsgref_ins_g_t72bc"];
shop_plane = ["RHSGREF_A29B_HIDF", "rhs_l39_cdf", "rhs_l159_CDF"];

additionalShopLight = ["rhssaf_m1151_olive_pkm", "rhssaf_m1025_olive_m2", "rhs_tigr_sts_vmf"];
additionalShopAtgmVehicles = ["rhsusf_m1045_w", "rhsusf_m1045_w", "rhsgref_BRDM2_ATGM"];
additionalShopManpadsVehicles = [];
additionalShopArtillery = [];

//military building models (common for all sides)
smallBunker = "Land_BagBunker_Small_F";
sandbag = "Land_BagFence_Long_F";

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

//     DO NOT GO PAST THIS LINE

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData setVariable ["rifles", []]; 				
_loadoutData setVariable ["carbines", []]; 				
_loadoutData setVariable ["grenadeLaunchers", []]; 		
_loadoutData setVariable ["SMGs", []]; 					
_loadoutData setVariable ["machineGuns", []]; 			//this line determines machine guns -- Example: ["arifle_MX_SW_F","arifle_MX_SW_Hamr_pointer_F"] -- Array, can contain multiple assets
_loadoutData setVariable ["marksmanRifles", []]; 		
_loadoutData setVariable ["sniperRifles", []]; 			
_loadoutData setVariable ["lightATLaunchers", []]; 		
_loadoutData setVariable ["ATLaunchers", []]; 			
_loadoutData setVariable ["missileATLaunchers", []]; 	
_loadoutData setVariable ["AALaunchers", []]; 			
_loadoutData setVariable ["sidearms", []]; 				

_loadoutData setVariable ["ATMines", []]; 				
_loadoutData setVariable ["APMines", []]; 				
_loadoutData setVariable ["lightExplosives", []]; 		
_loadoutData setVariable ["heavyExplosives", []]; 		

_loadoutData setVariable ["antiInfantryGrenades", []]; 	
_loadoutData setVariable ["antiTankGrenades", []]; 		
_loadoutData setVariable ["smokeGrenades", []]; 		




_loadoutData setVariable ["maps", ["ItemMap"]];
_loadoutData setVariable ["watches", ["ItemWatch"]];
_loadoutData setVariable ["compasses", ["ItemCompass"]];
_loadoutData setVariable ["radios", ["ItemRadio"]];
_loadoutData setVariable ["gpses", ["ItemGPS"]];
_loadoutData setVariable ["NVGs", []]; 
_loadoutData setVariable ["binoculars", ["Binocular"]];

_loadoutData setVariable ["uniforms", ["u_ncs_nzdf_general_mc_uniform",
    "u_ncs_nzdf_uniform",
    "rhs_uniform_emr_patchless",
    "rhs_uniform_FROG01_wd",
    "rhs_uniform_g3_mc"]];
_loadoutData setVariable ["vests", []];
_loadoutData setVariable ["backpacks", []];
_loadoutData setVariable ["longRangeRadios", []];
_loadoutData setVariable ["helmets", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData setVariable ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData setVariable ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData setVariable ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData setVariable ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];


_loadoutData setVariable ["items_squadleader_extras", []];
_loadoutData setVariable ["items_rifleman_extras", []];
_loadoutData setVariable ["items_medic_extras", []];
_loadoutData setVariable ["items_grenadier_extras", []];
_loadoutData setVariable ["items_explosivesExpert_extras", []];
_loadoutData setVariable ["items_engineer_extras", ["Toolkit", "MineDetector"]];
_loadoutData setVariable ["items_lat_extras", []];
_loadoutData setVariable ["items_at_extras", []];
_loadoutData setVariable ["items_aa_extras", []];
_loadoutData setVariable ["items_machineGunner_extras", []];
_loadoutData setVariable ["items_marksman_extras", []];
_loadoutData setVariable ["items_sniper_extras", []];
_loadoutData setVariable ["items_police_extras", []];
_loadoutData setVariable ["items_crew_extras", []];
_loadoutData setVariable ["items_unarmed_extras", []];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["backpacks"] call _fnc_setBackpack;

	[["grenadeLaunchers", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;


	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["antiTankGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_rifleman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["antiTankGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["carbines"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_medic"] call _fnc_addItemSet;
	["items_medic_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["grenadeLaunchers"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;


	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_grenadier_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 4] call _fnc_addItem;
	["antiTankGrenades", 3] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;


	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_explosivesExpert_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["lightExplosives", 2] call _fnc_addItem;
	if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["carbines"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_engineer_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

	[["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 1] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_lat_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["antiTankGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	[selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 2] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_at_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["antiTankGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["AALaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 2] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_aa_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["machineGuns"] call _fnc_setPrimary;
	["primary", 4] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_machineGunner_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["marksmanRifles"] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_marksman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["sniperRifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_sniper_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["smgs", "carbines"]] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_police_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["smgs"] call _fnc_setPrimary;
	["primary", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_crew_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_unarmed_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _prefix = "militia";
private _unitTypes = [
	["Petros", _squadLeaderTemplate],
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["staticCrew", _riflemanTemplate],
	["Medic", _medicTemplate, [["medic", true]]],
	["Engineer", _engineerTemplate, [["engineer", true]]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _grenadierTemplate],
	["LAT", _latTemplate],
	["AT", _atTemplate],
	["AA", _aaTemplate],
	["MachineGunner", _machineGunnerTemplate],
	["Marksman", _marksmanTemplate],
	["Sniper", _sniperTemplate],
	["Unarmed", _unarmedTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
