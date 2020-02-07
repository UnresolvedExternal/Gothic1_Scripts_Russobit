
instance DIA_GRD_245_Exit(C_Info)
{
	npc = GRD_245_Gardist;
	nr = 999;
	condition = DIA_GRD_245_Exit_Condition;
	information = DIA_GRD_245_Exit_Info;
	permanent = 1;
	description = DIALOG_ENDE;
};


func int DIA_GRD_245_Exit_Condition()
{
	return 1;
};

func void DIA_GRD_245_Exit_Info()
{
	AI_StopProcessInfos(self);
};


instance DIA_GRD_245_Hello(C_Info)
{
	npc = GRD_245_Gardist;
	nr = 1;
	condition = DIA_GRD_245_Hello_Condition;
	information = DIA_GRD_245_Hello_Info;
	permanent = 1;
	description = "Что это за дом?";
};


func int DIA_GRD_245_Hello_Condition()
{
	return 1;
};

func void DIA_GRD_245_Hello_Info()
{
	AI_Output(other,self,"DIA_GRD_245_Hello_15_00");	//Что это за дом?
	AI_Output(self,other,"DIA_GRD_245_Hello_13_01");	//Это дом Баронов. Будь паинькой, если когда-нибудь попадешь туда.
};

