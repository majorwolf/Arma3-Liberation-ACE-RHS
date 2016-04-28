// This file allows you to add content to the mission without conflict issues after each update of the original classnames.sqf
// If you want more modifications to be supported by this file, let's discuss it on the forums.



// *** SUPPORT STUFF ***

// Setting a value here will overwrite the original value found from the mission. Do that if you're doing a total conversion.
// Each of these should be unique, the same classnames for different purposes may cause various unpredictable issues with player actions. Or not. Just don't try.
FOB_typename = nil;						// Default "Land_Cargo_HQ_V1_F";
FOB_box_typename = nil;					// Default "B_Slingload_01_Cargo_F";
FOB_truck_typename = nil;				// Default "B_Truck_01_box_F";
Arsenal_typename = nil;					// Default "B_supplyCrate_F";
Respawn_truck_typename = nil;			// Default "B_Truck_01_medical_F";
huron_typename = nil;					// Default "B_Heli_Transport_03_unarmed_F";
ammobox_b_typename = nil;				// Default "Box_NATO_AmmoVeh_F";
ammobox_o_typename = nil;				// Default "Box_East_AmmoVeh_F";
opfor_ammobox_transport = nil;			// Default "O_Truck_03_transport_F";    // Make sure this thing can transport ammo boxes (see box_transport_config down below) otherwise things will break
commander_classname = nil;				// Default "B_officer_F"
crewman_classname = nil;				// Default "B_crew_F";
pilot_classname = nil;					// Default "B_Helipilot_F";





// *** FRIENDLIES ***

// Each array below represents one page of the build menu
// Format : [ "classname", manpower, ammo, fuel ]
// Example : [ "B_APC_Tracked_01_AA_F", 0, 40, 15 ],

// If overwrite is set to true, then the extension list will entirely replace the original list defined in classnames.sqf. Otherwise it will be appended to it.
// Useful for total conversions to RHS and such, without having to alter the original file.
infantry_units_overwrite = false;
infantry_units_extension = [
	["rhsusf_usmc_marpat_wd_teamleader",3,0,0],
	["rhsusf_usmc_marpat_wd_riflemanat",3,0,0],
	["rhsusf_usmc_marpat_wd_rifleman_m4",2,0,0],
	["rhsusf_usmc_marpat_wd_autorifleman_m249",3,0,0],
	["rhsusf_usmc_marpat_wd_autorifleman_m249_ass",2,0,0],
	["rhsusf_usmc_marpat_wd_machinegunner",3,0,0],
	["rhsusf_usmc_marpat_wd_machinegunner_ass",2,0,0],
	["rhsusf_usmc_marpat_wd_grenadier",3,0,0],
	["rhsusf_usmc_marpat_wd_grenadier_m32",3,0,0],
	["rhsusf_usmc_marpat_wd_marksman",3,0,0],
	["rhsusf_usmc_marpat_wd_engineer",3,0,0],
	["rhsusf_usmc_marpat_wd_stinger",5,10,0],
	["rhsusf_usmc_marpat_wd_javelin",5,10,0],
	["rhsusf_usmc_marpat_wd_crewman",2,0,0],
	["rhsusf_navy_marpat_wd_medic",2,0,0]
];

