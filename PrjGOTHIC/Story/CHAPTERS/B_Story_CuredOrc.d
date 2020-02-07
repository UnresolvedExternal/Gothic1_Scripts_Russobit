
func void B_Story_CuredOrc()
{
	var C_Npc tarrok;
	B_LogEntry(CH4_UluMulu,"Я отдал орку-рабу Тарроку лечебное зелье, и он сказал, что сможет мне помочь.");
	B_GiveXP(XP_CuredOrcSlave);
	tarrok = Hlp_GetNpc(FreemineOrc);
	tarrok.name[0] = "Таррок";
	FreemineOrc_SuchePotion = LOG_SUCCESS;
	FreemineOrc_LookingUlumulu = LOG_RUNNING;
	Knows_GetUluMulu = TRUE;
};

