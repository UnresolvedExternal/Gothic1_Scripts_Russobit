
instance DIA_GorNaRan_Exit(C_Info)
{
	npc = TPL_1405_GorNaRan;
	nr = 999;
	condition = DIA_GorNaRan_Exit_Condition;
	information = DIA_GorNaRan_Exit_Info;
	permanent = 1;
	description = "ЗАКОНЧИТЬ РАЗГОВОР";
};


func int DIA_GorNaRan_Exit_Condition()
{
	return TRUE;
};

func void DIA_GorNaRan_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_GorNaRan_Wache(C_Info)
{
	npc = TPL_1405_GorNaRan;
	nr = 1;
	condition = DIA_GorNaRan_Wache_Condition;
	information = DIA_GorNaRan_Wache_Info;
	permanent = 1;
	description = "Что ты здесь делаешь?";
};


func int DIA_GorNaRan_Wache_Condition()
{
	return TRUE;
};

func void DIA_GorNaRan_Wache_Info()
{
	AI_Output(other,self,"DIA_GorNaRan_Wache_15_00");	//Что ты здесь делаешь?
	AI_Output(self,other,"DIA_GorNaRan_Wache_13_01");	//Я сторожу лагерь, убиваю болотожоров, которые пытаются напасть на нас.
	AI_Output(self,other,"DIA_GorNaRan_Wache_13_02");	//На твоем месте я бы и близко не подходит к этим зверюгам. Они с удовольствием позавтракают тобой.
	AI_Output(self,other,"DIA_GorNaRan_Wache_13_03");	//Но знаешь, не отвлекай меня, эта работа очень важна для лагеря.
	AI_StopProcessInfos(self);
};


instance Info_TPL_1405_GorNaRan(C_Info)
{
	npc = TPL_1405_GorNaRan;
	condition = Info_TPL_1405_GorNaRan_Condition;
	information = Info_TPL_1405_GorNaRan_Info;
	permanent = 0;
	important = 1;
};


func int Info_TPL_1405_GorNaRan_Condition()
{
	if(Kapitel == 6)
	{
		return TRUE;
	};
};

func void Info_TPL_1405_GorNaRan_Info()
{
	AI_Output(self,other,"Info_TPL_1405_GorNaRan_Info_13_01");	//Куда ты собрался? Здесь проход запрещен.
};


instance Info_TPL_1405_GorNaRan2(C_Info)
{
	npc = TPL_1405_GorNaRan;
	nr = 1;
	condition = Info_TPL_1405_GorNaRan2_Condition;
	information = Info_TPL_1405_GorNaRan2_Info;
	permanent = 1;
	description = "Что здесь происходит?";
};


func int Info_TPL_1405_GorNaRan2_Condition()
{
	if(Npc_KnowsInfo(hero,Info_TPL_1405_GorNaRan))
	{
		return 1;
	};
};

func void Info_TPL_1405_GorNaRan2_Info()
{
	AI_Output(other,self,"Info_TPL_1405_GorNaRan_Info_15_02");	//Что здесь происходит?
	AI_Output(self,other,"Info_TPL_1405_GorNaRan_Info_13_03");	//И ты еще спрашиваешь? Встань на колени и моли Спящего о прощении, настал миг его пробуждения и час расплаты для всех неверных. Будут они стерты с лица земли.
};


instance Info_TPL_1405_GorNaRan3(C_Info)
{
	npc = TPL_1405_GorNaRan;
	nr = 1;
	condition = Info_TPL_1405_GorNaRan3_Condition;
	information = Info_TPL_1405_GorNaRan3_Info;
	permanent = 1;
	description = "Я же просто хотел посмотреть.";
};


func int Info_TPL_1405_GorNaRan3_Condition()
{
	if(Npc_KnowsInfo(hero,Info_TPL_1405_GorNaRan))
	{
		return 1;
	};
};

func void Info_TPL_1405_GorNaRan3_Info()
{
	AI_Output(other,self,"Info_TPL_1405_GorNaRan_Info_15_04");	//Я же просто хотел посмотреть.
	AI_Output(self,other,"Info_TPL_1405_GorNaRan_Info_13_05");	//Ты, жалкий червь! Ты не можешь осквернять это место, ибо момент пробуждения Спящего близок! Я должен буду избавить его от твоего присутствия.
	AI_StopProcessInfos(self);
	Npc_SetTarget(self,hero);
	AI_StartState(self,ZS_Attack,1,"");
};


instance Info_TPL_1405_GorNaRan4(C_Info)
{
	npc = TPL_1405_GorNaRan;
	nr = 1;
	condition = Info_TPL_1405_GorNaRan4_Condition;
	information = Info_TPL_1405_GorNaRan4_Info;
	permanent = 0;
	description = "Ты не сможешь остановить меня!";
};


func int Info_TPL_1405_GorNaRan4_Condition()
{
	if(Npc_KnowsInfo(hero,Info_TPL_1405_GorNaRan))
	{
		return 1;
	};
};

func void Info_TPL_1405_GorNaRan4_Info()
{
	AI_Output(other,self,"Info_TPL_1405_GorNaRan_Info_15_06");	//Ты не сможешь остановить меня!
	AI_Output(self,other,"Info_TPL_1405_GorNaRan_Info_13_07");	//И это все, парень! За Спящего!
	AI_StopProcessInfos(self);
	Npc_SetTarget(self,hero);
	AI_StartState(self,ZS_Attack,1,"");
};

