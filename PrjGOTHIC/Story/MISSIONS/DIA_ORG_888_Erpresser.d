
instance Info_Erpresser(C_Info)
{
	npc = ORG_888_Erpresser;
	nr = 1;
	condition = Info_Erpresser_Condition;
	information = Info_Erpresser_Info;
	permanent = 1;
	important = 1;
};


func int Info_Erpresser_Condition()
{
	if((Npc_GetAttitude(self,other) != ATT_FRIENDLY) && (self.aivar[AIV_HAS_ERPRESSED] == FALSE) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE))
	{
		return 1;
	};
};

func void Info_Erpresser_Info()
{
	AI_Output(self,other,"Info_Erpresser_Info_13_01");	//Если ты хочешь пройти, тебе придется заплатить 10 кусков руды, иначе ничего не выйдет, понял?
	Info_ClearChoices(Info_Erpresser);
	Info_AddChoice(Info_Erpresser,"Спасибо. Ты меня выручил.",Info_Erpresser_Choice_AufsMaul);
	Info_AddChoice(Info_Erpresser,"Вот десять кусков.",Info_Erpresser_Choice_Zahlen);
};

func void Info_Erpresser_Choice_AufsMaul()
{
	AI_Output(other,self,"Info_Erpresser_Choice_AufsMaul_15_01");	//Спасибо. Ты меня выручил.
	AI_Output(self,other,"Info_Erpresser_Choice_AufsMaul_13_02");	//Спасибо. Ты меня выручил.
	self.aivar[AIV_HAS_ERPRESSED] = 2;
	AI_StopProcessInfos(self);
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_Attack,1,"");
};

func void Info_Erpresser_Choice_Zahlen()
{
	if(Npc_HasItems(other,ItMiNugget) >= 3)
	{
		AI_Output(other,self,"Info_Erpresser_Choice_Zahlen_15_01");	//Вот десять кусков.
		AI_Output(self,other,"Info_Erpresser_Choice_Zahlen_13_02");	//Вот не везет.
		self.aivar[AIV_HAS_ERPRESSED] = 1;
	}
	else
	{
		AI_Output(other,self,"Info_Erpresser_Choice_Zahlen_15_03");	//Э... у меня сейчас нет десяти кусков...
		AI_Output(self,other,"Info_Erpresser_Choice_Zahlen_13_04");	//Какая жалость...
		self.aivar[AIV_HAS_ERPRESSED] = 2;
		Npc_SetTarget(self,other);
		AI_StartState(self,ZS_Attack,1,"");
	};
	AI_StopProcessInfos(self);
};


instance Info_BereitsErpresst(C_Info)
{
	npc = ORG_888_Erpresser;
	nr = 1;
	condition = Info_BereitsErpresst_Condition;
	information = Info_BereitsErpresst_Info;
	permanent = 1;
	important = 1;
};


func int Info_BereitsErpresst_Condition()
{
	if((self.aivar[AIV_HAS_ERPRESSED] == 1) && Npc_IsInState(self,ZS_Talk))
	{
		return 1;
	};
};

func void Info_BereitsErpresst_Info()
{
	AI_Output(self,other,"Info_BereitsErpresst_Info_13_02");	//Ты заплатил. Проходи, пока я не передумал.
};


instance Info_BereitsAufsMaul(C_Info)
{
	npc = ORG_888_Erpresser;
	nr = 1;
	condition = Info_BereitsAufsMaul_Condition;
	information = Info_BereitsAufsMaul_Info;
	permanent = 1;
	important = 1;
};


func int Info_BereitsAufsMaul_Condition()
{
	if((self.aivar[AIV_HAS_ERPRESSED] == 2) && (self.aivar[AIV_WASDEFEATEDBYSC] == FALSE) && Npc_IsInState(self,ZS_Talk))
	{
		return 1;
	};
};

func void Info_BereitsAufsMaul_Info()
{
	AI_Output(self,other,"Info_BereitsAufsMaul_Info_13_02");	//Пошел отсюда, пока я не рассердился!
};


instance Info_Exit(C_Info)
{
	npc = ORG_888_Erpresser;
	nr = 999;
	condition = Info_Exit_Condition;
	information = Info_Exit_Info;
	important = 0;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_Exit_Condition()
{
	return 1;
};

func void Info_Exit_Info()
{
	AI_StopProcessInfos(self);
};

