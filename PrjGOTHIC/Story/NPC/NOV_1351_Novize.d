﻿
instance NOV_1351_Novize(Npc_Default)
{
	name[0] = NAME_Novize;
	npcType = npctype_ambient;
	guild = GIL_NOV;
	level = 3;
	flags = 0;
	voice = 3;
	id = 1351;
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 76;
	attribute[ATR_HITPOINTS] = 76;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Mage.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",1,2,"Hum_Head_Bald",6,0,nov_armor_l);
	B_Scale(self);
	Mdl_SetModelFatness(self,-1);
	fight_tactic = FAI_HUMAN_COWARD;
	EquipItem(self,ItMw_1H_Hatchet_01);
	daily_routine = Rtn_start_1351;
};


func void Rtn_start_1351()
{
	TA_Smith_Fire(8,10,8,20,"PSI_SMITH_01");
	TA_Smith_Anvil(8,20,8,30,"PSI_SMITH_01");
	TA_Smith_Fire(8,30,8,40,"PSI_SMITH_01");
	TA_Smith_Anvil(8,30,8,40,"PSI_SMITH_01");
	TA_Smith_Cool(8,50,9,0,"PSI_SMITH_01");
	TA_Smith_Sharp(9,0,9,5,"PSI_SMITH_01");
	TA_SitAround(9,5,9,10,"PSI_SMITH_01");
	TA_Smith_Fire(9,10,9,20,"PSI_SMITH_01");
	TA_Smith_Anvil(9,20,9,30,"PSI_SMITH_01");
	TA_Smith_Fire(9,30,9,40,"PSI_SMITH_01");
	TA_Smith_Anvil(9,30,9,40,"PSI_SMITH_01");
	TA_Smith_Cool(9,50,10,0,"PSI_SMITH_01");
	TA_Smith_Sharp(10,0,10,5,"PSI_SMITH_01");
	TA_SitAround(10,5,10,10,"PSI_SMITH_01");
	TA_Smith_Fire(10,10,10,20,"PSI_SMITH_01");
	TA_Smith_Anvil(10,20,10,30,"PSI_SMITH_01");
	TA_Smith_Fire(10,30,10,40,"PSI_SMITH_01");
	TA_Smith_Anvil(10,30,10,40,"PSI_SMITH_01");
	TA_Smith_Cool(10,50,11,0,"PSI_SMITH_01");
	TA_Smith_Sharp(11,0,11,5,"PSI_SMITH_01");
	TA_SitAround(11,5,11,10,"PSI_SMITH_01");
	TA_Smith_Fire(11,10,11,20,"PSI_SMITH_01");
	TA_Smith_Anvil(11,20,11,30,"PSI_SMITH_01");
	TA_Smith_Fire(11,30,11,40,"PSI_SMITH_01");
	TA_Smith_Anvil(11,40,11,50,"PSI_SMITH_01");
	TA_Smith_Cool(11,50,12,0,"PSI_SMITH_01");
	TA_Smith_Sharp(12,0,12,5,"PSI_SMITH_01");
	TA_SitAround(12,5,12,10,"PSI_SMITH_01");
	TA_Smith_Fire(12,10,12,20,"PSI_SMITH_01");
	TA_Smith_Anvil(12,20,12,30,"PSI_SMITH_01");
	TA_Smith_Fire(12,30,12,40,"PSI_SMITH_01");
	TA_Smith_Anvil(12,40,12,50,"PSI_SMITH_01");
	TA_Smith_Cool(12,50,13,0,"PSI_SMITH_01");
	TA_Smith_Sharp(13,0,13,5,"PSI_SMITH_01");
	TA_SitAround(13,5,13,10,"PSI_SMITH_01");
	TA_Smith_Fire(13,10,13,20,"PSI_SMITH_01");
	TA_Smith_Anvil(13,20,13,30,"PSI_SMITH_01");
	TA_Smith_Fire(13,30,13,40,"PSI_SMITH_01");
	TA_Smith_Anvil(13,40,13,50,"PSI_SMITH_01");
	TA_Smith_Cool(13,50,14,0,"PSI_SMITH_01");
	TA_Smith_Sharp(14,0,14,5,"PSI_SMITH_01");
	TA_SitAround(14,5,14,10,"PSI_SMITH_01");
	TA_Smith_Fire(14,10,14,20,"PSI_SMITH_01");
	TA_Smith_Anvil(14,20,14,30,"PSI_SMITH_01");
	TA_Smith_Fire(14,30,14,40,"PSI_SMITH_01");
	TA_Smith_Anvil(14,40,14,50,"PSI_SMITH_01");
	TA_Smith_Cool(14,50,15,0,"PSI_SMITH_01");
	TA_Smith_Sharp(15,0,15,5,"PSI_SMITH_01");
	TA_SitAround(15,5,15,10,"PSI_SMITH_01");
	TA_Smith_Fire(15,10,15,20,"PSI_SMITH_01");
	TA_Smith_Anvil(15,20,15,30,"PSI_SMITH_01");
	TA_Smith_Fire(15,30,15,40,"PSI_SMITH_01");
	TA_Smith_Anvil(15,40,15,50,"PSI_SMITH_01");
	TA_Smith_Cool(15,50,16,0,"PSI_SMITH_01");
	TA_Smith_Sharp(16,0,16,5,"PSI_SMITH_01");
	TA_SitAround(16,5,16,10,"PSI_SMITH_01");
	TA_Smith_Fire(16,10,16,20,"PSI_SMITH_01");
	TA_Smith_Anvil(16,20,16,30,"PSI_SMITH_01");
	TA_Smith_Fire(16,30,16,40,"PSI_SMITH_01");
	TA_Smith_Anvil(16,40,16,50,"PSI_SMITH_01");
	TA_Smith_Cool(16,50,16,0,"PSI_SMITH_01");
	TA_Smith_Sharp(17,0,17,5,"PSI_SMITH_01");
	TA_SitAround(17,5,17,10,"PSI_SMITH_01");
	TA_Smith_Fire(17,10,17,20,"PSI_SMITH_01");
	TA_Smith_Anvil(17,20,17,30,"PSI_SMITH_01");
	TA_Smith_Fire(17,30,17,40,"PSI_SMITH_01");
	TA_Smith_Anvil(17,40,17,50,"PSI_SMITH_01");
	TA_Smith_Cool(17,50,17,0,"PSI_SMITH_01");
	TA_Smith_Sharp(18,0,18,5,"PSI_SMITH_01");
	TA_SitAround(18,5,18,10,"PSI_SMITH_01");
	TA_Smith_Fire(18,10,18,20,"PSI_SMITH_01");
	TA_Smith_Anvil(18,20,18,30,"PSI_SMITH_01");
	TA_Smith_Fire(18,30,18,40,"PSI_SMITH_01");
	TA_Smith_Anvil(18,40,18,50,"PSI_SMITH_01");
	TA_Smith_Cool(18,50,19,0,"PSI_SMITH_01");
	TA_Smith_Sharp(19,0,19,5,"PSI_SMITH_01");
	TA_SitAround(19,5,19,10,"PSI_SMITH_01");
	TA_Smith_Fire(19,10,19,20,"PSI_SMITH_01");
	TA_Smith_Anvil(19,20,19,30,"PSI_SMITH_01");
	TA_Smith_Fire(19,30,19,40,"PSI_SMITH_01");
	TA_Smith_Anvil(19,40,19,50,"PSI_SMITH_01");
	TA_Smith_Cool(19,50,19,0,"PSI_SMITH_01");
	TA_Smith_Sharp(20,0,20,5,"PSI_SMITH_01");
	TA_SitAround(20,5,20,10,"PSI_SMITH_01");
	TA_Smith_Fire(20,10,20,20,"PSI_SMITH_01");
	TA_Smith_Anvil(20,20,20,30,"PSI_SMITH_01");
	TA_Smith_Fire(20,30,20,40,"PSI_SMITH_01");
	TA_Smith_Anvil(20,40,20,50,"PSI_SMITH_01");
	TA_Smith_Cool(20,50,21,0,"PSI_SMITH_01");
	TA_Smith_Sharp(21,0,21,5,"PSI_SMITH_01");
	TA_SitAround(21,5,21,10,"PSI_SMITH_01");
	TA_Smith_Fire(21,10,21,20,"PSI_SMITH_01");
	TA_Smith_Anvil(21,20,21,30,"PSI_SMITH_01");
	TA_Smith_Fire(21,30,21,40,"PSI_SMITH_01");
	TA_Smith_Anvil(21,40,21,50,"PSI_SMITH_01");
	TA_Smith_Cool(21,50,22,0,"PSI_SMITH_01");
	TA_Smith_Sharp(22,0,22,5,"PSI_SMITH_01");
	TA_SitAround(22,5,22,10,"PSI_SMITH_01");
	TA_Smith_Fire(22,10,22,20,"PSI_SMITH_01");
	TA_Smith_Anvil(22,20,22,30,"PSI_SMITH_01");
	TA_Smith_Fire(22,30,22,40,"PSI_SMITH_01");
	TA_Smith_Anvil(22,40,22,50,"PSI_SMITH_01");
	TA_Smith_Cool(22,50,22,60,"PSI_SMITH_01");
	TA_Smith_Sharp(23,0,23,5,"PSI_SMITH_01");
	TA_SitAround(23,5,23,10,"PSI_SMITH_01");
	TA_Smith_Fire(23,10,23,20,"PSI_SMITH_01");
	TA_Smith_Anvil(23,20,23,30,"PSI_SMITH_01");
	TA_Smith_Fire(23,30,23,40,"PSI_SMITH_01");
	TA_Smith_Anvil(23,40,23,60,"PSI_SMITH_01");
	TA_Smith_Cool(23,50,0,0,"PSI_SMITH_01");
	TA_Smith_Sharp(0,0,0,5,"PSI_SMITH_01");
	TA_SitAround(0,5,0,10,"PSI_SMITH_01");
	TA_Smith_Fire(0,10,0,20,"PSI_SMITH_01");
	TA_Smith_Anvil(0,20,0,30,"PSI_SMITH_01");
	TA_Smith_Fire(0,30,0,40,"PSI_SMITH_01");
	TA_Smith_Anvil(0,40,0,50,"PSI_SMITH_01");
	TA_Smith_Cool(0,50,1,0,"PSI_SMITH_01");
	TA_Smith_Sharp(1,0,1,5,"PSI_SMITH_01");
	TA_SitAround(1,5,1,10,"PSI_SMITH_01");
	TA_Smith_Fire(1,10,1,20,"PSI_SMITH_01");
	TA_Smith_Anvil(1,20,1,30,"PSI_SMITH_01");
	TA_Smith_Fire(1,30,1,40,"PSI_SMITH_01");
	TA_Smith_Anvil(1,40,1,50,"PSI_SMITH_01");
	TA_Smith_Cool(1,50,2,0,"PSI_SMITH_01");
	TA_Smith_Sharp(2,0,2,5,"PSI_SMITH_01");
	TA_SitAround(2,5,2,10,"PSI_SMITH_01");
	TA_Smith_Fire(2,10,2,20,"PSI_SMITH_01");
	TA_Smith_Anvil(2,20,2,30,"PSI_SMITH_01");
	TA_Smith_Fire(2,30,2,40,"PSI_SMITH_01");
	TA_Smith_Anvil(2,40,2,50,"PSI_SMITH_01");
	TA_Smith_Cool(2,50,3,0,"PSI_SMITH_01");
	TA_Smith_Sharp(3,0,3,5,"PSI_SMITH_01");
	TA_SitAround(3,5,3,10,"PSI_SMITH_01");
	TA_Smith_Fire(3,10,3,20,"PSI_SMITH_01");
	TA_Smith_Anvil(3,20,3,30,"PSI_SMITH_01");
	TA_Smith_Fire(3,30,3,40,"PSI_SMITH_01");
	TA_Smith_Anvil(3,40,3,50,"PSI_SMITH_01");
	TA_Smith_Cool(3,50,4,0,"PSI_SMITH_01");
	TA_Smith_Sharp(4,0,4,5,"PSI_SMITH_01");
	TA_SitAround(4,5,4,10,"PSI_SMITH_01");
	TA_Smith_Fire(4,10,4,20,"PSI_SMITH_01");
	TA_Smith_Anvil(4,20,4,30,"PSI_SMITH_01");
	TA_Smith_Fire(4,30,4,40,"PSI_SMITH_01");
	TA_Smith_Anvil(4,40,4,50,"PSI_SMITH_01");
	TA_Smith_Cool(4,50,5,0,"PSI_SMITH_01");
	TA_Smith_Sharp(5,0,5,5,"PSI_SMITH_01");
	TA_SitAround(5,5,5,10,"PSI_SMITH_01");
	TA_Smith_Fire(5,10,5,20,"PSI_SMITH_01");
	TA_Smith_Anvil(5,20,5,30,"PSI_SMITH_01");
	TA_Smith_Fire(5,30,5,40,"PSI_SMITH_01");
	TA_Smith_Anvil(5,40,5,50,"PSI_SMITH_01");
	TA_Smith_Cool(5,50,6,0,"PSI_SMITH_01");
	TA_Smith_Sharp(6,0,6,5,"PSI_SMITH_01");
	TA_SitAround(6,5,6,10,"PSI_SMITH_01");
	TA_Smith_Fire(6,10,6,20,"PSI_SMITH_01");
	TA_Smith_Anvil(6,20,6,30,"PSI_SMITH_01");
	TA_Smith_Fire(6,30,6,40,"PSI_SMITH_01");
	TA_Smith_Anvil(6,40,6,50,"PSI_SMITH_01");
	TA_Smith_Cool(6,50,7,0,"PSI_SMITH_01");
	TA_Smith_Sharp(7,0,7,5,"PSI_SMITH_01");
	TA_SitAround(7,5,7,10,"PSI_SMITH_01");
	TA_Smith_Fire(7,10,7,20,"PSI_SMITH_01");
	TA_Smith_Anvil(7,20,7,30,"PSI_SMITH_01");
	TA_Smith_Fire(7,30,7,40,"PSI_SMITH_01");
	TA_Smith_Anvil(7,40,7,50,"PSI_SMITH_01");
	TA_Smith_Cool(7,50,8,0,"PSI_SMITH_01");
	TA_Smith_Sharp(8,0,8,5,"PSI_SMITH_01");
	TA_SitAround(8,5,8,10,"PSI_SMITH_01");
};

func void Rtn_PrepareRitual_1351()
{
};

func void Rtn_OMFull_1351()
{
};

func void Rtn_FMTaken_1351()
{
};

func void Rtn_OrcAssault_1351()
{
};

