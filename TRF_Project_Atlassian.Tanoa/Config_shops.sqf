ClothingArray=[
  [
    "CTRG Rifleman",            //Names
    "U_B_CTRG_Soldier_2_F",     //Uniform
    "V_PlateCarrierH_CTRG",     //Vest
    "",                         //Backpack
    "H_HelmetB_light_black",    //Headgear
    "G_Shades_Black",           //Googles
    "Binocular"                 //Binocs
  ],
  [
    "Ghille",            //Names
    "U_B_T_FullGhillie_tna_F",     //Uniform
    "V_TacChestrig_grn_F",     //Vest
    "",                         //Backpack
    "",    //Headgear
    "G_Balaclava_TI_blk_F",           //Googles
    "Rangefinder"                 //Binocs
  ],
  [
    "Diver",                    //Names
    "U_B_Wetsuit",             //Uniform
    "V_RebreatherB",          //Vest
    "B_AssaultPack_blk",      //Backpack
    "",                      //Headgear
    "G_B_Diving",           //Googles
    ""                        //Binocs
  ],
  [
    "Heli Pilot",            //Names
    "U_B_HeliPilotCoveralls",     //Uniform
    "V_TacVest_blk",     //Vest
    "",                         //Backpack
    "H_CrewHelmetHeli_B",    //Headgear
    "G_Aviator",           //Googles
    ""                 //Binocs
  ],
  [
    "Jet Pilot",            //Names
    "U_B_PilotCoveralls",     //Uniform
    "",     //Vest
    "",                         //Backpack
    "H_PilotHelmetFighter_B",    //Headgear
    "G_Aviator",           //Googles
    ""                 //Binocs
  ]
];
WeaponArray=[
  /*RifleMan Start*/
  [
    "Rifleman",                 //Classname
    "arifle_SPAR_01_blk_F",       //Primary
    "hgun_Pistol_heavy_01_F",     //Secondary
    "",                           //Launcher
      [                           //PrimaryAttachments
        "optic_ERCO_blk_F",          //Sight
        "acc_flashlight",            //Light/Laster
        "",                          //Silencer
        ""                           //Bipod
        ],
    [                             //Magazines
      ["30Rnd_556x45_Stanag",5],
      ["11Rnd_45ACP_Mag",3],
      ["SmokeShell",5],
      ["B_IR_Grenade",1],
      ["HandGrenade",2],
      ["FirstAidKit",3]
    ],
    [                           //Items
      "ItemMap",
      "ItemCompass",
      "ItemWatch",
      "ItemRadio"
    ]
  ],
    /*Sniper Start*/
  [
  "Sniper",                 //Classname
  "srifle_LRR_tna_F",       //Primary
  "hgun_Rook40_F",     //Secondary
  "",                           //Launcher
    [                           //PrimaryAttachments
      "optic_LRPS_tna_F",          //Sight
      "",                         //Light/Laster
      "",                          //Silencer
      ""                           //Bipod
      ],
  [                             //Magazines
    ["7Rnd_408_Mag",8],
    ["16Rnd_9x21_Mag",3],
    ["SmokeShell",5],
    ["B_IR_Grenade",1],
    ["HandGrenade",2],
    ["FirstAidKit",3]
  ],
  [                           //Items
    "ItemMap",
    "ItemCompass",
    "ItemWatch",
    "ItemRadio"
  ]
  ],
  /*Pilot Start*/
  [
  "Pilot",                 //Classname
  "SMG_05_F",       //Primary
  "hgun_Rook40_F",     //Secondary
  "",                           //Launcher
    [                           //PrimaryAttachments
      "optic_Holosight_blk_F",          //Sight
      "",                         //Light/Laster
      "",                          //Silencer
      ""                           //Bipod
      ],
  [                             //Magazines
    ["30Rnd_9x21_Mag_SMG_02",8],
    ["16Rnd_9x21_Mag",3],
    ["SmokeShell",5],
    ["B_IR_Grenade",1],
    ["HandGrenade",2],
    ["FirstAidKit",3]
  ],
  [                           //Items
    "ItemMap",
    "ItemCompass",
    "ItemWatch",
    "ItemRadio"
  ]
  ],
  /*Machineguner*/
  [
  "Machinegunner",                 //Classname
  "arifle_SPAR_02_blk_F",       //Primary
  "hgun_Rook40_F",     //Secondary
  "",                           //Launcher
    [                           //PrimaryAttachments
      "optic_Holosight_blk_F",          //Sight
      "",                         //Light/Laster
      "",                          //Silencer
      "bipod_01_F_blk"                           //Bipod
      ],
  [                             //Magazines
    ["150Rnd_556x45_Drum_Mag_F",3],
    ["16Rnd_9x21_Mag",3],
    ["SmokeShell",5],
    ["B_IR_Grenade",1],
    ["HandGrenade",2],
    ["FirstAidKit",3]
  ],
  [                           //Items
    "ItemMap",
    "ItemCompass",
    "ItemWatch",
    "ItemRadio"
  ]
  ]
];
VehicleArray = [
  [
    "B_CTRG_LSV_01_light_F",
    "900"
  ],
  [
    "B_MRAP_01_F",
    "900"
  ],
  [
    "C_Offroad_01_F",
    "900"
  ],
  [
    "C_Offroad_02_unarmed_F",
    "900"
  ],
  [
    "I_C_Offroad_02_unarmed_F",
    "900"
  ],
  [
    "B_Truck_01_mover_F",
    "900"
  ],
  [
    "B_Truck_01_ammo_F",
    "900"
  ],
  [
    "B_Truck_01_box_F",
    "900"
  ],
  [
    "B_Truck_01_fuel_F",
    "900"
  ],
  [
    "B_Truck_01_medical_F",
    "900"
  ],
  [
    "B_Truck_01_transport_F",
    "900"
  ],
  [
    "B_Truck_01_covered_F",
    "900"
  ],
  [
    "B_Truck_01_Repair_F",
    "900"
  ]
];