light_vehicles_overwrite = true;
light_vehicles_extension = [
	["rhsusf_m998_d_2dr",0,0,2],
	["rhsusf_m998_d_2dr_fulltop",0,0,2],
	["rhsusf_m998_d_2dr_halftop",0,0,2],
	["rhsusf_m998_d_4dr",0,0,2],
	["rhsusf_m998_d_4dr_fulltop",0,0,2],
	["rhsusf_m998_d_4dr_halftop",0,0,2],
	["rhsusf_rg33_m2_d",0,10,3],
	["rhsusf_rg33_m2_USMC_d",0,10,3],
	["rhsusf_m1025_d",0,0,2],
	["rhsusf_m1025_d_m2",0,0,2],
	["rhsusf_m1025_d_Mk19",0,0,2],
	["I_MRAP_03_F",0,0,3],
	["I_MRAP_03_hmg_F",0,10,3],
	["I_MRAP_03_gmg_F",0,20,3],
	["B_Quadbike_01_F",0,0,1],
	["B_G_Offroad_01_armed_F",0,5,2],
	["B_MRAP_01_F",0,0,2],
	["B_MRAP_01_hmg_F",0,5,2],
	["B_MRAP_01_gmg_F",0,10,2],
	["B_Truck_01_transport_F",0,0,5],
	["B_Truck_01_covered_F",0,0,5],
	["B_UGV_01_F",0,0,5],
	["B_UGV_01_rcws_F",0,50,5],
	["B_Boat_Transport_01_F",0,0,2],
	["B_Boat_Armed_01_minigun_F",0,15,5]
];

heavy_vehicles_overwrite = false;
heavy_vehicles_extension = [
	["RHS_M2A3_BUSKIII_wd",0,100,5],
	["RHS_M2A2",0,100,5],
	["RHS_M2A2_BUSKI",0,100,5],
	["RHS_M2A3",0,100,5],
	["RHS_M2A3_BUSKIII",0,100,5],
	["rhsusf_m109_usarmy",0,150,5],
	["rhsusf_m109d_usarmy",0,150,5],
	["rhsusf_m113_usarmy",0,150,5],
	["rhsusf_m113_usarmy_M240",0,150,5],
	["rhsusf_m113_usarmy_MK19",0,150,5],
	["rhsusf_m113_usarmy_medical",0,150,5],
	["rhsusf_m113_usarmy_supply",0,150,5],
	["rhsusf_m113_usarmy_unarmed",0,150,5],
	["rhsusf_m1a1fep_wd",0,150,5],
	["RHS_M2A3_BUSKIII_wd",0,150,5],
	["rhsusf_m1a2sep1tuskiid_usarmy",0,150,25],
	["rhs_ZSU234_AA",0,300,25],
	["rhs_ZSU234_CHDKZ",0,300,25],
	["rhs_9k79",0,750,25],
	["rhs_9k79_K",0,1000,25],
	["rhs_9k79_B",0,5000,25]
];

air_vehicles_overwrite = false;
air_vehicles_extension = [
	["JNS_Skycrane_BLU_Black",0,0,5],
	["RHS_UH1Y_UNARMED",0,0,15],
	["RHS_UH60M_d",0,50,15],
	["RHS_UH60M_MEV2_d",0,50,15],
	["RHS_CH_47F",0,25,20],
	["RHS_C130J", 0,0,150],
	["RHS_Mi8AMTSh_UPK23_vvsc",0,75,15],
	["RHS_UH1Y",0,0,20],
	["RHS_AH1Z_GS",0,200,25],
	["RHS_AH64D_GS",0,200,45],
	["RHS_Ka52_vvsc",0,0,50],
	["RHS_AH1Z",0,225,30],
	["RHS_AH64D",0,225,50],
	["RHS_Mi24V_FAB_vvsc",0,75,30],
	["RHS_Mi24V_vvsc",0,75,40],
	["RHS_AH1Z_CS",0,200,50],
	["RHS_AH64D_CS",0,200,50],
	["RHS_A10",0,200,15],
	["Peral_A10C",0,200,15],
	["rhsusf_f22",0,300,15]
];

static_vehicles_overwrite = false;
static_vehicles_extension = [
	["RHS_M2StaticMG_MiniTripod_D",0,10,0],
	["RHS_M2StaticMG_D",0,10,0],
	["RHS_MK19_TriPod_D",0,20,0],
	["RDS_ZU23_AAF",0,25,0],
	["RHS_Stinger_AA_pod_D",0,40,0],
	["B_Mortar_01_F",0,50,0],
	["RDS_M119_AAF",0,100,0],
	["RHS_TOW_TriPod_D",0,200,0]
];

