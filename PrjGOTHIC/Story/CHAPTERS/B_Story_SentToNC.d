
func void B_Story_SentToNC()
{
	var C_Npc angar;
	var C_Npc YBerion;
	var C_Npc gorn;
	angar = Hlp_GetNpc(GUR_1202_CorAngar);
	Npc_ExchangeRoutine(angar,"start");
	YBerion = Hlp_GetNpc(GUR_1200_YBerion);
	Npc_ExchangeRoutine(YBerion,"dead");
	gorn = Hlp_GetNpc(PC_Fighter);
	PrintDebugNpc(PD_MISSION,gorn.name);
	Npc_ExchangeRoutine(gorn,"NCWAIT");
	AI_ContinueRoutine(gorn);
	Log_CreateTopic(CH3_EscapePlanNC,LOG_MISSION);
	Log_SetTopicStatus(CH3_EscapePlanNC,LOG_RUNNING);
	B_LogEntry(CH3_EscapePlanNC,"Умер Юберион, духовный отец Братства! Да упокоится он с миром! Перед смертью он выразил свою волю: братья должны помочь магам Воды осуществить их план.");
	B_LogEntry(CH3_EscapePlanNC,"Я окончательно решил пойти в Новый лагерь, чтобы помочь магам Воды разрушить Барьер. Кор Ангар передал мне ключ от сундука из лаборатории Кор Галома. В нем находятся альманах и юнитор, которые я раздобыл для Братства. По мнению Кор Ангара эти предметы могут пригодиться магам Воды. ");
	CreateInvItem(self,ItArRuneTeleport5);
	B_GiveInvItems(self,hero,ItArRuneTeleport5,1);
	CorAngar_SendToNC = TRUE;
};

