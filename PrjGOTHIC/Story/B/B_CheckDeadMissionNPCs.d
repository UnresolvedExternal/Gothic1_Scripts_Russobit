
func void B_CheckDeadMissionNPCs()
{
	if(Hlp_GetInstanceID(Org_844_Lefty) == Hlp_GetInstanceID(self))
	{
		if(Lefty_Mission == LOG_RUNNING)
		{
			B_LogEntry(CH1_CarryWater,"После смерти Лефти проблема с водой была решена. Этот тип все равно был невыносим.");
			Log_SetTopicStatus(CH1_CarryWater,LOG_SUCCESS);
			LeftyDead = TRUE;
		};
	};
};