buildings_overwrite = true;
buildings_extension = [
	["ArrowDesk_L_F",0,0,0],
	["ArrowDesk_R_F",0,0,0],
	["CamoNet_BLUFOR_big_F",0,0,0],
	["CamoNet_BLUFOR_open_F",0,0,0],
	["CargoNet_01_box_F",0,0,0],
	["CraterLong",0,0,0],
	["Dirthump_1_F",0,0,0],
	["Dirthump_2_F",0,0,0],
	["Dirthump_3_F",0,0,0],
	["Flag_NATO_F",0,0,0],
	["Flag_US_F",0,0,0],
	["Land_AirIntakePlug_01_F",0,0,0],
	["Land_AirIntakePlug_02_F",0,0,0],
	["Land_AirIntakePlug_03_F",0,0,0],
	["Land_AirIntakePlug_04_F",0,0,0],
	["Land_AirIntakePlug_05_F",0,0,0],
	["Land_Airport_Tower_F",0,0,0],
	["Land_BagBunker_Large_F",0,0,0],
	["Land_BagBunker_Small_F",0,0,0],
	["Land_BagBunker_Tower_F",0,0,0],
	["Land_BagFence_Corner_F",0,0,0],
	["Land_BagFence_End_F",0,0,0],
	["Land_BagFence_Long_F",0,0,0],
	["Land_BagFence_Round_F",0,0,0],
	["Land_BagFence_Short_F",0,0,0],
	["Land_BarGate_F",0,0,0],
	["Land_CampingChair_V1_F",0,0,0],
	["Land_CampingChair_V2_F",0,0,0],
	["Land_CampingTable_F",0,0,0],
	["Land_Cargo40_military_green_F",0,0,0],
	["Land_Cargo_House_V1_F",0,0,0],
	["Land_Cargo_Patrol_V1_F",0,0,0],
	["Land_Cargo_Tower_V1_F",0,0,0],
	["Land_ClutterCutter_large_F",0,0,0],
	["Land_CncBarrierMedium4_F",0,0,0],
	["Land_CncBarrier_F",0,0,0],
	["Land_CncShelter_F",0,0,0],
	["Land_CncWall4_F",0,0,0],
	["Land_Communication_F",0,0,0],
	["Land_Device_assembled_F",0,0,0],
	["Land_DieselGroundPowerUnit_01_F",0,0,0],
	["Land_Dome_Small_F",0,0,0],
	["Land_FieldToilet_F",0,0,0],
	["Land_GasTank_02_F",0,0,0],
	["Land_Hangar_F",0,0,0],
	["Land_HBarrierBig_F",0,0,0],
	["Land_HBarrierTower_F",0,0,0],
	["Land_HBarrierWall6_F",0,0,0],
	["Land_HBarrierWall_corner_F",0,0,0],
	["Land_HBarrierWall_corridor_F",0,0,0],
	["Land_HBarrier_1_F",0,0,0],
	["Land_HBarrier_3_F",0,0,0],
	["Land_HBarrier_5_F",0,0,0],
	["Land_HelipadCircle_F",0,0,0],
	["Land_HelipadCivil_F",0,0,0],
	["Land_HelipadRescue_F",0,0,0],
	["Land_HelipadSquare_F",0,0,0],
	["Land_i_House_Small_01_V1_F",0,0,0],
	["Land_JumpTarget_F",0,0,0],
	["Land_Medevac_HQ_V1_F",0,0,0],
	["Land_MetalCase_01_large_F",0,0,0],
	["Land_Metal_rack_Tall_F",0,0,0],
	["Land_Obstacle_Bridge_F",0,0,0],
	["Land_Pallet_MilBoxes_F",0,0,0],
	["Land_PaperBox_open_full_F",0,0,0],
	["Land_PartyTent_01_F",0,0,0],
	["Land_PortableLight_double_F",0,0,0],
	["Land_PortableLight_single_F",0,0,0],
	["Land_Razorwire_F",0,0,0],
	["Land_Sign_WarningMilAreaSmall_F",0,0,0],
	["Land_Sign_WarningMilitaryArea_F",0,0,0],
	["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
	["Land_SolarPanel_3_F",0,0,0],
	["Land_spp_Mirror_F",0,0,0],
	["Land_Sun_chair_green_F",0,0,0],
	["Land_TentHangar_V1_F",0,0,0],
	["Land_ToolTrolley_02_F",0,0,0],
	["Land_Wall_IndCnc_4_F",0,0,0],
	["Land_WaterBarrel_F",0,0,0],
	["Land_WaterTank_F",0,0,0],
	["Land_WeldingTrolley_01_F",0,0,0],
	["Land_WheelChock_01_F",0,0,0],
	["Land_Workbench_01_F",0,0,0],
	["MapBoard_altis_F",0,0,0],
	["PortableHelipadLight_01_blue_F",0,0,0],
	["PortableHelipadLight_01_green_F",0,0,0],
	["PortableHelipadLight_01_red_F",0,0,0],
	["PortableHelipadLight_01_white_F",0,0,0],
	["PortableHelipadLight_01_yellow_F",0,0,0],
	["RoadBarrier_F",0,0,0],
	["ShootingPos_F",0,0,0],
	["TapeSign_F",0,0,0]
];

support_vehicles_overwrite = false;		// If you're going to overwrite this, make sure you have at least Arsenal_typename, Respawn_truck_typename, FOB_box_typename and FOB_truck_typename in there
support_vehicles_extension = [
	["B_Truck_01_medical_F",0,0,0],
	["B_Slingload_01_Medevac_F",0,0,0],
	["JNS_Skycrane_Pod_Bench_BLU_Black",0,0,0],
	["JNS_Skycrane_Pod_Ammo_BLU_Black",0,0,0],
	["JNS_Skycrane_Pod_Medical_BLU_Black",0,0,0],
	["JNS_Skycrane_Pod_Repair_BLU_Black",0,0,0],
	["JNS_Skycrane_Pod_Transport_BLU_Black",0,0,0],
	["rhsusf_m113d_usarmy_supply",0,0,0],
	["rhsusf_m113d_usarmy_medical",0,0,0]
];

// All the UAVs must be declared here, otherwise there shall be UAV controlling issues. Namely: you won't be able to control them.
uavs = [

];

// Pre-made squads for the commander build menu. These shouldn't exceed 10 members.
// Light infantry squad
blufor_squad_inf_light = [

];

// Heavy infantry squad
blufor_squad_inf = [

];

// AT specialists squad
blufor_squad_at = [

];

// AA specialists squad
blufor_squad_aa = [

];

// Force recon squad
blufor_squad_recon = [

];

// Paratroopers squad
blufor_squad_para = [

];







// *** BADDIES ***

// All OPFOR infantry. Defining a value here will replace the default value from the original mission.
opfor_sentry = "rhs_msv_emr_rifleman";
opfor_rifleman = "rhs_msv_rifleman";
opfor_grenadier = "rhs_msv_emr_grenadier";
opfor_squad_leader = "rhs_msv_emr_sergeant";
opfor_team_leader = "rhs_msv_emr_junior_sergeant";
opfor_marksman = "rhs_msv_emr_marksman";
opfor_machinegunner = "rhs_msv_emr_machinegunner";
opfor_heavygunner = "rhs_msv_emr_arifleman";
opfor_medic = "rhs_msv_emr_medic";
opfor_rpg = "rhs_msv_emr_LAT";
opfor_at = "rhs_msv_emr_at";
opfor_aa = "rhs_msv_emr_aa";
opfor_officer = "rhs_msv_emr_officer_armored";
opfor_sharpshooter = "rhs_msv_emr_marksman";
opfor_sniper = "rhs_msv_emr_marksman";
opfor_engineer = "rhs_msv_emr_engineer";
opfor_paratrooper = "rhs_msv_emr_combatcrew";

// OPFOR Vehicles to be used in secondary objectives
opfor_mrap = "rhs_tigr_3camo_msv";
opfor_mrap_armed = "rhs_tigr_sts_3camo_msv";
opfor_transport_helo = "rhs_Mi8AMT_vvsc";
opfor_transport_truck = "rhs_Ural_Open_Flat_MSV_01";
opfor_fuel_truck = "rhs_Ural_Fuel_MSV_01";
opfor_ammo_truck = "rhs_gaz66_ammo_msv";
opfor_fuel_container = nil;
opfor_ammo_container = nil;
opfor_flag = "rhs_Flag_Russia_F";

// Militia infantry. Soldier classnames the game will pick from randomly
militia_squad_overwrite = true;
militia_squad_extension = [
	"rhs_msv_emr_rifleman",
	"rhs_msv_rifleman",
	"rhs_msv_emr_grenadier",
	"rhs_msv_emr_sergeant",
	"rhs_msv_emr_junior_sergeant",
	"rhs_msv_emr_marksman",
	"rhs_msv_emr_machinegunner",
	"rhs_msv_emr_arifleman",
	"rhs_msv_emr_medic",
	"rhs_msv_emr_LAT",
	"rhs_msv_emr_at",
	"rhs_msv_emr_aa",
	"rhs_msv_emr_officer_armored",
	"rhs_msv_emr_marksman",
	"rhs_msv_emr_marksman",
	"rhs_msv_emr_engineer",
	"rhs_msv_emr_combatcrew"
];

// Militia vehicles to choose from
militia_vehicles_overwrite = true;
militia_vehicles_extension = [
	"rhs_btr70_chdkz",
	"rhs_zsu234_chdkz",
	"rhs_btr80a_msv",
	"rhs_tigr_sts_3camo_msv",
	"rhs_brm1k_msv",
	"I_MU_mercs_Offroad_01_armed_F",
	"I_MU_mercs_Offroad_01_armed_F",
	"LOP_AFR_BTR60",
	"LOP_AFR_M113_W",
	"LOP_AFR_T72BA",
	"I_MU_mercs_Offroad_01_armed_F"
];

// All the vehicles that can spawn as sector defenders and patrols
opfor_vehicles_overwrite = true;
opfor_vehicles_extension = [
	"rhs_btr70_chdkz",
	"rhs_zsu234_chdkz",
	"rhs_btr80a_msv",
	"rhs_tigr_sts_3camo_msv",
	"rhs_brm1k_msv",
	"rhs_t72bd_tv",
	"rhs_Ka52_vvsc"
];

// Same with lighter choices to be used  when the alert level is low
opfor_vehicles_low_intensity_overwrite = true;
opfor_vehicles_low_intensity_extension = [
	"rhs_btr70_chdkz",
	"rhs_zsu234_chdkz",
	"rhs_Ural_msv_01",
	"rhs_tigr_sts_3camo_msv",
	"rhs_brm1k_msv"
];

// All the vehicles that can spawn as battlegroup members
opfor_battlegroup_vehicles_overwrite = true;
opfor_battlegroup_vehicles_extension = [
	"rhs_btr70_chdkz",
	"rhs_zsu234_chdkz",
	"rhs_btr80a_msv",
	"rhs_tigr_sts_3camo_msv",
	"rhs_brm1k_msv",
	"rhs_t72bd_tv",
	"rhs_Mi24P_AT_vdu",
	"rhs_Ka52_vvsc",
	"rhs_typhoon_vdv",
	"rhs_Ural_msv_01"
];

// Same with lighter choices to be used  when the alert level is low
opfor_battlegroup_vehicles_low_intensity_overwrite = true;
opfor_battlegroup_vehicles_low_intensity_extension = [
	"rhs_btr70_chdkz",
	"rhs_tigr_sts_3camo_msv",
	"rhs_Mi24P_AT_vdu",
	"rhs_typhoon_vdv"
];

// All the vehicles that can spawn as battlegroup members (see above) and also hold 8 soldiers as passengers.
// If something in here can't hold all 8 soldiers then buggy behaviours may occur
opfor_troup_transports_overwrite = true;
opfor_troup_transports_extension = [
	"rhs_Ural_msv_01"
];

// Battlegroup members that will need to spawn in flight. Should be only helos but, who knows
opfor_choppers_overwrite = true;
opfor_choppers_extension = [
	"rhs_Mi24P_AT_vdu",
	"rhs_Ka52_vvsc"
];

// Opfor military aircrafts
opfor_air_overwrite = false;
opfor_air_extension = [

];







// Other stuff

// Civilians
civilians_overwrite = false;
civilians_extension = [

];

// Civilian vehicles
civilian_vehicles_overwrite = false;
civilian_vehicles_extension = [

];

// Everything the AI troups should be able to resupply from
ai_resupply_sources_extension = [

];

// Everything that can resupply other vehicles
vehicle_repair_sources_extension = [

];
vehicle_rearm_sources_extension = [

];
vehicle_refuel_sources_extension = [

];

// Elite vehicles that should be unlocked through military base capture.
elite_vehicles_extension = [
	"Steve_MBT_Kuma",
	"Burnes_FV4034_01",
	"RHS_AH1Z_wd_GS",
	"H_RAH66",
	"RHS_AH64D_wd",
	"JS_JC_FA18E",
	"JS_JC_FA18F",
	"greuh_pandur_wdld",
	"RHS_M2A3_BUSKIII_wd",
	"usaf_f22",
	"USAF_F35A",
	"rhsusf_m1a2sep1tuskiid_usarmy",
	"FIR_F16C",
	"FIR_F15E"
];

// Blacklisted arsenal items such as deployable weapons  that should be bought instead
// Useless if you're using a predefined arsenal in arsenal.sqf
blacklisted_from_arsenal_extension = [
	"RHS_Podnos_Bipod_Bag",
	"RHS_Podnos_Gun_Bag",
	"RHS_Metis_Gun_Bag",
	"RHS_Metis_Tripod_Bag",
	"RHS_AGS30_Tripod_Bag",
	"RHS_AGS30_Gun_Bag",
	"RHS_DShkM_Gun_Bag",
	"RHS_DShkM_TripodHigh_Bag",
	"RHS_DShkM_TripodLow_Bag",
	"RHS_Kord_Tripod_Bag",
	"RHS_Kord_Gun_Bag",
	"RHS_M2_Gun_Bag",
	"RHS_M2_Tripod_Bag",
	"rhs_M252_Gun_Bag",
	"rhs_M252_Bipod_Bag",
	"RHS_M2_MiniTripod_Bag",
	"RHS_Mk19_Gun_Bag",
	"RHS_Mk19_Tripod_Bag",
	"RHS_NSV_Tripod_Bag",
	"RHS_NSV_Gun_Bag",
	"RHS_SPG9_Gun_Bag",
	"RHS_SPG9_Tripod_Bag",
	"rhs_Tow_Gun_Bag",
	"rhs_TOW_Tripod_Bag"
];

// Configuration for ammo boxes transport
// First entry: classname
// Second entry: how far behind the vehicle the boxes should be unloaded
// Following entries: attachTo position for each box, the number of boxes that can be loaded is derived from the number of entries
box_transport_config_extension = [
	[ "greuh_eh101_gr", -6.5, [0,	4.2,	-1.45], [0,	2.5,	-1.45], [0,	0.8, -1.45], [0,	-0.9, -1.45] ]
];