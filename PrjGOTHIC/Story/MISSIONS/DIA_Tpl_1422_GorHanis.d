
instance Info_GorHanis_Exit(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 999;
	condition = Info_GorHanis_Exit_Condition;
	information = Info_GorHanis_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_GorHanis_Exit_Condition()
{
	return 1;
};

func void Info_GorHanis_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_GorHanis_What(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 1;
	condition = Info_GorHanis_What_Condition;
	information = Info_GorHanis_What_Info;
	permanent = 0;
	description = "Что ты здесь делаешь?";
};


func int Info_GorHanis_What_Condition()
{
	return 1;
};

func void Info_GorHanis_What_Info()
{
	AI_Output(other,self,"Info_GorHanis_What_15_00");	//Что ты здесь делаешь?
	AI_Output(self,other,"Info_GorHanis_What_08_01");	//Я? Я сражаюсь во славу Спящего!
};


instance Info_GorHanis_Arena(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 1;
	condition = Info_GorHanis_Arena_Condition;
	information = Info_GorHanis_Arena_Info;
	permanent = 1;
	description = "Ты сражаешься на арене?";
};


func int Info_GorHanis_Arena_Condition()
{
	if(Npc_KnowsInfo(self,Info_GorHanis_What))
	{
		return 1;
	};
};

func void Info_GorHanis_Arena_Info()
{
	AI_Output(other,self,"Info_GorHanis_Arena_15_00");	//Ты сражаешься на арене?
	AI_Output(self,other,"Info_GorHanis_Arena_08_01");	//Мои учителя из Братства прислали меня сюда сражаться во славу Спящего.
	AI_Output(self,other,"Info_GorHanis_Arena_08_02");	//Я удостоился этой чести, чтобы показать неверным, какой силой меня наделил Спящий!
};


instance Info_GorHanis_Sleeper(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 2;
	condition = Info_GorHanis_Sleeper_Condition;
	information = Info_GorHanis_Sleeper_Info;
	permanent = 0;
	description = "Кто он, этот Спящий?";
};


func int Info_GorHanis_Sleeper_Condition()
{
	if(Npc_KnowsInfo(self,Info_GorHanis_What))
	{
		return 1;
	};
};

func void Info_GorHanis_Sleeper_Info()
{
	AI_Output(other,self,"Info_GorHanis_Sleeper_15_00");	//Кто он, этот Спящий?
	AI_Output(self,other,"Info_GorHanis_Sleeper_08_01");	//В нашем лагере ты найдешь жрецов, которые смогут рассказать тебе больше, чем я.
	AI_Output(self,other,"Info_GorHanis_Sleeper_08_02");	//Могу сказать тебе только, что Спящий станет нашим спасителем. Он привел нас сюда и он же выведет нас отсюда.
	AI_Output(other,self,"Info_GorHanis_Sleeper_15_03");	//Ты хочешь сказать, что этот бог освободит вас отсюда?
	AI_Output(self,other,"Info_GorHanis_Sleeper_08_04");	//Да! И скоро наше ожидание закончится. Уже идут приготовления к великой Церемонии.
};


instance Info_GorHanis_Summoning(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 2;
	condition = Info_GorHanis_Summoning_Condition;
	information = Info_GorHanis_Summoning_Info;
	permanent = 0;
	description = "Ты можешь рассказать о Церемонии?";
};


func int Info_GorHanis_Summoning_Condition()
{
	if(Npc_KnowsInfo(self,Info_GorHanis_Sleeper))
	{
		return 1;
	};
};

func void Info_GorHanis_Summoning_Info()
{
	AI_Output(other,self,"Info_GorHanis_Summoning_15_00");	//Ты можешь рассказать о Церемонии?
	AI_Output(self,other,"Info_GorHanis_Summoning_08_01");	//Наши пророки говорят, что на великой Церемонии мы сможем разбудить Спящего, и он нам даст ключ к свободе!
	AI_Output(self,other,"Info_GorHanis_Summoning_08_02");	//Если ты хочешь узнать больше, иди в наш лагерь.
};


instance Info_GorHanis_WayToST(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 0;
	condition = Info_GorHanis_WayToST_Condition;
	information = Info_GorHanis_WayToST_Info;
	permanent = 1;
	description = "Как я найду дорогу к вашему лагерю?";
};


func int Info_GorHanis_WayToST_Condition()
{
	if(Npc_KnowsInfo(hero,Info_GorHanis_Sleeper) || Npc_KnowsInfo(hero,Info_GorHanis_Summoning))
	{
		return 1;
	};
};

func void Info_GorHanis_WayToST_Info()
{
	AI_Output(other,self,"Info_GorHanis_WayToST_15_00");	//Как я найду дорогу к вашему лагерю?
	AI_Output(self,other,"Info_GorHanis_WayToST_08_01");	//В Старом лагере всегда можно найти несколько наших послушников, которые провожают новообращенных в наш лагерь. Найди кого-нибудь из них!
};


instance Info_GorHanis_Charge(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 3;
	condition = Info_GorHanis_Charge_Condition;
	information = Info_GorHanis_Charge_Info;
	permanent = 0;
	description = "Я хочу сразиться с тобой на арене!";
};


func int Info_GorHanis_Charge_Condition()
{
	if(Npc_KnowsInfo(hero,Info_GorHanis_Arena))
	{
		return 1;
	};
};

func void Info_GorHanis_Charge_Info()
{
	AI_Output(other,self,"Info_GorHanis_Charge_15_00");	//Я хочу сразиться с тобой на арене!
	AI_Output(self,other,"Info_GorHanis_Charge_08_01");	//Убийство таких новичков перед толпой зрителей не прибавит славы Спящего.
	AI_Output(self,other,"Info_GorHanis_Charge_08_02");	//Я смогу сразиться с тобой только тогда, когда ты будешь достойным противником.
	AI_Output(self,other,"Info_GorHanis_Charge_08_03");	//Но я уверен, что бойцы из Старого или Нового лагерей не откажутся от твоего предложения. Они не отличаются высокими моральными принципами.
};


instance Info_GorHanis_ChargeGood(C_Info)
{
	npc = Tpl_1422_GorHanis;
	nr = 3;
	condition = Info_GorHanis_ChargeGood_Condition;
	information = Info_GorHanis_ChargeGood_Info;
	permanent = 1;
	description = "А теперь моей силы достаточно, чтобы сразиться с тобой?";
};


func int Info_GorHanis_ChargeGood_Condition()
{
	if(Npc_KnowsInfo(hero,Info_GorHanis_Charge))
	{
		return 1;
	};
};

func void Info_GorHanis_ChargeGood_Info()
{
	AI_Output(other,self,"Info_GorHanis_ChargeGood_15_00");	//А теперь моей силы достаточно, чтобы сразиться с тобой?
	AI_Output(self,other,"Info_GorHanis_ChargeGood_08_01");	//Нет! Ты еще недостаточно силен. Ты не можешь быть моим противником!
};

