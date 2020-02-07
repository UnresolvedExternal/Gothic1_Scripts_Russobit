
func void B_MoveMob()
{
	var string door;
	PrintDebugNpc(PD_ZS_FRAME,"B_MoveMob");
	door = Npc_GetDetectedMob(self);
	PrintDebugNpc(PD_ZS_Check,ConcatStrings("...mob:",door));
	if(Hlp_StrCmp(door,"DOOR"))
	{
		PrintDebugNpc(PD_ZS_Check,"...mob is a door!");
		if(self.aivar[AIV_MOVINGMOB] == 0)
		{
			PrintDebugNpc(PD_ZS_Check,"...Tьre wurde noch NICHT versucht zu цffnen!");
			self.aivar[AIV_MOVINGMOB] = 1;
			Npc_ClearAIQueue(self);
			AI_UseMob(self,door,1);
		}
		else
		{
			PrintDebugNpc(PD_ZS_Check,"...Tьre wird schon versucht zu цffnen -> geht wohl nicht!");
			Npc_PercDisable(self,PERC_MOVEMOB);
			self.aivar[AIV_MOVINGMOB] = 0;
			AI_StartState(self,ZS_WaitForPassage,0,"");
		};
	};
};

