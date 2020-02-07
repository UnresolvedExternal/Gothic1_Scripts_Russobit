﻿
instance NOV_1320_Novize_CALLSLEEPER(C_Info)
{
	npc = NOV_1320_Novize;
	condition = NOV_1320_Novize_CALLSLEEPER_Condition;
	information = NOV_1320_Novize_CALLSLEEPER_Info;
	important = 1;
	permanent = 0;
};


func int NOV_1320_Novize_CALLSLEEPER_Condition()
{
	var C_Npc Novize;
	var C_Npc Kalom;
	Novize = Hlp_GetNpc(NOV_1320_Novize);
	Kalom = Hlp_GetNpc(GUR_1201_CorKalom);
	if((CorKalom_BringBook == LOG_SUCCESS) && (Npc_GetDistToWP(Novize,"PSI_TEMPLE_COURT_3") < 1000) && C_TimeForGreatPrayer() && !Npc_KnowsInfo(hero,NOV_1319_Novize_CALLSLEEPER) && !Npc_KnowsInfo(hero,Tpl_1431_Templer_CALLSLEEPER) && !Npc_KnowsInfo(hero,Tpl_1430_Templer_CALLSLEEPER) && (Npc_GetDistToWP(Kalom,"PSI_TEMPLE_STAIRS_RIGHT") < 300))
	{
		return TRUE;
	};
	return PrintScreen("ТЕПЕРЬ ВСЕ ЯСНО.",-1,-1,"font_old_20_white.tga",3);
};

func void NOV_1320_Novize_CALLSLEEPER_Info()
{
	AI_StopProcessInfos(self);
	B_Kapitelwechsel(3);
};

