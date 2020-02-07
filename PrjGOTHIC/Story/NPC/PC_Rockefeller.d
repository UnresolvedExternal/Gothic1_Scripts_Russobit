﻿
instance PC_Rockefeller(Npc_Default)
{
	name[0] = "Рокфеллер";
	npcType = npctype_main;
	guild = GIL_None;
	level = 30;
	voice = 15;
	id = 0;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 100;
	attribute[ATR_MANA_MAX] = 100;
	attribute[ATR_MANA] = 100;
	attribute[ATR_HITPOINTS_MAX] = 400;
	attribute[ATR_HITPOINTS] = 400;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_SetVisualBody(self,"hum_body_Naked0",4,1,"Hum_Head_Pony",9,0,ebr_armor_h2);
	Npc_SetTalentSkill(self,NPC_TALENT_PICKPOCKET,1);
	Npc_SetTalentValue(self,NPC_TALENT_PICKPOCKET,60);
	Npc_SetTalentSkill(self,NPC_TALENT_SNEAK,1);
	Npc_SetTalentSkill(self,NPC_TALENT_PICKLOCK,1);
	Npc_SetTalentValue(self,NPC_TALENT_PICKLOCK,60);
	Npc_SetTalentSkill(self,NPC_TALENT_MAGE,6);
	Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,2);
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
	CreateInvItem(self,ore_armor_h);
	CreateInvItem(self,ore_armor_m);
	CreateInvItem(self,crw_armor_h);
	CreateInvItem(self,dmb_armor_m);
	CreateInvItem(self,ebr_armor_m);
	CreateInvItem(self,ebr_armor_h);
	CreateInvItem(self,ebr_armor_h2);
	CreateInvItem(self,grd_armor_l);
	CreateInvItem(self,grd_armor_m);
	CreateInvItem(self,grd_armor_h);
	CreateInvItem(self,gur_armor_h);
	CreateInvItem(self,gur_armor_m);
	CreateInvItem(self,kdf_armor_l);
	CreateInvItem(self,kdf_armor_h);
	CreateInvItem(self,kdw_armor_l);
	CreateInvItem(self,kdw_armor_h);
	CreateInvItem(self,nov_armor_l);
	CreateInvItem(self,nov_armor_m);
	CreateInvItem(self,nov_armor_h);
	CreateInvItem(self,org_armor_l);
	CreateInvItem(self,org_armor_m);
	CreateInvItem(self,org_armor_h);
	CreateInvItem(self,sfb_armor_l);
	CreateInvItem(self,sld_armor_l);
	CreateInvItem(self,sld_armor_m);
	CreateInvItem(self,sld_armor_h);
	CreateInvItem(self,stt_armor_m);
	CreateInvItem(self,stt_armor_h);
	CreateInvItem(self,tpl_armor_l);
	CreateInvItem(self,tpl_armor_m);
	CreateInvItem(self,tpl_armor_h);
	CreateInvItem(self,vlk_armor_m);
	CreateInvItem(self,vlk_armor_l);
	CreateInvItem(self,ItArRuneLight);
	CreateInvItem(self,ItArRuneFirebolt);
	CreateInvItem(self,ItArRuneFireball);
	CreateInvItem(self,ItArRuneFirestorm);
	CreateInvItem(self,ItArRuneFireRain);
	CreateInvItem(self,ItArRuneTeleport1);
	CreateInvItem(self,ItArRuneTeleport2);
	CreateInvItem(self,ItArRuneTeleport3);
	CreateInvItems(self,ItArScrollTeleport4,20);
	CreateInvItem(self,ItArRuneTeleport5);
	CreateInvItem(self,ItArRuneHeal);
	CreateInvItem(self,ItArRuneChainLightning);
	CreateInvItem(self,ItArRuneThunderbolt);
	CreateInvItem(self,ItArRuneThunderball);
	CreateInvItem(self,ItArRuneIceCube);
	CreateInvItem(self,ItArRuneIceWave);
	CreateInvItem(self,ItArRuneDestroyUndead);
	CreateInvItems(self,ItArScrollTrfBloodfly,10);
	CreateInvItems(self,ItArScrollTrfCrawler,10);
	CreateInvItems(self,ItArScrollTrfLurker,10);
	CreateInvItems(self,ItArScrollTrfMeatbug,10);
	CreateInvItems(self,ItArScrollTrfMolerat,10);
	CreateInvItems(self,ItArScrollTrfOrcdog,10);
	CreateInvItems(self,ItArScrollTrfScavenger,10);
	CreateInvItems(self,ItArScrollTrfShadowbeast,10);
	CreateInvItems(self,ItArScrollTrfSnapper,10);
	CreateInvItems(self,ItArScrollTrfWaran,10);
	CreateInvItems(self,ItArScrollTrfWolf,10);
	CreateInvItems(self,ItArScrollSummonDemon,10);
	CreateInvItems(self,ItArScrollSummonSkeletons,10);
	CreateInvItems(self,ItArScrollSummonGolem,10);
	CreateInvItems(self,ItArScrollArmyOfDarkness,10);
	CreateInvItem(self,ItArRuneWindfist);
	CreateInvItem(self,ItArRuneStormfist);
	CreateInvItem(self,ItArRuneTelekinesis);
	CreateInvItem(self,ItArRuneCharm);
	CreateInvItem(self,ItArRuneSleep);
	CreateInvItem(self,ItArRunePyrokinesis);
	CreateInvItem(self,ItArRuneControl);
	CreateInvItem(self,ItArRuneBreathOfDeath);
	CreateInvItems(self,ItArScrollFear,10);
	CreateInvItems(self,ItArScrollBerzerk,10);
	CreateInvItems(self,ItArScrollShrink,10);
	CreateInvItems(self,ItFo_mutton_01,20);
	CreateInvItems(self,ItFoApple,5);
	CreateInvItems(self,ItFoLoaf,5);
	CreateInvItems(self,ItFoMutton,10);
	CreateInvItems(self,ItFoMuttonRaw,20);
	CreateInvItems(self,ItFoCheese,5);
	CreateInvItems(self,ItFoRice,5);
	CreateInvItems(self,ItFoSoup,5);
	CreateInvItems(self,ItFoMeatbugragout,5);
	CreateInvItems(self,ItFoCrawlersoup,5);
	CreateInvItems(self,ItFoBooze,10);
	CreateInvItems(self,ItFoWine,5);
	CreateInvItems(self,ItFo_wineberrys_01,5);
	CreateInvItems(self,ItFoBeer,5);
	CreateInvItems(self,ItFo_Plants_Trollberrys_01,5);
	CreateInvItems(self,ItFo_Plants_Flameberry_01,5);
	CreateInvItems(self,ItFo_Plants_Nightshadow_01,5);
	CreateInvItems(self,ItFo_Plants_Nightshadow_02,5);
	CreateInvItems(self,ItFo_Plants_OrcHerb_01,5);
	CreateInvItems(self,ItFo_Plants_OrcHerb_02,5);
	CreateInvItems(self,ItFo_Plants_mushroom_01,5);
	CreateInvItems(self,ItFo_Plants_mushroom_02,5);
	CreateInvItems(self,ItFo_Plants_Stoneroot_01,5);
	CreateInvItems(self,ItFo_Plants_Stoneroot_02,5);
	CreateInvItems(self,ItFo_Plants_RavenHerb_01,5);
	CreateInvItems(self,ItFo_Plants_RavenHerb_02,5);
	CreateInvItems(self,ItFo_Plants_mountainmoos_01,5);
	CreateInvItems(self,ItFo_Plants_mountainmoos_02,5);
	CreateInvItems(self,ItFo_Plants_Berrys_01,5);
	CreateInvItems(self,ItFo_Plants_Bloodwood_01,5);
	CreateInvItems(self,ItFo_Plants_Towerwood_01,5);
	CreateInvItems(self,ItFo_Plants_Seraphis_01,5);
	CreateInvItems(self,ItFo_Plants_Velayis_01,5);
	CreateInvItems(self,ItFo_Plants_Herb_03,5);
	CreateInvItems(self,ItFo_Plants_Herb_02,5);
	CreateInvItems(self,ItFo_Plants_Herb_01,5);
	CreateInvItems(self,ItMi_Plants_Swampherb_01,5);
	CreateInvItem(self,ItKeKey1);
	CreateInvItem(self,ItKeKey2);
	CreateInvItem(self,ItKeKey3);
	CreateInvItem(self,ItKeKey4);
	CreateInvItems(self,ItKeLockpick,100);
	CreateInvItems(self,ItLsTorch,50);
	CreateInvItems(self,ItMiHammer,5);
	CreateInvItems(self,ItMiScoop,5);
	CreateInvItems(self,ItMiNugget,1000);
	CreateInvItem(self,ItMiAlarmhorn);
	CreateInvItems(self,ItMiSwordraw,5);
	CreateInvItem(self,ItMiLute);
	CreateInvItems(self,ItMiStomper,5);
	CreateInvItems(self,ItMiFlask,5);
	CreateInvItem(self,ItMi_Stuff_Pipe_01);
	CreateInvItem(self,ItMi_Stuff_Barbknife_01);
	CreateInvItem(self,ItMi_Stuff_OldCoin_01);
	CreateInvItem(self,ItMi_Stuff_Plate_01);
	CreateInvItem(self,ItMi_Stuff_Candel_01);
	CreateInvItem(self,ItMi_Stuff_Cup_01);
	CreateInvItem(self,ItMi_Stuff_Cup_02);
	CreateInvItem(self,ItMi_Stuff_Silverware_01);
	CreateInvItem(self,ItMi_Stuff_Pan_01);
	CreateInvItem(self,ItMi_Stuff_Mug_01);
	CreateInvItem(self,ItMi_Stuff_Amphore_01);
	CreateInvItem(self,ItMi_Stuff_Idol_Sleeper_01);
	CreateInvItem(self,ItMi_Stuff_Idol_Ogront_01);
	CreateInvItems(self,ItMiJoint_1,5);
	CreateInvItems(self,ItMiJoint_2,5);
	CreateInvItems(self,ItMiJoint_3,5);
	CreateInvItem(self,ItRw_Bow_Small_01);
	CreateInvItem(self,ItRw_Bow_Small_02);
	CreateInvItem(self,ItRw_Bow_Small_03);
	CreateInvItem(self,ItRw_Bow_Small_04);
	CreateInvItem(self,ItRw_Bow_Small_05);
	CreateInvItem(self,ItRw_Bow_Long_01);
	CreateInvItem(self,ItRw_Bow_Long_02);
	CreateInvItem(self,ItRw_Bow_Long_03);
	CreateInvItem(self,ItRw_Bow_Long_04);
	CreateInvItem(self,ItRw_Bow_Long_05);
	CreateInvItem(self,ItRw_Bow_Long_06);
	CreateInvItem(self,ItRw_Bow_Long_07);
	CreateInvItem(self,ItRw_Bow_Long_08);
	CreateInvItem(self,ItRw_Bow_Long_09);
	CreateInvItem(self,ItRw_Bow_War_01);
	CreateInvItem(self,ItRw_Bow_War_02);
	CreateInvItem(self,ItRw_Bow_War_03);
	CreateInvItem(self,ItRw_Bow_War_04);
	CreateInvItem(self,ItRw_Bow_War_05);
	CreateInvItem(self,ItRw_Crossbow_01);
	CreateInvItem(self,ItRw_Crossbow_02);
	CreateInvItem(self,ItRw_Crossbow_03);
	CreateInvItem(self,ItRw_Crossbow_04);
	CreateInvItems(self,ItAmArrow,50);
	CreateInvItems(self,ItAmBolt,50);
	CreateInvItem(self,ItWrWorldmap);
	CreateInvItem(self,ItWrWorldmap_Orc);
	CreateInvItem(self,ItWrOMMap);
	CreateInvItem(self,ItWrFocusmapPsi);
	CreateInvItem(self,ItWrFocimap);
	CreateInvItem(self,ItWrOCmap);
	CreateInvItem(self,ItWrNCmap);
	CreateInvItem(self,ItWrPSImap);
	CreateInvItem(self,Goettergabe);
	CreateInvItem(self,Geheimnisse_der_Zauberei);
	CreateInvItem(self,Machtvolle_Kunst);
	CreateInvItem(self,Elementare_Arcanei);
	CreateInvItem(self,Wahre_Macht);
	CreateInvItem(self,Das_magische_Erz);
	CreateInvItem(self,Schlacht_um_Varant1);
	CreateInvItem(self,Schlacht_um_Varant2);
	CreateInvItem(self,Myrtanas_Lyrik);
	CreateInvItem(self,Lehren_der_Goetter1);
	CreateInvItem(self,Lehren_der_Goetter2);
	CreateInvItem(self,Lehren_der_Goetter3);
	CreateInvItem(self,Jagd_und_Beute);
	CreateInvItem(self,Kampfkunst);
	CreateInvItem(self,Astronomie);
	CreateInvItem(self,Rezepturen);
	CreateInvItem(self,Rezepturen2);
	CreateInvItem(self,ItWr_Book_Circle_01);
	CreateInvItem(self,ItWr_Book_Circle_02);
	CreateInvItem(self,ItWr_Book_Circle_03);
	CreateInvItem(self,ItWr_Book_Circle_04);
	CreateInvItem(self,ItWr_Book_Circle_05);
	CreateInvItem(self,ItWr_Book_Circle_06);
	CreateInvItem(self,ItMw_1H_Club_01);
	CreateInvItem(self,ItMw_1H_Poker_01);
	CreateInvItem(self,ItMw_1H_Sickle_01);
	CreateInvItem(self,ItMw_1H_Mace_Light_01);
	CreateInvItem(self,ItMw_1H_Sledgehammer_01);
	EquipItem(self,ItMw_1H_Warhammer_01);
	CreateInvItem(self,ItMw_1H_Warhammer_02);
	CreateInvItem(self,ItMw_1H_Warhammer_03);
	CreateInvItem(self,ItMw_1H_Hatchet_01);
	CreateInvItem(self,ItMw_1H_Sword_Old_01);
	CreateInvItem(self,ItMw_1H_Nailmace_01);
	CreateInvItem(self,ItMw_1H_Sword_Short_01);
	CreateInvItem(self,ItMw_1H_Sword_Short_02);
	CreateInvItem(self,ItMw_1H_Sword_Short_03);
	CreateInvItem(self,ItMw_1H_Sword_Short_04);
	CreateInvItem(self,ItMw_1H_Sword_Short_05);
	CreateInvItem(self,ItMw_1H_Axe_Old_01);
	CreateInvItem(self,ItMw_1H_Scythe_01);
	CreateInvItem(self,ItMw_2H_Staff_01);
	CreateInvItem(self,ItMw_2H_Staff_02);
	CreateInvItem(self,ItMw_2H_Staff_03);
	CreateInvItem(self,ItMw_1H_Mace_01);
	CreateInvItem(self,ItMw_1H_Mace_02);
	CreateInvItem(self,ItMw_1H_Mace_03);
	CreateInvItem(self,ItMw_1H_Mace_04);
	CreateInvItem(self,ItMw_1H_Sword_01);
	CreateInvItem(self,ItMw_1H_Sword_02);
	CreateInvItem(self,ItMw_1H_Sword_03);
	CreateInvItem(self,ItMw_1H_Sword_04);
	CreateInvItem(self,ItMw_1H_Sword_05);
	CreateInvItem(self,ItMw_1H_Sword_01);
	CreateInvItem(self,ItMw_1H_Mace_War_01);
	CreateInvItem(self,ItMw_1H_Mace_War_02);
	CreateInvItem(self,ItMw_1H_Mace_War_03);
	CreateInvItem(self,ItMw_1H_Mace_War_04);
	CreateInvItem(self,ItMw_1H_Sword_Long_01);
	CreateInvItem(self,ItMw_1H_Sword_Long_02);
	CreateInvItem(self,ItMw_1H_Sword_Long_03);
	CreateInvItem(self,ItMw_1H_Sword_Long_04);
	CreateInvItem(self,ItMw_1H_Sword_Long_05);
	CreateInvItem(self,ItMw_1H_Axe_01);
	CreateInvItem(self,ItMw_1H_Axe_02);
	CreateInvItem(self,ItMw_1H_Axe_03);
	CreateInvItem(self,ItMw_1H_Sword_Broad_01);
	CreateInvItem(self,ItMw_1H_Sword_Broad_02);
	CreateInvItem(self,ItMw_1H_Sword_Broad_03);
	CreateInvItem(self,ItMw_1H_Sword_Broad_04);
	CreateInvItem(self,ItMw_2H_Sword_Old_01);
	CreateInvItem(self,ItMw_1H_Sword_Bastard_01);
	CreateInvItem(self,ItMw_1H_Sword_Bastard_02);
	CreateInvItem(self,ItMw_1H_Sword_Bastard_03);
	CreateInvItem(self,ItMw_1H_Sword_Bastard_04);
	CreateInvItem(self,ItMw_2H_Axe_Old_01);
	CreateInvItem(self,ItMw_2H_Axe_Old_02);
	CreateInvItem(self,ItMw_2H_Axe_Old_03);
	CreateInvItem(self,ItMw_2H_Sword_Light_01);
	CreateInvItem(self,ItMw_2H_Sword_Light_02);
	CreateInvItem(self,ItMw_2H_Sword_Light_03);
	CreateInvItem(self,ItMw_2H_Sword_Light_04);
	CreateInvItem(self,ItMw_2H_Sword_Light_05);
	CreateInvItem(self,ItMw_2H_Axe_light_01);
	CreateInvItem(self,ItMw_2H_Axe_light_02);
	CreateInvItem(self,ItMw_2H_Axe_light_03);
	CreateInvItem(self,ItMw_2H_Sword_01);
	CreateInvItem(self,ItMw_2H_Sword_02);
	CreateInvItem(self,ItMw_2H_Sword_03);
	CreateInvItem(self,ItMw_2H_Sword_Heavy_01);
	CreateInvItem(self,ItMw_2H_Sword_Heavy_02);
	CreateInvItem(self,ItMw_2H_Sword_Heavy_03);
	CreateInvItem(self,ItMw_2H_Sword_Heavy_04);
	CreateInvItem(self,ItMw_2H_Axe_Heavy_01);
	CreateInvItem(self,ItMw_2H_Axe_Heavy_02);
	CreateInvItem(self,ItMw_2H_Axe_Heavy_03);
	CreateInvItem(self,ItMw_2H_Axe_Heavy_04);
	CreateInvItem(self,ItMw2hOrcSword01);
	CreateInvItem(self,ItMw2hOrcAxe01);
	CreateInvItem(self,ItMw2hOrcAxe02);
	CreateInvItem(self,ItMw2hOrcAxe03);
	CreateInvItem(self,ItMw2hOrcAxe04);
	CreateInvItem(self,ItMw2hOrcMace01);
	CreateInvItem(self,ItMi_Amulet_Psi_01);
	CreateInvItem(self,Schutzamulett_Waffen);
	CreateInvItem(self,Schutzamulett_Feuer);
	CreateInvItem(self,Schutzamulett_Geschosse);
	CreateInvItem(self,Schutzamulett_Magie);
	CreateInvItem(self,Schutzamulett_Magie_Feuer);
	CreateInvItem(self,Schutzamulett_Waffen_Geschosse);
	CreateInvItem(self,Schutzamulett_Total);
	CreateInvItem(self,Gewandtheitsamulett);
	CreateInvItem(self,Gewandtheitsamulett2);
	CreateInvItem(self,Staerkeamulett);
	CreateInvItem(self,Staerkeamulett2);
	CreateInvItem(self,Lebensamulett);
	CreateInvItem(self,Amulett_der_Magie);
	CreateInvItem(self,Amulett_der_Macht);
	CreateInvItem(self,Amulett_der_Erleuchtung);
	CreateInvItem(self,Schutzring_Feuer1);
	CreateInvItem(self,Schutzring_Feuer2);
	CreateInvItem(self,Schutzring_Geschosse1);
	CreateInvItem(self,Schutzring_Geschosse2);
	CreateInvItem(self,Schutzring_Waffen1);
	CreateInvItem(self,Schutzring_Waffen2);
	CreateInvItem(self,Schutzring_Magie1);
	CreateInvItem(self,Schutzring_Magie2);
	CreateInvItem(self,Schutzring_Magie1_Fire1);
	CreateInvItem(self,Schutzring_Magie2_Fire2);
	CreateInvItem(self,Schutzring_Geschosse1_Waffen1);
	CreateInvItem(self,Schutzring_Geschosse1_Waffen1);
	CreateInvItem(self,Schutzring_Geschosse2_Waffen2);
	CreateInvItem(self,Schutzring_Total1);
	CreateInvItem(self,Schutzring_Total2);
	CreateInvItem(self,Ring_des_Geschicks);
	CreateInvItem(self,Ring_des_Geschicks2);
	CreateInvItem(self,Ring_des_Lebens);
	CreateInvItem(self,Ring_des_Lebens2);
	CreateInvItem(self,Staerkering);
	CreateInvItem(self,Staerkering2);
	CreateInvItem(self,Ring_der_Magie);
	CreateInvItem(self,Ring_der_Erleuchtung);
	CreateInvItem(self,Machtring);
	CreateInvItem(self,ItFo_Potion_Mana_01);
	CreateInvItem(self,ItFo_Potion_Mana_02);
	CreateInvItem(self,ItFo_Potion_Mana_03);
	CreateInvItem(self,ItFo_Potion_Health_01);
	CreateInvItem(self,ItFo_Potion_Health_02);
	CreateInvItem(self,ItFo_Potion_Health_03);
	CreateInvItem(self,ItFo_Potion_Elixier);
	CreateInvItem(self,ItFo_Potion_Elixier_Egg);
	CreateInvItem(self,ItFo_Potion_Strength_01);
	CreateInvItem(self,ItFo_Potion_Strength_02);
	CreateInvItem(self,ItFo_Potion_Strength_03);
	CreateInvItem(self,ItFo_Potion_Dex_01);
	CreateInvItem(self,ItFo_Potion_Dex_02);
	CreateInvItem(self,ItFo_Potion_Dex_03);
	CreateInvItem(self,ItFo_Potion_Health_Perma_01);
	CreateInvItem(self,ItFo_Potion_Health_Perma_02);
	CreateInvItem(self,ItFo_Potion_Health_Perma_03);
	CreateInvItem(self,ItFo_Potion_Mana_Perma_01);
	CreateInvItem(self,ItFo_Potion_Mana_Perma_02);
	CreateInvItem(self,ItFo_Potion_Mana_Perma_03);
	CreateInvItem(self,ItFo_Potion_Master_01);
	CreateInvItem(self,ItFo_Potion_Master_02);
	CreateInvItem(self,ItFo_Potion_Water_01);
	CreateInvItem(self,ItFo_Potion_Haste_01);
	CreateInvItems(self,ItAt_Teeth_01,5);
	CreateInvItems(self,ItAt_Wolf_01,5);
	CreateInvItems(self,ItAt_Wolf_02,5);
	CreateInvItems(self,ItAt_Waran_01,5);
	CreateInvItems(self,ItAt_Claws_01,5);
	CreateInvItems(self,ItAt_Crawler_02,5);
	CreateInvItems(self,ItAt_Crawler_01,5);
	CreateInvItems(self,ItAt_Shadow_01,5);
	CreateInvItems(self,ItAt_Shadow_02,5);
	CreateInvItems(self,ItAt_Lurker_01,5);
	CreateInvItems(self,ItAt_Lurker_02,5);
	CreateInvItems(self,ItAt_Troll_02,5);
	CreateInvItems(self,ItAt_Troll_01,5);
	CreateInvItems(self,ItAt_Swampshark_02,5);
	CreateInvItems(self,ItAt_Swampshark_01,5);
	CreateInvItems(self,ItAt_Bloodfly_02,5);
	CreateInvItems(self,ItAt_Bloodfly_01,5);
	CreateInvItems(self,ItAt_Meatbug_01,5);
};

