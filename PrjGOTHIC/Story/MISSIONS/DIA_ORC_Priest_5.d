
instance Info_HighPriest5(C_Info)
{
	npc = ORC_Priest_5;
	nr = 1;
	condition = Info_HighPriest5_Condition;
	information = Info_HighPriest5_Info;
	important = 1;
};


func int Info_HighPriest5_Condition()
{
	return TRUE;
};

func void Info_HighPriest5_Info()
{
	AI_SetWalkMode(self,NPC_WALK);
	AI_GotoNpc(self,other);
	if(Npc_HasItems(hero,Mythrilklinge02) || Npc_HasItems(hero,UrizielRune))
	{
		AI_Output(self,other,"Info_HighPriest5_17_04");	//У ТЕБЯ ЕСТЬ ОРУЖИЕ!
		AI_Output(self,other,"Info_HighPriest5_17_05");	//Я ОСТАНОВЛЮ ТЕБЯ!
		AI_StopProcessInfos(self);
		self.npcType = npctype_main;
		Npc_SetAttitude(self,ATT_HOSTILE);
		Npc_SetTempAttitude(self,ATT_HOSTILE);
	}
	else
	{
		AI_Output(self,other,"Info_HighPriest5_17_01");	//УХОДИ ОТСЮДА!
		AI_Output(self,other,"Info_HighPriest5_17_02");	//НИКТО НЕ СМЕЕТ ТРЕВОЖИТЬ СОН МОЕГО ПОВЕЛИТЕЛЯ!
		AI_Output(other,self,"Info_HighPriest5_15_03");	//Ошибаешься, твой драгоценный Спящий скоро проснется!
		AI_StopProcessInfos(self);
		B_Story_EncounteredHighPriest();
	};
};


instance Info_HighPriest5FAILED(C_Info)
{
	npc = ORC_Priest_5;
	nr = 2;
	condition = Info_HighPriest5FAILED_Condition;
	information = Info_HighPriest5FAILED_Info;
	important = 1;
};


func int Info_HighPriest5FAILED_Condition()
{
	if(Npc_KnowsInfo(hero,Info_HighPriest5) && (self.aivar[AIV_MISSION1] >= HighPriest_MaxHit) && !Npc_HasItems(hero,Mythrilklinge02) && !Npc_HasItems(hero,UrizielRune))
	{
		return TRUE;
	};
};

func void Info_HighPriest5FAILED_Info()
{
	AI_Output(other,self,"Info_HighPriest5FAILED_15_01");	//Ничего себе! На нем ни царапины! Нужно какое-то другое средство...
	AI_Output(self,other,"Info_HighPriest5FAILED_17_02");	//ТЕПЕРЬ ТЫ УМРЕШЬ!
	AI_Output(other,self,"Info_HighPriest5FAILED_15_03");	//Пора уходить отсюда!
	AI_RemoveWeapon(other);
	AI_TurnAway(other,self);
	self.npcType = npctype_main;
	Npc_SetAttitude(self,ATT_HOSTILE);
	Npc_SetTempAttitude(self,ATT_HOSTILE);
	B_LogEntry(CH4_EnterTemple,"Вот и Граш-Варраг-Арушт, и судя по всему, он не нежить, как остальные. Он гораздо сильнее их, а мое оружие не причинит ему вреда. Мне нужно другое оружие!");
	B_GiveXP(XP_RetreatFromLastPriest);
	AI_StopProcessInfos(self);
};

