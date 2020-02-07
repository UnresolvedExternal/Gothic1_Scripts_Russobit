
instance Info_GRD_275_PreExit(C_Info)
{
	npc = GRD_275_Brueckenwache;
	nr = 999;
	condition = Info_GRD_275_PreExit_Condition;
	information = Info_GRD_275_PreExit_Info;
	permanent = 0;
	description = DIALOG_ENDE;
};


func int Info_GRD_275_PreExit_Condition()
{
	if(Kapitel <= 1)
	{
		return 1;
	};
};

func void Info_GRD_275_PreExit_Info()
{
	AI_Output(self,other,"Info_GRD_275_PreExit_06_01");	//Наведайся в Старый лагерь, думаю, они найдут для тебя хорошую кирку. 
	AI_StopProcessInfos(self);
};


instance Info_GRD_275_Exit(C_Info)
{
	npc = GRD_275_Brueckenwache;
	nr = 999;
	condition = Info_GRD_275_Exit_Condition;
	information = Info_GRD_275_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int Info_GRD_275_Exit_Condition()
{
	if((Kapitel > 1) || Npc_KnowsInfo(hero,Info_GRD_275_PreExit))
	{
		return 1;
	};
};

func void Info_GRD_275_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance Info_GRD_275_WasMachtIhrHier(C_Info)
{
	npc = GRD_275_Brueckenwache;
	nr = 1;
	condition = Info_GRD_275_WasMachtIhrHier_Condition;
	information = Info_GRD_275_WasMachtIhrHier_Info;
	permanent = 1;
	description = "Что вы здесь делаете?";
};


func int Info_GRD_275_WasMachtIhrHier_Condition()
{
	return 1;
};

func void Info_GRD_275_WasMachtIhrHier_Info()
{
	AI_Output(other,self,"Info_GRD_275_WasMachtIhrHier_15_00");	//Что вы здесь делаете?
	AI_Output(self,other,"Info_GRD_275_WasMachtIhrHier_06_01");	//А ты как думаешь? Мост охраняем.
	AI_Output(self,other,"Info_GRD_275_WasMachtIhrHier_06_02");	//Следим, чтобы ни один мерзкий ползун не перебрался через реку.
};


instance Info_GRD_275_Tips(C_Info)
{
	npc = GRD_275_Brueckenwache;
	nr = 1;
	condition = Info_GRD_275_Tips_Condition;
	information = Info_GRD_275_Tips_Info;
	permanent = 1;
	description = "У тебя есть для меня какой-нибудь совет?";
};


func int Info_GRD_275_Tips_Condition()
{
	return 1;
};

func void Info_GRD_275_Tips_Info()
{
	AI_Output(other,self,"Info_GRD_275_Tips_15_00");	//У тебя есть для меня какой-нибудь совет?
	AI_Output(self,other,"Info_GRD_275_Tips_06_01");	//Есть. Не броди сам по лесу...
	AI_Output(self,other,"Info_GRD_275_Tips_06_02");	//...ну, если, конечно, не намерен перебить всех тварей живущих там.
};

