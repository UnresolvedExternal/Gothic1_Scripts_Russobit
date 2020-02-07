﻿
instance DIA_BaalNamib_EXIT(C_Info)
{
	npc = GUR_1204_BaalNamib;
	nr = 999;
	condition = DIA_BaalNamib_EXIT_Condition;
	information = DIA_BaalNamib_EXIT_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_BaalNamib_EXIT_Condition()
{
	return 1;
};

func void DIA_BaalNamib_EXIT_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_BaalNamib_NoTalk(C_Info)
{
	npc = GUR_1204_BaalNamib;
	nr = 1;
	condition = DIA_BaalNamib_NoTalk_Condition;
	information = DIA_BaalNamib_NoTalk_Info;
	permanent = 1;
	important = 1;
};


func int DIA_BaalNamib_NoTalk_Condition()
{
	if(Npc_IsInState(self,ZS_Talk) && (BaalNamib_Ansprechbar == FALSE) && (Npc_GetPermAttitude(self,other) != ATT_FRIENDLY))
	{
		return 1;
	};
};

func void DIA_BaalNamib_NoTalk_Info()
{
	Info_ClearChoices(DIA_BaalNamib_NoTalk);
	Info_AddChoice(DIA_BaalNamib_NoTalk,DIALOG_ENDE,DIA_BaalNamib_NoTalk_ENDE);
	Info_AddChoice(DIA_BaalNamib_NoTalk,"С тобой все нормально, приятель?",DIA_BaalNamib_NoTalk_Imp);
	Info_AddChoice(DIA_BaalNamib_NoTalk,"Да пребудет с тобой Спящий!",DIA_BaalNamib_NoTalk_Sleeper);
	Info_AddChoice(DIA_BaalNamib_NoTalk,"Привет! Я здесь новенький!",DIA_BaalNamib_NoTalk_Hi);
};

func void DIA_BaalNamib_NoTalk_Hi()
{
	AI_Output(other,self,"DIA_BaalNamib_NoTalk_Hi_15_00");	//Привет! Я здесь новенький!
	AI_Output(self,other,"DIA_BaalNamib_NoTalk_Hi_02_01");	//
	BaalNamib_Sakrileg = TRUE;
};

func void DIA_BaalNamib_NoTalk_Sleeper()
{
	AI_Output(other,self,"DIA_BaalNamib_NoTalk_Sleeper_15_00");	//Да пребудет с тобой Спящий!
	AI_Output(self,other,"DIA_BaalNamib_NoTalk_Sleeper_02_01");	//
	BaalNamib_Sakrileg = TRUE;
};

func void DIA_BaalNamib_NoTalk_Imp()
{
	AI_Output(other,self,"DIA_BaalNamib_NoTalk_Imp_15_00");	//С тобой все нормально, приятель?
	AI_Output(self,other,"DIA_BaalNamib_NoTalk_Imp_02_01");	//
	BaalNamib_Sakrileg = TRUE;
};

func void DIA_BaalNamib_NoTalk_ENDE()
{
	AI_StopProcessInfos(self);
};


instance DIA_BaalNamib_FirstTalk(C_Info)
{
	npc = GUR_1204_BaalNamib;
	nr = 1;
	condition = DIA_BaalNamib_FirstTalk_Condition;
	information = DIA_BaalNamib_FirstTalk_Info;
	permanent = 0;
	important = 1;
};


func int DIA_BaalNamib_FirstTalk_Condition()
{
	if(BaalNamib_Ansprechbar == TRUE)
	{
		return 1;
	};
};

func void DIA_BaalNamib_FirstTalk_Info()
{
	AI_Output(self,other,"DIA_BaalNamib_FirstTalk_02_00");	//
	AI_Output(self,other,"DIA_BaalNamib_FirstTalk_02_01");	//Спящий избрал тебя. Ты и в самом деле хочешь присоединиться к нам?
	Info_ClearChoices(DIA_BaalNamib_FirstTalk);
	Info_AddChoice(DIA_BaalNamib_FirstTalk,"ПРОМОЛЧАТЬ",DIA_BaalNamib_FirstTalk_Mute);
	Info_AddChoice(DIA_BaalNamib_FirstTalk,"Да, я хочу вступить на путь, указанный Спящим.",DIA_BaalNamib_FirstTalk_Sleeper);
};

func void DIA_BaalNamib_FirstTalk_Mute()
{
	AI_Output(other,self,"DIA_BaalNamib_FirstTalk_Mute_15_00");	//
	AI_Output(self,other,"DIA_BaalNamib_FirstTalk_Mute_02_01");	//Ну?
};

func void DIA_BaalNamib_FirstTalk_Sleeper()
{
	AI_Output(other,self,"DIA_BaalNamib_FirstTalk_Sleeper_15_00");	//Да, я хочу вступить на путь, указанный Спящим.
	AI_Output(self,other,"DIA_BaalNamib_FirstTalk_Sleeper_02_01");	//Иди к Кор Галому. Скажи ему, что я считаю тебя истинно верующим!
	Info_ClearChoices(DIA_BaalNamib_FirstTalk);
	B_LogEntry(CH1_JoinPsi,"Задумка Лестера удалась. Идол Намиб заговорил со мной. Теперь он думает, что я стал убежденным верующим. Мне нужно увидеть Гуру Кор Галома в лаборатории!");
	B_GiveXP(XP_ImpressBaalNamib);
};


instance GUR_1204_BaalNamib_ARMOR(C_Info)
{
	npc = GUR_1204_BaalNamib;
	condition = GUR_1204_BaalNamib_ARMOR_Condition;
	information = GUR_1204_BaalNamib_ARMOR_Info;
	important = 0;
	permanent = 1;
	description = "Мне нужны хорошие доспехи.";
};


func int GUR_1204_BaalNamib_ARMOR_Condition()
{
	if((Npc_GetTrueGuild(hero) == GIL_NOV) && !Npc_HasItems(hero,nov_armor_h))
	{
		return TRUE;
	};
};

func void GUR_1204_BaalNamib_ARMOR_Info()
{
	AI_Output(hero,self,"GUR_1204_BaalNamib_ARMOR_Info_15_01");	//Мне нужны хорошие доспехи.
	if(Kapitel < 3)
	{
		AI_Output(self,other,"GUR_1204_BaalNamib_ARMOR_Info_02_02");	//Тебе еще рано носить тяжелые доспехи послушника.
	}
	else if(Npc_HasItems(hero,ItMiNugget) < VALUE_NOV_ARMOR_H)
	{
		AI_Output(self,other,"GUR_1204_BaalNamib_ARMOR_Info_02_03");	//Возвращайся, когда соберешь достаточно руды.
	}
	else
	{
		AI_Output(self,other,"GUR_1204_BaalNamib_ARMOR_Info_02_04");	//Эти доспехи защитят тело твое, так же как Спящий защищает твою душу!
		CreateInvItem(self,nov_armor_h);
		B_GiveInvItems(self,hero,nov_armor_h,1);
		B_GiveInvItems(hero,self,ItMiNugget,VALUE_NOV_ARMOR_H);
	};
};


instance Info_BaalNamib_BROTHERHOOD(C_Info)
{
	npc = GUR_1204_BaalNamib;
	condition = Info_BaalNamib_BROTHERHOOD_Condition;
	information = Info_BaalNamib_BROTHERHOOD_Info;
	important = 0;
	permanent = 0;
	description = "Я могу что-нибудь сделать для Братства?";
};


func int Info_BaalNamib_BROTHERHOOD_Condition()
{
};

func void Info_BaalNamib_BROTHERHOOD_Info()
{
	var C_Npc Kalom;
	AI_Output(other,self,"Info_BaalNamib_BROTHERHOOD_15_01");	//Я могу что-нибудь сделать для Братства?
	AI_Output(self,other,"Info_BaalNamib_BROTHERHOOD_02_02");	//Нашему Мастеру, мудрейшему Юбериону, нужен послушник. Иди к нему и предложи свои услуги.
	Info_ClearChoices(Info_BaalNamib_BROTHERHOOD);
	Info_AddChoice(Info_BaalNamib_BROTHERHOOD,"Я пойду и поговорю с ним прямо сейчас.",Info_BaalNamib_BROTHERHOOD_OK);
	Info_AddChoice(Info_BaalNamib_BROTHERHOOD,"Где я могу найти Юбериона?",Info_BaalNamib_BROTHERHOOD_YBWO);
	Info_AddChoice(Info_BaalNamib_BROTHERHOOD,"Ты знаешь, какое задание даст мне Юберион?",Info_BaalNamib_BROTHERHOOD_YBWAS);
	Kalom = Hlp_GetNpc(GUR_1201_CorKalom);
	Npc_ExchangeRoutine(Kalom,"kapitel2");
	AI_ContinueRoutine(Kalom);
};

func void Info_BaalNamib_BROTHERHOOD_YBWO()
{
	AI_Output(other,self,"Info_BaalNamib_BROTHERHOOD_YBWO_15_01");	//А где я могу найти Юбериона?
	AI_Output(self,other,"Info_BaalNamib_BROTHERHOOD_YBWO_02_02");	//На холме. Как и всегда, впрочем.
};

func void Info_BaalNamib_BROTHERHOOD_YBWAS()
{
	AI_Output(other,self,"Info_BaalNamib_BROTHERHOOD_YBWAS_15_01");	//Ты знаешь, какое задание даст мне Юберион?
	AI_Output(self,other,"Info_BaalNamib_BROTHERHOOD_YBWAS_02_02");	//Все мы ждем Великой Церемонии. Но прежде чем она начнется, нам потребуется магический артефакт.
	AI_Output(self,other,"Info_BaalNamib_BROTHERHOOD_YBWAS_02_03");	//Юберион ищет храбреца, который найдет его.
	AI_Output(other,self,"Info_BaalNamib_BROTHERHOOD_YBWAS_15_04");	//Кажется, это простое дело.
	AI_Output(self,other,"Info_BaalNamib_BROTHERHOOD_YBWAS_02_05");	//Если бы это было так просто, артефакт был бы уже у нас. Прежде поговори с Юберионом. Он тебе все объяснит.
};

func void Info_BaalNamib_BROTHERHOOD_OK()
{
	AI_Output(other,self,"Info_BaalNamib_BROTHERHOOD_OK_15_01");	//Я пойду и поговорю с ним прямо сейчас.
	AI_Output(self,other,"Info_BaalNamib_BROTHERHOOD_OK_02_02");	//Да хранит тебя Спящий!
	Info_ClearChoices(Info_BaalNamib_BROTHERHOOD);
};

